package com.google.android.gms.internal.ads;

import com.mopub.common.AdType;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfgf.class */
public enum zzfgf {
    HTML(AdType.HTML),
    NATIVE("native"),
    JAVASCRIPT("javascript");
    
    private final String zzd;

    zzfgf(String str) {
        this.zzd = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzd;
    }
}
