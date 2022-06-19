package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzelm.class */
public final class zzelm implements zzbcv, zzdio {
    private zzbex zza;

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        synchronized (this) {
            zzbex zzbexVar = this.zza;
            if (zzbexVar != null) {
                try {
                    zzbexVar.zzb();
                } catch (RemoteException e) {
                    zzcgt.zzj("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }

    public final void zza(zzbex zzbexVar) {
        synchronized (this) {
            this.zza = zzbexVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final void zzb() {
        synchronized (this) {
            zzbex zzbexVar = this.zza;
            if (zzbexVar != null) {
                try {
                    zzbexVar.zzb();
                } catch (RemoteException e) {
                    zzcgt.zzj("Remote Exception at onPhysicalClick.", e);
                }
            }
        }
    }
}
