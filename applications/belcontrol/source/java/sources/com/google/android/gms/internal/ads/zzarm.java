package com.google.android.gms.internal.ads;

import com.mopub.volley.BuildConfig;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzarm.class */
public enum zzarm {
    BEGIN_TO_RENDER("beginToRender"),
    DEFINED_BY_JAVASCRIPT("definedByJavascript"),
    ONE_PIXEL("onePixel"),
    UNSPECIFIED(BuildConfig.VERSION_NAME);
    
    private final String zzdre;

    zzarm(String str) {
        this.zzdre = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzdre;
    }
}
