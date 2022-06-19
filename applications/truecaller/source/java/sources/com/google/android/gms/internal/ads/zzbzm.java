package com.google.android.gms.internal.ads;

import com.mopub.volley.BuildConfig;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzm.class */
public enum zzbzm {
    BEGIN_TO_RENDER("beginToRender"),
    DEFINED_BY_JAVASCRIPT("definedByJavascript"),
    ONE_PIXEL("onePixel"),
    UNSPECIFIED(BuildConfig.VERSION_NAME);
    
    private final String zze;

    zzbzm(String str) {
        this.zze = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zze;
    }
}
