package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbb.class */
public final class zzbb extends zzx.zza {
    private final /* synthetic */ Bundle zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbb(zzx zzxVar, Bundle bundle) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zzd.zzr;
        zzmVar.setConditionalUserProperty(this.zzc, this.zza);
    }
}
