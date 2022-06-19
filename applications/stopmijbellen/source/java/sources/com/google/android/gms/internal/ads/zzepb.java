package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepb.class */
public final class zzepb implements zzbes, zzdmd {
    @GuardedBy("this")
    private zzbgu zza;

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        synchronized (this) {
            zzbgu zzbguVar = this.zza;
            if (zzbguVar != null) {
                try {
                    zzbguVar.zzb();
                } catch (RemoteException e) {
                    zzciz.zzk("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }

    public final void zza(zzbgu zzbguVar) {
        synchronized (this) {
            this.zza = zzbguVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmd
    public final void zzq() {
        synchronized (this) {
            zzbgu zzbguVar = this.zza;
            if (zzbguVar != null) {
                try {
                    zzbguVar.zzb();
                } catch (RemoteException e) {
                    zzciz.zzk("Remote Exception at onPhysicalClick.", e);
                }
            }
        }
    }
}
