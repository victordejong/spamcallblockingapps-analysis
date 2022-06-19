package com.amazon.device.ads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbPricePoint.class */
public class DtbPricePoint {
    private final DTBAdSize adSize;
    private final String pricePoint;

    public DtbPricePoint(String str, String str2, String str3, AdType adType) {
        this.pricePoint = str;
        String[] split = str2.split("x");
        if (split.length == 2) {
            this.adSize = new DTBAdSize(DtbCommonUtils.parseInt(split[0], 0), DtbCommonUtils.parseInt(split[1], 0), adType, str3);
            return;
        }
        throw new IllegalArgumentException(C22128a.m8725C2("AdSize ", str2, " is not valid"));
    }

    public DTBAdSize getAdSize() {
        return this.adSize;
    }

    public String getPricePoint() {
        return this.pricePoint;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DtbPricePoint [pricePoint=");
        m8728C.append(this.pricePoint);
        m8728C.append(", adSize=");
        m8728C.append(this.adSize);
        m8728C.append("]");
        return m8728C.toString();
    }
}
