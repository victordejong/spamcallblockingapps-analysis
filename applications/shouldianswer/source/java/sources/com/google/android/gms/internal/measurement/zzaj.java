package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzha;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaj.class */
public final class zzaj extends zzx.zza {
    private final /* synthetic */ zzha zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaj(zzx zzxVar, zzha zzhaVar) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = zzhaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zzd.zzr;
        zzmVar.setEventInterceptor(new zzx.zzc(this.zzc));
    }
}
