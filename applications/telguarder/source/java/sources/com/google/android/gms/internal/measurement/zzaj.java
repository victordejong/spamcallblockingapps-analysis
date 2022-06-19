package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzaj.class */
public final class zzaj extends zzbg {
    final /* synthetic */ long zza;
    final /* synthetic */ zzbr zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaj(zzbr zzbrVar, long j) {
        super(zzbrVar, true);
        this.zzb = zzbrVar;
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzb.zzk;
        zzpVar.setSessionTimeoutDuration(this.zza);
    }
}
