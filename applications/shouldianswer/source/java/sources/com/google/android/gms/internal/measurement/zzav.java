package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzav.class */
public final class zzav extends zzx.zza {
    private final /* synthetic */ zzk zzc;
    private final /* synthetic */ int zzd;
    private final /* synthetic */ zzx zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzav(zzx zzxVar, zzk zzkVar, int i) {
        super(zzxVar);
        this.zze = zzxVar;
        this.zzc = zzkVar;
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zze.zzr;
        zzmVar.getTestFlag(this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    protected final void zzb() {
        this.zzc.zza((Bundle) null);
    }
}
