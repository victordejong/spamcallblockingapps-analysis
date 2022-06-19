package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzau.class */
public final class zzau extends zzbg {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzm zzb;
    final /* synthetic */ zzbr zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzau(zzbr zzbrVar, Bundle bundle, zzm zzmVar) {
        super(zzbrVar, true);
        this.zzc = zzbrVar;
        this.zza = bundle;
        this.zzb = zzmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzc.zzk;
        zzpVar.performAction(this.zza, this.zzb, this.zzh);
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    protected final void zzb() {
        this.zzb.zzb(null);
    }
}
