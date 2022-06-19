package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbPricePoint.class */
class DtbPricePoint {

    /* renamed from: a */
    final String f11906a;

    /* renamed from: b */
    final DTBAdSize f11907b;

    public DtbPricePoint(String str, String str2, String str3, AdType adType) {
        this.f11906a = str;
        String[] split = str2.split("x");
        if (split.length == 2) {
            this.f11907b = new DTBAdSize(DtbCommonUtils.m38886c(split[0]), DtbCommonUtils.m38886c(split[1]), adType, str3);
            return;
        }
        throw new IllegalArgumentException("AdSize " + str2 + " is not valid");
    }

    public String toString() {
        return "DtbPricePoint [pricePoint=" + this.f11906a + ", adSize=" + this.f11907b + "]";
    }
}
