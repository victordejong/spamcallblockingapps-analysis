package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfki.class */
public final class zzfki {
    public final /* synthetic */ zzfkk zza;
    private final byte[] zzb;
    private int zzc;
    private int zzd;

    public /* synthetic */ zzfki(zzfkk zzfkkVar, byte[] bArr, zzfkj zzfkjVar) {
        this.zza = zzfkkVar;
        this.zzb = bArr;
    }

    public final void zza() {
        synchronized (this) {
            try {
                zzfkk zzfkkVar = this.zza;
                if (!zzfkkVar.zza) {
                    return;
                }
                zzfkkVar.zzb.zzg(this.zzb);
                this.zza.zzb.zzh(this.zzc);
                this.zza.zzb.zzi(this.zzd);
                this.zza.zzb.zzf(null);
                this.zza.zzb.zze();
            } catch (RemoteException e) {
            }
        }
    }

    public final zzfki zzb(int i) {
        this.zzc = i;
        return this;
    }

    public final zzfki zzc(int i) {
        this.zzd = i;
        return this;
    }
}
