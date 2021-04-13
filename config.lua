-- Araç transfer işleminin çalışmasını istiyorsanız: https://github.com/D3uxx/ESX_GiveCarKeys kullanmak zorundasınız.
-- Motel envanter işleminin çalışmasını istiyorsanız: lsrp-motels veya esx_property kullanmak zorundasınız.
-- Hapishane işleminin çalışmasını istiyorsanız: https://github.com/esx-community/esx_jail kullanmak zorundasınız.
-- Telefon logları sadece GCPHONE ile uyumludur.

Config = {}
Config.BilgileriPaylas = true -- Her log mesajında oyuncunun bütün bilgilerini görmek istiyorsanız bunu bu şekilde bırakın aksi taktirde false yapın.
Config.WebhookURLs = {
	["Doktor Kaldırma"] = "https://discord.com/api/webhooks/794179275996921896/MTEZDNtep5hwArtmIv4jO1vEIBUiLcc90Lva_WNH2UFQgLAY2nLVCPscgp9Q-rNyj_UP",
	["Item Transferi"] = "https://discord.com/api/webhooks/794180291924590612/QKn1TpLeAgcilDLXKpG_EiY9NaBTNSNRQSkvb5D0v3qzEip1ExCVNs5QXcbkgnSJQueV",
	["Item Silme"] = "https://discord.com/api/webhooks/794180376608112650/eSUzh1X-0YwURelHgQa4mkLQDSNMdNOQsOH9WY4oF9GFASHVT-SFvYyAea8CZwk6tVLX",
	["Fatura Verme"] = "https://discord.com/api/webhooks/778328606802837564/UZSs1i6ZqCWjJsNyDSFU_IYsQOcymAYI7IrX2KbMGDsDoAssG-EGGat-Nx41doE7sAvd",
	["Olum"] = "https://discord.com/api/webhooks/794179158343024642/7JDLb7o7XHvvlXhZUWo_HaCC5BVx0LVJGwg46j9TwErYD-VM9onNYDlHWdVAoWinP07v",
	["Polis El Koyma"] = "https://discord.com/api/webhooks/778328854203858994/gWpdNWrgt3InpCwqLggfC6UD-Y_hmfpk2BP3ExqxK8hGBLLqLBLm2VCdpwl7tH7duGLU",
	["Motel Envanter İşlemi"] = "https://discord.com/api/webhooks/778328983677698068/_xi6UFNzZ4DCKQp9fLQbWwg6jhlNVEptB3XOCeJ9_PKmrnZm4Q8MX5phfwVkrTjJeCMB",
	["Chat"] = "https://discord.com/api/webhooks/794177285645271100/41585D1QTmfugaywujKZVRrSmy463WWryz4LknLozBVN9F6owh2odt7BOI-JWd3cPV8T",
	["Bagaj Envanter İşlemi"] = "https://discord.com/api/webhooks/778329194861822023/8nrnRCx35eyyht7BqfwOkZGTm_0GB2AU1kwN6TY3IRV4xUyR3OUhyO433ON_LcQNYV0D",
	["Topluluk Hizmeti İşlemi"] = "https://discord.com/api/webhooks/794179917276512277/uqG25a-BPeW_aPpDun1DBp6zh0iohwfHCYXlB5UJR9WHkwWKmBwpt9m7NL2xWSGU9PkD",
	["Giriş Yapma"] = "https://discord.com/api/webhooks/794180027066482698/ZSm3UWirocyAxbRwrbAxb1YD_9Rn5BMbUusCFKyLbM7JTYByCwf4GodmmMCpvLdhDWwq",
	["Çıkış Yapma"] = "https://discord.com/api/webhooks/794180226900951080/RQLYqC7-xHEby_gdLeubRJTdNkvYTZzmXGVjmmACbFaotdThh2i0P1FAwgoQac1p5eOL",
	["Polis Kasası İşlemi"] = "https://discord.com/api/webhooks/778329881918046238/sbOy5_1g2t-32_jHNGW1YvKz8c6_st1_26C1yBitYze8lQrSur9-rsCyE8womjN4QPhk",
	["Araç Transfer İşlemi"] = "",
	["Twitter"] = "https://discord.com/api/webhooks/794181037747077120/x3sUisFoajSIuwWK6qifTEXMHgNfdZ0SpkPkUv5YsJMSxmrjLXVR5lkZevEYQ1y5M2tO",
	["Sarı Sayfalar"] = "https://discord.com/api/webhooks/795127554318794793/_gcg_TTCLkiP6g1tu4sKWqT5wzcmyUA4ychW_TVqKXEEB2rk9zbe92ydcgOfG3X8z18A",
	["Telefon Araması"] = "https://discord.com/api/webhooks/794181143633199154/sKDalI3dJ8HNQi7TRkk-gh-fRbZx2O07fPVgtRV3LGJmvTdnS36pjbJ5F3iOoJpaUPca",
	["Telefon Mesajı"] = "https://discord.com/api/webhooks/794181085465804840/yJTpGEi954PpObN0UAz_C7xmrt0POqK6Z3LXFlr41xdpdU9-0fLjUuHXw1qQVSbggG4n",
	["Instagram"] = "https://discord.com/api/webhooks/733747824226992169/Q6663hllS3gJ5LBrNwJNGWz0iSVCE8JwEcCW1BqNnSN795SAN_ThntOR6ZlmjDSepVX8",
	["Üst Soyma"] = "https://discord.com/api/webhooks/778330746929545277/0nL5139Ip7W_Lkzvj3HR95qHmJJL0FplExOTiZR_uDU_u5gnRcsC73a75SImVQdjKVLm",
	["Banka İşlemi"] = "https://discord.com/api/webhooks/778330836453294080/7iZCkAwhxDp9eifOjIWCbysghKbCHi4pKJTgKdCOQJHc7aJWwZk3NAn5A4BFuOKwNq25s",
	["Hapishane İşlemi"] = "https://discord.com/api/webhooks/794179917276512277/uqG25a-BPeW_aPpDun1DBp6zh0iohwfHCYXlB5UJR9WHkwWKmBwpt9m7NL2xWSGU9PkD",
}