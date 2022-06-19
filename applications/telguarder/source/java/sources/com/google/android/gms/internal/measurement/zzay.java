package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzay.class */
public final class zzay extends zzbg {
    final /* synthetic */ zzm zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzbr zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzay(zzbr zzbrVar, zzm zzmVar, int i) {
        super(zzbrVar, true);
        this.zzc = zzbrVar;
        this.zza = zzmVar;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzc.zzk;
        zzpVar.getTestFlag(this.zza, this.zzb);
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    protected final void zzb() {
        this.zza.zzb(null);
    }
}
