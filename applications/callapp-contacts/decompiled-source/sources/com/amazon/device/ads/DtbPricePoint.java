package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbPricePoint.class */
class DtbPricePoint {

    /* renamed from: a  reason: collision with root package name */
    final String f6505a;

    /* renamed from: b  reason: collision with root package name */
    final DTBAdSize f6506b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DtbPricePoint(String str, String str2, String str3, AdType adType) {
        this.f6505a = str;
        String[] split = str2.split("x");
        if (split.length == 2) {
            this.f6506b = new DTBAdSize(DtbCommonUtils.c(split[0]), DtbCommonUtils.c(split[1]), adType, str3);
            return;
        }
        throw new IllegalArgumentException("AdSize " + str2 + " is not valid");
    }

    public String toString() {
        return "DtbPricePoint [pricePoint=" + this.f6505a + ", adSize=" + this.f6506b + "]";
    }
}
