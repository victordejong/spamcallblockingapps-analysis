package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfgf.class */
public final class zzfgf implements zzfwm<Void> {
    public final /* synthetic */ zzfgi zza;
    public final /* synthetic */ zzfgj zzb;

    public zzfgf(zzfgj zzfgjVar, zzfgi zzfgiVar) {
        this.zzb = zzfgjVar;
        this.zza = zzfgiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        synchronized (this.zzb) {
            this.zzb.zze = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(Void r4) {
        ArrayDeque arrayDeque;
        int i;
        synchronized (this.zzb) {
            this.zzb.zze = null;
            arrayDeque = this.zzb.zzd;
            arrayDeque.addFirst(this.zza);
            i = this.zzb.zzf;
            if (i == 1) {
                this.zzb.zzh();
            }
        }
    }
}
