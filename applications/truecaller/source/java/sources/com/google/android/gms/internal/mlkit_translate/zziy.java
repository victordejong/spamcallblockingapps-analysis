package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zziy.class */
public abstract class zziy implements Serializable, Iterable<Byte> {
    public static final zziy zza = new zzji(zzkf.zzb);
    private static final zzje zzb;
    private static final Comparator<zziy> zzd;
    private int zzc = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.mlkit_translate.zzjc] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.mlkit_translate.zzjl] */
    static {
        zzb = zziw.zza() ? new zzjl(null) : new zzjc(null);
        zzd = new zzja();
    }

    public static zziy zza(String str) {
        return new zzji(str.getBytes(zzkf.zza));
    }

    public static int zzb(byte b) {
        return b & 255;
    }

    public static int zzb(int i, int i2, int i3) {
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

    public static zzjg zzc(int i) {
        return new zzjg(i, null);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        int i2 = i;
        if (i == 0) {
            int zza2 = zza();
            int zza3 = zza(zza2, 0, zza2);
            i2 = zza3;
            if (zza3 == 0) {
                i2 = 1;
            }
            this.zzc = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzjb(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zza()), zza() <= 50 ? zzmo.zza(this) : String.valueOf(zzmo.zza(zza(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zza();

    public abstract int zza(int i, int i2, int i3);

    public abstract zziy zza(int i, int i2);

    public abstract String zza(Charset charset);

    public abstract void zza(zziz zzizVar) throws IOException;

    public abstract byte zzb(int i);

    public final String zzb() {
        return zza() == 0 ? "" : zza(zzkf.zza);
    }

    public abstract boolean zzc();

    public final int zzd() {
        return this.zzc;
    }
}
