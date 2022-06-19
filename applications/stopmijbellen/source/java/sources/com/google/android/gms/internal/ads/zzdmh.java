package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmh.class */
public final class zzdmh {
    private final List<String> zza;
    private final zzfjs zzb;
    private boolean zzc;

    public zzdmh(zzfdn zzfdnVar, zzfjs zzfjsVar) {
        this.zza = zzfdnVar.zzq;
        this.zzb = zzfjsVar;
    }

    public final void zza() {
        if (!this.zzc) {
            this.zzb.zzc(this.zza);
            this.zzc = true;
        }
    }
}
