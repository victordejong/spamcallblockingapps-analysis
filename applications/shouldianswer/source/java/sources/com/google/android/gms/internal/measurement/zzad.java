package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzad.class */
public final class zzad extends zzx.zza {
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzad(zzx zzxVar, boolean z) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zzd.zzr;
        zzmVar.setMeasurementEnabled(this.zzc, this.zza);
    }
}
