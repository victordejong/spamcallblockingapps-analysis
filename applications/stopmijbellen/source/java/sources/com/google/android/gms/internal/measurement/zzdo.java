package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdo.class */
public final class zzdo extends zzdt {
    public final /* synthetic */ zzdu zza;
    public final /* synthetic */ zzee zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdo(zzee zzeeVar, zzdu zzduVar) {
        super(zzeeVar, true);
        this.zzb = zzeeVar;
        this.zza = zzduVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzb.zzj;
        ((zzcc) Preconditions.checkNotNull(zzccVar)).setEventInterceptor(this.zza);
    }
}
