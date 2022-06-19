package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzai.class */
public final class zzai extends zzx.zza {
    private final /* synthetic */ long zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzai(zzx zzxVar, long j) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zzd.zzr;
        zzmVar.setSessionTimeoutDuration(this.zzc);
    }
}
