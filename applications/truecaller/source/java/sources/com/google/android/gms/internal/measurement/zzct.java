package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzct.class */
public final class zzct extends zzdt {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ zzee zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzct(zzee zzeeVar, Bundle bundle) {
        super(zzeeVar, true);
        this.zzb = zzeeVar;
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzb.zzj;
        Objects.requireNonNull(zzccVar, "null reference");
        zzccVar.setConsent(this.zza, this.zzh);
    }
}
