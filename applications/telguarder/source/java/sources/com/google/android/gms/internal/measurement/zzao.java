package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzao.class */
public final class zzao extends zzbg {
    final /* synthetic */ zzm zza;
    final /* synthetic */ zzbr zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzao(zzbr zzbrVar, zzm zzmVar) {
        super(zzbrVar, true);
        this.zzb = zzbrVar;
        this.zza = zzmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzb.zzk;
        zzpVar.getCachedAppInstanceId(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    protected final void zzb() {
        this.zza.zzb(null);
    }
}
