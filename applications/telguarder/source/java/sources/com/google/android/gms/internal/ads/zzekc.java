package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekc.class */
public abstract class zzekc {
    int zziml;
    int zzimm;
    int zzimn;
    zzekj zzimo;
    private boolean zzimp;

    /* JADX INFO: Access modifiers changed from: private */
    public zzekc() {
        this.zzimm = 100;
        this.zzimn = Integer.MAX_VALUE;
        this.zzimp = false;
    }

    public static zzekc zzb(byte[] bArr, int i, int i2, boolean z) {
        zzeke zzekeVar = new zzeke(bArr, i, i2, z);
        try {
            zzekeVar.zzgf(i2);
            return zzekeVar;
        } catch (zzelo e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static long zzfg(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static int zzgh(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public abstract double readDouble() throws IOException;

    public abstract float readFloat() throws IOException;

    public abstract String readString() throws IOException;

    public abstract int zzbgs() throws IOException;

    public abstract long zzbgt() throws IOException;

    public abstract long zzbgu() throws IOException;

    public abstract int zzbgv() throws IOException;

    public abstract long zzbgw() throws IOException;

    public abstract int zzbgx() throws IOException;

    public abstract boolean zzbgy() throws IOException;

    public abstract String zzbgz() throws IOException;

    public abstract zzejr zzbha() throws IOException;

    public abstract int zzbhb() throws IOException;

    public abstract int zzbhc() throws IOException;

    public abstract int zzbhd() throws IOException;

    public abstract long zzbhe() throws IOException;

    public abstract int zzbhf() throws IOException;

    public abstract long zzbhg() throws IOException;

    public abstract long zzbhh() throws IOException;

    public abstract boolean zzbhi() throws IOException;

    public abstract int zzbhj();

    public abstract void zzgd(int i) throws zzelo;

    public abstract boolean zzge(int i) throws IOException;

    public abstract int zzgf(int i) throws zzelo;

    public abstract void zzgg(int i);
}
