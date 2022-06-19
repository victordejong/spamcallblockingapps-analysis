package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebi.class */
public final class zzebi<P> {
    private final P zzibr;
    private final byte[] zzibs;
    private final zzege zzibt;
    private final zzegx zzibu;
    private final int zzibv;

    public zzebi(P p, byte[] bArr, zzege zzegeVar, zzegx zzegxVar, int i) {
        this.zzibr = p;
        this.zzibs = Arrays.copyOf(bArr, bArr.length);
        this.zzibt = zzegeVar;
        this.zzibu = zzegxVar;
        this.zzibv = i;
    }

    public final P zzbat() {
        return this.zzibr;
    }

    public final zzege zzbau() {
        return this.zzibt;
    }

    public final zzegx zzbav() {
        return this.zzibu;
    }

    public final byte[] zzbaw() {
        byte[] bArr = this.zzibs;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
