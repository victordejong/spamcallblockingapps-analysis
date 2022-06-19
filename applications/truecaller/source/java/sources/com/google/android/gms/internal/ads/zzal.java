package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzal.class */
public final class zzal {
    private Uri zza;
    private final int zzb = 1;
    private Map<String, String> zzc = Collections.emptyMap();
    private long zzd;
    private int zze;

    public final zzal zza(Uri uri) {
        this.zza = uri;
        return this;
    }

    public final zzal zzb(Map<String, String> map) {
        this.zzc = map;
        return this;
    }

    public final zzal zzc(long j) {
        this.zzd = j;
        return this;
    }

    public final zzal zzd(int i) {
        this.zze = 6;
        return this;
    }

    public final zzan zze() {
        Uri uri = this.zza;
        if (uri != null) {
            return new zzan(uri, 0L, 1, null, this.zzc, this.zzd, -1L, null, this.zze, null, null);
        }
        throw new IllegalStateException("The uri must be set.");
    }
}
