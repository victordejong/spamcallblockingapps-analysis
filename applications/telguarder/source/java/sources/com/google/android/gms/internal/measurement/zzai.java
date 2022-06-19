package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzai.class */
public final class zzai extends zzbg {
    final /* synthetic */ zzbr zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzai(zzbr zzbrVar) {
        super(zzbrVar, true);
        this.zza = zzbrVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zza.zzk;
        zzpVar.resetAnalyticsData(this.zzh);
    }
}
