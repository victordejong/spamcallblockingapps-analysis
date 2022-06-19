package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfcu.class */
public final class zzfcu implements zzfrz<Void> {
    public final /* synthetic */ zzfcx zza;
    public final /* synthetic */ zzfcy zzb;

    public zzfcu(zzfcy zzfcyVar, zzfcx zzfcxVar) {
        this.zzb = zzfcyVar;
        this.zza = zzfcxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        synchronized (this.zzb) {
            this.zzb.zze = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
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
