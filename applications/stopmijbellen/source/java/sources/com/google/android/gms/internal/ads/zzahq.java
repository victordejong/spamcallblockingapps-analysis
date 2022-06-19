package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahq.class */
public final class zzahq {
    private final int zza;
    private final List<zzagk> zzb;
    private final int zzc;
    private final InputStream zzd;

    public zzahq(int i, List<zzagk> list, int i2, InputStream inputStream) {
        this.zza = i;
        this.zzb = list;
        this.zzc = i2;
        this.zzd = inputStream;
    }

    public final int zza() {
        return this.zzc;
    }

    public final int zzb() {
        return this.zza;
    }

    public final InputStream zzc() {
        InputStream inputStream = this.zzd;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    public final List<zzagk> zzd() {
        return Collections.unmodifiableList(this.zzb);
    }
}
