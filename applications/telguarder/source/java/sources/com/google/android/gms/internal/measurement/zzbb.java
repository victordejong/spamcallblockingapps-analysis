package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbb.class */
public final class zzbb extends zzbg {
    final /* synthetic */ zzbh zza;
    final /* synthetic */ zzbr zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbb(zzbr zzbrVar, zzbh zzbhVar) {
        super(zzbrVar, true);
        this.zzb = zzbrVar;
        this.zza = zzbhVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzb.zzk;
        zzpVar.setEventInterceptor(this.zza);
    }
}
