package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzz.class */
public final class zzz extends zzx.zza {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ Bundle zze;
    private final /* synthetic */ zzx zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzz(zzx zzxVar, String str, String str2, Bundle bundle) {
        super(zzxVar);
        this.zzf = zzxVar;
        this.zzc = str;
        this.zzd = str2;
        this.zze = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zzf.zzr;
        zzmVar.clearConditionalUserProperty(this.zzc, this.zzd, this.zze);
    }
}
