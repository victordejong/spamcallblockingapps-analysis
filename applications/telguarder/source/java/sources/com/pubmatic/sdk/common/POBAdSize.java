package com.pubmatic.sdk.common;

import com.pubmatic.sdk.video.POBVastError;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/POBAdSize.class */
public class POBAdSize {

    /* renamed from: a */
    private int f342a;

    /* renamed from: b */
    private int f343b;
    public static final POBAdSize BANNER_SIZE_320x50 = new POBAdSize(320, 50);
    public static final POBAdSize BANNER_SIZE_320x100 = new POBAdSize(320, 100);
    public static final POBAdSize BANNER_SIZE_300x250 = new POBAdSize(300, 250);
    public static final POBAdSize BANNER_SIZE_250x250 = new POBAdSize(250, 250);
    public static final POBAdSize BANNER_SIZE_468x60 = new POBAdSize(468, 60);
    public static final POBAdSize BANNER_SIZE_728x90 = new POBAdSize(728, 90);
    public static final POBAdSize BANNER_SIZE_120x600 = new POBAdSize(120, POBVastError.GENERAL_COMPANION_AD_ERROR);
    public static final POBAdSize PMINTERSTITIAL_320x480 = new POBAdSize(320, 480);
    public static final POBAdSize PMINTERSTITIAL_480x320 = new POBAdSize(480, 320);
    public static final POBAdSize PMINTERSTITIAL_768x1024 = new POBAdSize(768, 1024);
    public static final POBAdSize PMINTERSTITIAL_1024x768 = new POBAdSize(1024, 768);

    private POBAdSize() {
    }

    public POBAdSize(int i, int i2) {
        this();
        this.f342a = i;
        this.f343b = i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof POBAdSize)) {
            return false;
        }
        POBAdSize pOBAdSize = (POBAdSize) obj;
        if (this.f342a != pOBAdSize.f342a || this.f343b != pOBAdSize.f343b) {
            z = false;
        }
        return z;
    }

    public int getAdHeight() {
        return this.f343b;
    }

    public int getAdWidth() {
        return this.f342a;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return this.f342a + "x" + this.f343b;
    }
}
