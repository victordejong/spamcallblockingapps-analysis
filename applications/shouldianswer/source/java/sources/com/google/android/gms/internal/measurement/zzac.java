package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzac.class */
public final class zzac extends zzx.zza {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzk zze;
    private final /* synthetic */ zzx zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzac(zzx zzxVar, String str, String str2, zzk zzkVar) {
        super(zzxVar);
        this.zzf = zzxVar;
        this.zzc = str;
        this.zzd = str2;
        this.zze = zzkVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        zzmVar = this.zzf.zzr;
        zzmVar.getConditionalUserProperties(this.zzc, this.zzd, this.zze);
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    protected final void zzb() {
        this.zze.zza((Bundle) null);
    }
}
