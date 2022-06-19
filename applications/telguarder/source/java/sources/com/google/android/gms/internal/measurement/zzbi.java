package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzgm;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbi.class */
final class zzbi extends zzu {
    private final zzgm zza;

    public zzbi(zzgm zzgmVar) {
        this.zza = zzgmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void zzd(String str, String str2, Bundle bundle, long j) {
        this.zza.onEvent(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final int zze() {
        return System.identityHashCode(this.zza);
    }
}
