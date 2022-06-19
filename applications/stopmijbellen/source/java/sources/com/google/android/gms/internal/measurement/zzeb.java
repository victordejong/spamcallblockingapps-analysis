package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeb.class */
final class zzeb extends zzdt {
    public final /* synthetic */ Activity zza;
    public final /* synthetic */ zzbz zzb;
    public final /* synthetic */ zzed zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeb(zzed zzedVar, Activity activity, zzbz zzbzVar) {
        super(zzedVar.zza, true);
        this.zzc = zzedVar;
        this.zza = activity;
        this.zzb = zzbzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzc.zza.zzj;
        ((zzcc) Preconditions.checkNotNull(zzccVar)).onActivitySaveInstanceState(ObjectWrapper.wrap(this.zza), this.zzb, this.zzi);
    }
}
