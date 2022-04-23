package com.amazon.device.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdSize.class */
public class DTBAdSize {

    /* renamed from: a  reason: collision with root package name */
    final int f6410a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6411b;

    /* renamed from: c  reason: collision with root package name */
    final AdType f6412c;

    /* renamed from: d  reason: collision with root package name */
    final String f6413d;
    JSONObject e;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdSize$DTBInterstitialAdSize.class */
    public static final class DTBInterstitialAdSize extends DTBAdSize {
        public DTBInterstitialAdSize(String str) {
            super(9999, 9999, AdType.INTERSTITIAL, str, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DTBAdSize(int i, int i2, AdType adType, String str) {
        this(i, i2, adType, str, null);
        if (i < 0 || i2 < 0 || DtbCommonUtils.e(str)) {
            throw new IllegalArgumentException("Invalid parameter(s) passed to DTBAdSize constructor.");
        }
    }

    protected DTBAdSize(int i, int i2, AdType adType, String str, JSONObject jSONObject) {
        if (i < 0 || i2 < 0 || DtbCommonUtils.e(str)) {
            throw new IllegalArgumentException("Invalid parameter(s) passed to DTBAdSize constructor.");
        }
        this.f6410a = i;
        this.f6411b = i2;
        this.f6412c = adType;
        this.f6413d = str;
        this.e = jSONObject;
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
        return this.f6411b == dTBAdSize.f6411b && this.f6410a == dTBAdSize.f6410a;
    }

    public int hashCode() {
        return ((this.f6411b + 31) * 31) + this.f6410a;
    }

    public String toString() {
        return "DTBAdSize [" + this.f6410a + "x" + this.f6411b + ", adType=" + this.f6412c + ", slotUUID=" + this.f6413d + "]";
    }
}
