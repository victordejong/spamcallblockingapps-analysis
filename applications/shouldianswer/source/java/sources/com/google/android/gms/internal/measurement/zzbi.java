package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbi.class */
final class zzbi extends zzx.zza {
    private final /* synthetic */ Activity zzc;
    private final /* synthetic */ zzk zzd;
    private final /* synthetic */ zzx.zzd zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbi(zzx.zzd zzdVar, Activity activity, zzk zzkVar) {
        super(zzx.this);
        this.zze = zzdVar;
        this.zzc = activity;
        this.zzd = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = zzx.this.zzr;
        zzmVar.onActivitySaveInstanceState(ObjectWrapper.wrap(this.zzc), this.zzd, this.zzb);
    }
}
