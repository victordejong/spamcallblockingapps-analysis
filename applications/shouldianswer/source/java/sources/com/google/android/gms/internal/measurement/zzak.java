package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzak.class */
public final class zzak extends zzx.zza {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzak(zzx zzxVar, String str) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zzd.zzr;
        zzmVar.endAdUnitExposure(this.zzc, this.zzb);
    }
}
