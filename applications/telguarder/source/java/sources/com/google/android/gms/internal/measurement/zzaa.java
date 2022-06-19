package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzaa.class */
public final class zzaa extends zzbg {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzbr zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaa(zzbr zzbrVar, Bundle bundle) {
        super(zzbrVar, true);
        this.zzb = zzbrVar;
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzb.zzk;
        zzpVar.setConditionalUserProperty(this.zza, this.zzh);
    }
}
