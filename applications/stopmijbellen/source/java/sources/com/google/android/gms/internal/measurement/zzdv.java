package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzgv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdv.class */
final class zzdv extends zzch {
    private final zzgv zza;

    public zzdv(zzgv zzgvVar) {
        this.zza = zzgvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final void zzd(String str, String str2, Bundle bundle, long j) {
        this.zza.onEvent(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final int zze() {
        return System.identityHashCode(this.zza);
    }
}
