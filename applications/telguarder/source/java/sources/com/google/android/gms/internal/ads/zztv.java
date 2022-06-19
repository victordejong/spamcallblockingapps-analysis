package com.google.android.gms.internal.ads;

import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztv.class */
public final class zztv {
    private final InputStream zzbja;
    private final boolean zzbvh;
    private final boolean zzbvi;
    private final long zzbvj;
    private final boolean zzbvk;

    private zztv(InputStream inputStream, boolean z, boolean z2, long j, boolean z3) {
        this.zzbja = inputStream;
        this.zzbvh = z;
        this.zzbvk = z2;
        this.zzbvj = j;
        this.zzbvi = z3;
    }

    public static zztv zza(InputStream inputStream, boolean z, boolean z2, long j, boolean z3) {
        return new zztv(inputStream, z, z2, j, z3);
    }

    public final InputStream getInputStream() {
        return this.zzbja;
    }

    public final boolean zzmz() {
        return this.zzbvh;
    }

    public final boolean zzna() {
        return this.zzbvi;
    }

    public final long zznb() {
        return this.zzbvj;
    }

    public final boolean zznc() {
        return this.zzbvk;
    }
}
