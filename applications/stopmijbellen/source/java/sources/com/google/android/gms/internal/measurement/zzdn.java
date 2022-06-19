package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdn.class */
final class zzdn extends zzdt {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ zzee zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdn(zzee zzeeVar, Bundle bundle) {
        super(zzeeVar, true);
        this.zzb = zzeeVar;
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzb.zzj;
        ((zzcc) Preconditions.checkNotNull(zzccVar)).setDefaultEventParameters(this.zza);
    }
}
