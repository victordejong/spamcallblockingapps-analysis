package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfoi.class */
public final class zzfoi {
    public final /* synthetic */ zzfoj zza;
    private final byte[] zzb;
    private int zzc;
    private int zzd;

    public /* synthetic */ zzfoi(zzfoj zzfojVar, byte[] bArr, zzfoh zzfohVar) {
        this.zza = zzfojVar;
        this.zzb = bArr;
    }

    public final zzfoi zza(int i) {
        this.zzd = i;
        return this;
    }

    public final zzfoi zzb(int i) {
        this.zzc = i;
        return this;
    }

    public final void zzc() {
        synchronized (this) {
            try {
                zzfoj zzfojVar = this.zza;
                if (!zzfojVar.zzb) {
                    return;
                }
                zzfojVar.zza.zzj(this.zzb);
                this.zza.zza.zzi(this.zzc);
                this.zza.zza.zzg(this.zzd);
                this.zza.zza.zzh(null);
                this.zza.zza.zzf();
            } catch (RemoteException e) {
            }
        }
    }
}
