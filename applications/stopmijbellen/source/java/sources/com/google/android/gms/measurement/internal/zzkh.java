package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkh.class */
public final class zzkh implements zzep {
    public final /* synthetic */ String zza;
    public final /* synthetic */ zzkn zzb;

    public zzkh(zzkn zzknVar, String str) {
        this.zzb = zzknVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzep
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzb.zzC(i, th, bArr, this.zza);
    }
}
