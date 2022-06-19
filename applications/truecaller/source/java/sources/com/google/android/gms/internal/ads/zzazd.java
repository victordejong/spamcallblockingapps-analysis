package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazd.class */
public final class zzazd {
    public final /* synthetic */ zzazf zza;
    private final byte[] zzb;
    private int zzc;

    public /* synthetic */ zzazd(zzazf zzazfVar, byte[] bArr, zzaze zzazeVar) {
        this.zza = zzazfVar;
        this.zzb = bArr;
    }

    public final void zza() {
        synchronized (this) {
            try {
                zzazf zzazfVar = this.zza;
                if (!zzazfVar.zzb) {
                    return;
                }
                zzazfVar.zza.zzh(this.zzb);
                this.zza.zza.zzi(0);
                this.zza.zza.zzj(this.zzc);
                this.zza.zza.zzg(null);
                this.zza.zza.zzf();
            } catch (RemoteException e) {
                zzcgt.zze("Clearcut log failed", e);
            }
        }
    }

    public final zzazd zzb(int i) {
        this.zzc = i;
        return this;
    }
}
