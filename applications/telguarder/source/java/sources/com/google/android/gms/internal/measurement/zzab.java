package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzab.class */
public final class zzab extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Bundle zzc;
    final /* synthetic */ zzbr zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzab(zzbr zzbrVar, String str, String str2, Bundle bundle) {
        super(zzbrVar, true);
        this.zzd = zzbrVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzd.zzk;
        zzpVar.clearConditionalUserProperty(this.zza, this.zzb, this.zzc);
    }
}
