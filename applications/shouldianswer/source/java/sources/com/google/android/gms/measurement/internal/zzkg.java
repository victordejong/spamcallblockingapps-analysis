package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkg.class */
public final class zzkg implements zzfc {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzke zzb;

    public zzkg(zzke zzkeVar, String str) {
        this.zzb = zzkeVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzfc
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzb.zza(i, th, bArr, this.zza);
    }
}
