package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbd.class */
public final class zzbd extends zzbg {
    final /* synthetic */ zzbi zza;
    final /* synthetic */ zzbr zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbd(zzbr zzbrVar, zzbi zzbiVar) {
        super(zzbrVar, true);
        this.zzb = zzbrVar;
        this.zza = zzbiVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzb.zzk;
        zzpVar.unregisterOnMeasurementEventListener(this.zza);
    }
}
