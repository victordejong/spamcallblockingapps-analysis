package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzau.class */
public final class zzau extends zzx.zza {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ zzk zzd;
    private final /* synthetic */ zzx zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzau(zzx zzxVar, String str, zzk zzkVar) {
        super(zzxVar);
        this.zze = zzxVar;
        this.zzc = str;
        this.zzd = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zze.zzr;
        zzmVar.getMaxUserProperties(this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    protected final void zzb() {
        this.zzd.zza((Bundle) null);
    }
}
