package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpr.class */
public final class zzpr {
    private static final AtomicLong zzd = new AtomicLong();
    public final zzdm zza;
    public final Uri zzb;
    public final Map<String, List<String>> zzc;

    public zzpr(long j, zzdm zzdmVar, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.zza = zzdmVar;
        this.zzb = uri;
        this.zzc = map;
    }

    public static long zza() {
        return zzd.getAndIncrement();
    }
}
