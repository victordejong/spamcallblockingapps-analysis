package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzar.class */
public final class zzar extends zzx.zza {
    private final /* synthetic */ Bundle zzc;
    private final /* synthetic */ zzk zzd;
    private final /* synthetic */ zzx zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzar(zzx zzxVar, Bundle bundle, zzk zzkVar) {
        super(zzxVar);
        this.zze = zzxVar;
        this.zzc = bundle;
        this.zzd = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zze.zzr;
        zzmVar.performAction(this.zzc, this.zzd, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    protected final void zzb() {
        this.zzd.zza((Bundle) null);
    }
}
