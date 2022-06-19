package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo.class */
final class zzbo extends zzbg {
    final /* synthetic */ Activity zza;
    final /* synthetic */ zzm zzb;
    final /* synthetic */ zzbq zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbo(zzbq zzbqVar, Activity activity, zzm zzmVar) {
        super(zzbqVar.zza, true);
        this.zzc = zzbqVar;
        this.zza = activity;
        this.zzb = zzmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzc.zza.zzk;
        zzpVar.onActivitySaveInstanceState(ObjectWrapper.wrap(this.zza), this.zzb, this.zzi);
    }
}
