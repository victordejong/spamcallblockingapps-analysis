package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdk.class */
public final class zzdk {
    private Uri zza;
    private final int zzb = 1;
    private Map<String, String> zzc = Collections.emptyMap();
    private long zzd;
    private int zze;

    public final zzdk zza(int i) {
        this.zze = 6;
        return this;
    }

    public final zzdk zzb(Map<String, String> map) {
        this.zzc = map;
        return this;
    }

    public final zzdk zzc(long j) {
        this.zzd = j;
        return this;
    }

    public final zzdk zzd(Uri uri) {
        this.zza = uri;
        return this;
    }

    public final zzdm zze() {
        Uri uri = this.zza;
        if (uri != null) {
            return new zzdm(uri, this.zzc, this.zzd, this.zze);
        }
        throw new IllegalStateException("The uri must be set.");
    }
}
