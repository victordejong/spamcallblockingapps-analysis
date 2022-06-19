package com.google.android.gms.internal.firebase_remote_config;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfx.class */
public abstract class zzfx implements Serializable, Iterable<Byte> {
    public static final zzfx zzov = new zzgh(zzhm.zzua);
    private static final zzgd zzow;
    private static final Comparator<zzfx> zzox;
    private int zziy = 0;

    static {
        zzow = zzfu.zzeu() ? new zzgk(null) : new zzgb(null);
        zzox = new zzfz();
    }

    public static int zza(byte b) {
        return b & 255;
    }

    public static zzfx zza(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    public static zzfx zza(byte[] bArr, int i, int i2) {
        zzb(i, i + i2, bArr.length);
        return new zzgh(zzow.zzc(bArr, i, i2));
    }

    public static int zzb(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Beginning index: ");
                sb.append(i);
                sb.append(" < 0");
                throw new IndexOutOfBoundsException(sb.toString());
            } else if (i2 < i) {
                StringBuilder sb2 = new StringBuilder(66);
                sb2.append("Beginning index larger than ending index: ");
                sb2.append(i);
                sb2.append(", ");
                sb2.append(i2);
                throw new IndexOutOfBoundsException(sb2.toString());
            } else {
                StringBuilder sb3 = new StringBuilder(37);
                sb3.append("End index: ");
                sb3.append(i2);
                sb3.append(" >= ");
                sb3.append(i3);
                throw new IndexOutOfBoundsException(sb3.toString());
            }
        }
        return i4;
    }

    public static zzfx zzb(byte[] bArr) {
        return new zzgh(bArr);
    }

    public static zzfx zzbj(String str) {
        return new zzgh(str.getBytes(zzhm.UTF_8));
    }

    public static zzgf zzx(int i) {
        return new zzgf(i, null);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zziy;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int zza = zza(size, 0, size);
            i2 = zza;
            if (zza == 0) {
                i2 = 1;
            }
            this.zziy = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzga(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    protected abstract int zza(int i, int i2, int i3);

    public abstract void zza(zzfy zzfyVar);

    public abstract zzfx zzb(int i, int i2);

    public final String zzb(Charset charset) {
        return size() == 0 ? "" : zzc(charset);
    }

    protected abstract String zzc(Charset charset);

    public abstract boolean zzew();

    public final int zzex() {
        return this.zziy;
    }

    public abstract byte zzv(int i);

    public abstract byte zzw(int i);
}
