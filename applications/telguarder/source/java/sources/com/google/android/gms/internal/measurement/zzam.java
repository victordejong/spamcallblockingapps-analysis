package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzam.class */
public final class zzam extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbr zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzam(zzbr zzbrVar, String str) {
        super(zzbrVar, true);
        this.zzb = zzbrVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzb.zzk;
        zzpVar.endAdUnitExposure(this.zza, this.zzi);
    }
}
