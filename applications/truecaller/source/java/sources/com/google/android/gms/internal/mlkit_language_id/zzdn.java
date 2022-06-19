package com.google.android.gms.internal.mlkit_language_id;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzdn.class */
public abstract class zzdn implements Serializable, Iterable<Byte> {
    public static final zzdn zza = new zzdx(zzeq.zzb);
    private static final zzdt zzb;
    private static final Comparator<zzdn> zzd;
    private int zzc = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.mlkit_language_id.zzdr] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.mlkit_language_id.zzdw] */
    static {
        zzb = zzdl.zza() ? new zzdw(null) : new zzdr(null);
        zzd = new zzdp();
    }

    public static zzdn zza(String str) {
        return new zzdx(str.getBytes(zzeq.zza));
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

    public static zzdv zzc(int i) {
        return new zzdv(i, null);
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
        return new zzdm(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zza()), zza() <= 50 ? zzhd.zza(this) : String.valueOf(zzhd.zza(zza(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zza();

    public abstract int zza(int i, int i2, int i3);

    public abstract zzdn zza(int i, int i2);

    public abstract String zza(Charset charset);

    public abstract void zza(zzdk zzdkVar) throws IOException;

    public abstract byte zzb(int i);

    public final String zzb() {
        return zza() == 0 ? "" : zza(zzeq.zza);
    }

    public abstract boolean zzc();

    public final int zzd() {
        return this.zzc;
    }
}
