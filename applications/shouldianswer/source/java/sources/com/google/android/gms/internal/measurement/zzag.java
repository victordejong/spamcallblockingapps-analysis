package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag.class */
public final class zzag extends zzx.zza {
    private final /* synthetic */ zzx zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzag(zzx zzxVar) {
        super(zzxVar);
        this.zzc = zzxVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zzc.zzr;
        zzmVar.resetAnalyticsData(this.zza);
    }
}
