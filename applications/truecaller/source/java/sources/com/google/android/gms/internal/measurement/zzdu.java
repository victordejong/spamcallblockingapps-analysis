package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzgr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdu.class */
public final class zzdu extends zzch {
    private final zzgr zza;

    public zzdu(zzgr zzgrVar) {
        this.zza = zzgrVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final int zzd() {
        return System.identityHashCode(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final void zze(String str, String str2, Bundle bundle, long j) {
        this.zza.m38571a(str, str2, bundle, j);
    }
}
