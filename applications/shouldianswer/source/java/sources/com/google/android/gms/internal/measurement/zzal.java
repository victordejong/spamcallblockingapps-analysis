package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzal.class */
public final class zzal extends zzx.zza {
    private final /* synthetic */ zzk zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzal(zzx zzxVar, zzk zzkVar) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zzd.zzr;
        zzmVar.getCachedAppInstanceId(this.zzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    protected final void zzb() {
        this.zzc.zza((Bundle) null);
    }
}
