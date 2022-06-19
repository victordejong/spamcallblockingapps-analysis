package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbh.class */
final class zzbh extends zzx.zza {
    private final /* synthetic */ Activity zzc;
    private final /* synthetic */ zzx.zzd zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbh(zzx.zzd zzdVar, Activity activity) {
        super(zzx.this);
        this.zzd = zzdVar;
        this.zzc = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = zzx.this.zzr;
        zzmVar.onActivityDestroyed(ObjectWrapper.wrap(this.zzc), this.zzb);
    }
}
