package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzaz.class */
public final class zzaz extends zzbg {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzbr zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaz(zzbr zzbrVar, boolean z) {
        super(zzbrVar, true);
        this.zzb = zzbrVar;
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzb.zzk;
        zzpVar.setDataCollectionEnabled(this.zza);
    }
}
