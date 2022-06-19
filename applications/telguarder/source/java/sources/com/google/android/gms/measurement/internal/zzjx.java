package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjx.class */
public final class zzjx implements zzel {
    final /* synthetic */ String zza;
    final /* synthetic */ zzkd zzb;

    public zzjx(zzkd zzkdVar, String str) {
        this.zzb = zzkdVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzel
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzb.zzG(i, th, bArr, this.zza);
    }
}
