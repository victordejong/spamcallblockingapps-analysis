package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbb.class */
public final class zzbbb {
    public final /* synthetic */ zzbbc zza;
    private final byte[] zzb;
    private int zzc;

    public /* synthetic */ zzbbb(zzbbc zzbbcVar, byte[] bArr, zzbba zzbbaVar) {
        this.zza = zzbbcVar;
        this.zzb = bArr;
    }

    public final zzbbb zza(int i) {
        this.zzc = i;
        return this;
    }

    public final void zzb() {
        synchronized (this) {
            try {
                zzbbc zzbbcVar = this.zza;
                if (!zzbbcVar.zzb) {
                    return;
                }
                zzbbcVar.zza.zzj(this.zzb);
                this.zza.zza.zzi(0);
                this.zza.zza.zzg(this.zzc);
                this.zza.zza.zzh(null);
                this.zza.zza.zzf();
            } catch (RemoteException e) {
                zzciz.zzf("Clearcut log failed", e);
            }
        }
    }
}
