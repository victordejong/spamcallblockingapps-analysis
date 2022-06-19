package com.google.android.gms.internal.ads;

import com.mopub.volley.BuildConfig;
/* renamed from: com.google.android.gms.internal.ads.qw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qw.class */
public enum EnumC12865qw {
    BEGIN_TO_RENDER("beginToRender"),
    DEFINED_BY_JAVASCRIPT("definedByJavascript"),
    ONE_PIXEL("onePixel"),
    UNSPECIFIED(BuildConfig.VERSION_NAME);
    
    private final String zzdsn;

    EnumC12865qw(String str) {
        this.zzdsn = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzdsn;
    }
}
