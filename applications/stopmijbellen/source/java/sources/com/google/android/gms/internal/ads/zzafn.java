package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafn.class */
final class zzafn {
    public final int zza;
    public final long zzb;

    private zzafn(int i, long j) {
        this.zza = i;
        this.zzb = j;
    }

    public static zzafn zza(zzwq zzwqVar, zzfd zzfdVar) throws IOException {
        ((zzwk) zzwqVar).zzm(zzfdVar.zzH(), 0, 8, false);
        zzfdVar.zzF(0);
        return new zzafn(zzfdVar.zze(), zzfdVar.zzq());
    }
}
