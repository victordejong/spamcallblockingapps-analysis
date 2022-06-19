package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfg.class */
public final class zzcfg {
    public final int type;
    public final String zzcm;
    public final String zzdre;
    public final zzaed zzgij;

    @VisibleForTesting
    public zzcfg(String str, zzaed zzaedVar) {
        this.type = 2;
        this.zzcm = str;
        this.zzdre = null;
        this.zzgij = zzaedVar;
    }

    @VisibleForTesting
    public zzcfg(String str, String str2) {
        this.type = 1;
        this.zzcm = str;
        this.zzdre = str2;
        this.zzgij = null;
    }
}
