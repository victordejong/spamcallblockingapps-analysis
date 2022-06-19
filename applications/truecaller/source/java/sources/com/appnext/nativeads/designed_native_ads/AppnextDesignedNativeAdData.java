package com.appnext.nativeads.designed_native_ads;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData.class */
public class AppnextDesignedNativeAdData {

    /* renamed from: gb */
    private String f1984gb;

    /* renamed from: gc */
    private String f1985gc;

    /* renamed from: gd */
    private long f1986gd;

    public AppnextDesignedNativeAdData(String str, String str2, long j) {
        this.f1984gb = str;
        this.f1985gc = str2;
        this.f1986gd = j;
    }

    public long getAdClickedTime() {
        return this.f1986gd;
    }

    public String getAdPackageName() {
        return this.f1984gb;
    }

    public String getAdTitle() {
        return this.f1985gc;
    }
}
