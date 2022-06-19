package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbk.class */
final class zzbk extends zzbg {
    final /* synthetic */ Activity zza;
    final /* synthetic */ zzbq zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbk(zzbq zzbqVar, Activity activity) {
        super(zzbqVar.zza, true);
        this.zzb = zzbqVar;
        this.zza = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzb.zza.zzk;
        zzpVar.onActivityStarted(ObjectWrapper.wrap(this.zza), this.zzi);
    }
}
