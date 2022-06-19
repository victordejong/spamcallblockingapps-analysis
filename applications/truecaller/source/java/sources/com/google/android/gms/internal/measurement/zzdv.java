package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzgs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdv.class */
public final class zzdv extends zzch {
    private final zzgs zza;

    public zzdv(zzgs zzgsVar) {
        this.zza = zzgsVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final int zzd() {
        return System.identityHashCode(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final void zze(String str, String str2, Bundle bundle, long j) {
        this.zza.m38570a(str, str2, bundle, j);
    }
}
