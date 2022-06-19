package com.google.android.gms.internal.mlkit_common;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzep.class */
public abstract class zzep implements Serializable, Iterable<Byte> {
    public static final zzep zza = new zzez(zzfs.zzb);
    private static final zzev zzb;
    private static final Comparator<zzep> zzd;
    private int zzc = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.mlkit_common.zzet] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.mlkit_common.zzey] */
    static {
        zzb = zzen.zza() ? new zzey(null) : new zzet(null);
        zzd = new zzer();
    }

    public static zzep zza(String str) {
        return new zzez(str.getBytes(zzfs.zza));
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

    public static zzex zzc(int i) {
        return new zzex(i, null);
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
        return new zzeo(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zza()), zza() <= 50 ? zzif.zza(this) : String.valueOf(zzif.zza(zza(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zza();

    public abstract int zza(int i, int i2, int i3);

    public abstract zzep zza(int i, int i2);

    public abstract String zza(Charset charset);

    public abstract void zza(zzem zzemVar) throws IOException;

    public abstract byte zzb(int i);

    public final String zzb() {
        return zza() == 0 ? "" : zza(zzfs.zza);
    }

    public abstract boolean zzc();

    public final int zzd() {
        return this.zzc;
    }
}
