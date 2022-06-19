package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezo.class */
public final class zzezo extends zzfid {
    public final /* synthetic */ zzbgt zza;
    public final /* synthetic */ zzezq zzb;

    public zzezo(zzezq zzezqVar, zzbgt zzbgtVar) {
        this.zzb = zzezqVar;
        this.zza = zzbgtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfid
    public final void zzu() {
        zzdrw zzdrwVar;
        zzdrwVar = this.zzb.zzf;
        if (zzdrwVar != null) {
            try {
                this.zza.zze();
            } catch (RemoteException e) {
                zzcgt.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
