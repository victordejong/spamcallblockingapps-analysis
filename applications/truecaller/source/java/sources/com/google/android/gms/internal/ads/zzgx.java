package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgx.class */
public final class zzgx {
    private static final AtomicLong zzd = new AtomicLong();
    public final zzan zza;
    public final Uri zzb;
    public final Map<String, List<String>> zzc;

    public zzgx(long j, zzan zzanVar, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.zza = zzanVar;
        this.zzb = uri;
        this.zzc = map;
    }

    public static long zza() {
        return zzd.getAndIncrement();
    }
}
