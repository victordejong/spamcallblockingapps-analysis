package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzgl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbh.class */
final class zzbh extends zzu {
    private final zzgl zza;

    public zzbh(zzgl zzglVar) {
        this.zza = zzglVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void zzd(String str, String str2, Bundle bundle, long j) {
        this.zza.interceptEvent(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final int zze() {
        return System.identityHashCode(this.zza);
    }
}
