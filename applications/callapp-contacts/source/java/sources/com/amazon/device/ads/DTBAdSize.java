package com.amazon.device.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdSize.class */
public class DTBAdSize {

    /* renamed from: a */
    final int f11772a;

    /* renamed from: b */
    public final int f11773b;

    /* renamed from: c */
    final AdType f11774c;

    /* renamed from: d */
    final String f11775d;

    /* renamed from: e */
    JSONObject f11776e;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdSize$DTBInterstitialAdSize.class */
    public static final class DTBInterstitialAdSize extends DTBAdSize {
        public DTBInterstitialAdSize(String str) {
            super(9999, 9999, AdType.INTERSTITIAL, str, null);
        }
    }

    public DTBAdSize(int i, int i2, AdType adType, String str) {
        this(i, i2, adType, str, null);
        if (i < 0 || i2 < 0 || DtbCommonUtils.m38882e(str)) {
            throw new IllegalArgumentException("Invalid parameter(s) passed to DTBAdSize constructor.");
        }
    }

    protected DTBAdSize(int i, int i2, AdType adType, String str, JSONObject jSONObject) {
        if (i < 0 || i2 < 0 || DtbCommonUtils.m38882e(str)) {
            throw new IllegalArgumentException("Invalid parameter(s) passed to DTBAdSize constructor.");
        }
        this.f11772a = i;
        this.f11773b = i2;
        this.f11774c = adType;
        this.f11775d = str;
        this.f11776e = jSONObject;
    }

    public DTBAdSize(int i, int i2, String str) {
        this(i, i2, AdType.DISPLAY, str, null);
        if (i == 9999 || i2 == 9999) {
            throw new IllegalArgumentException("Invalid size passed, Please use DTBInterstitialAdSize for interstitial ads.");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DTBAdSize dTBAdSize = (DTBAdSize) obj;
        return this.f11773b == dTBAdSize.f11773b && this.f11772a == dTBAdSize.f11772a;
    }

    public int hashCode() {
        return ((this.f11773b + 31) * 31) + this.f11772a;
    }

    public String toString() {
        return "DTBAdSize [" + this.f11772a + "x" + this.f11773b + ", adType=" + this.f11774c + ", slotUUID=" + this.f11775d + "]";
    }
}
