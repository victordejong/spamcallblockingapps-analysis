package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzfh.class */
public abstract class zzfh implements Serializable, Iterable<Byte> {
    public static final zzfh zzrx = new zzfr(zzgt.zzxc);
    private static final zzfn zzry;
    private static final Comparator<zzfh> zzrz;
    private int zzmi = 0;

    static {
        zzry = zzfa.zzdr() ? new zzfu((zzfk) null) : new zzfl((zzfk) null);
        zzrz = new zzfj();
    }

    public static int zza(byte b) {
        return b & 255;
    }

    public static zzfh zza(byte[] bArr, int i, int i2) {
        zzc(i, i + i2, bArr.length);
        return new zzfr(zzry.zzd(bArr, i, i2));
    }

    public static zzfp zzap(int i) {
        return new zzfp(i, null);
    }

    public static zzfh zzb(byte[] bArr, int i, int i2) {
        return new zzfo(bArr, i, i2);
    }

    public static int zzc(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                throw new IndexOutOfBoundsException(C22128a.m8686M1(32, "Beginning index: ", i, " < 0"));
            }
            if (i2 >= i) {
                throw new IndexOutOfBoundsException(C22128a.m8683N1(37, "End index: ", i2, " >= ", i3));
            }
            throw new IndexOutOfBoundsException(C22128a.m8683N1(66, "Beginning index larger than ending index: ", i, ", ", i2));
        }
        return i4;
    }

    public static zzfh zzd(byte[] bArr) {
        return new zzfr(bArr);
    }

    public static zzfh zzw(String str) {
        return new zzfr(str.getBytes(zzgt.UTF_8));
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzmi;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int zzb = zzb(size, 0, size);
            i2 = zzb;
            if (zzb == 0) {
                i2 = 1;
            }
            this.zzmi = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzfk(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), size() <= 50 ? zzjf.zzd(this) : String.valueOf(zzjf.zzd(zzf(0, 47))).concat("..."));
    }

    public abstract String zza(Charset charset);

    public abstract void zza(zzfi zzfiVar) throws IOException;

    public abstract void zza(byte[] bArr, int i, int i2, int i3);

    public abstract byte zzan(int i);

    public abstract byte zzao(int i);

    public abstract int zzb(int i, int i2, int i3);

    public final String zzer() {
        return size() == 0 ? "" : zza(zzgt.UTF_8);
    }

    public abstract boolean zzes();

    public final int zzet() {
        return this.zzmi;
    }

    public abstract zzfh zzf(int i, int i2);
}
