package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezv.class */
public final class zzezv extends zzfid {
    public final /* synthetic */ zzbfr zza;
    public final /* synthetic */ zzezw zzb;

    public zzezv(zzezw zzezwVar, zzbfr zzbfrVar) {
        this.zzb = zzezwVar;
        this.zza = zzbfrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfid
    public final void zzu() {
        zzdrw zzdrwVar;
        zzdrwVar = this.zzb.zzd;
        if (zzdrwVar != null) {
            try {
                this.zza.zze();
            } catch (RemoteException e) {
                zzcgt.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
