package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdz.class */
public final class zzdz extends zzdt {
    public final /* synthetic */ Activity zza;
    public final /* synthetic */ zzed zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdz(zzed zzedVar, Activity activity) {
        super(zzedVar.zza, true);
        this.zzb = zzedVar;
        this.zza = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() throws RemoteException {
        zzcc zzccVar;
        zzccVar = this.zzb.zza.zzj;
        Objects.requireNonNull(zzccVar, "null reference");
        zzccVar.onActivityPaused(new ObjectWrapper(this.zza), this.zzi);
    }
}
