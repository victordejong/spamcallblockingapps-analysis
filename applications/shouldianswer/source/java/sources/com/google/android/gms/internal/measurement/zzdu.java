package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdu.class */
public abstract class zzdu implements Serializable, Iterable<Byte> {
    public static final zzdu zza = new zzee(zzff.zzb);
    private static final zzea zzb;
    private static final Comparator<zzdu> zzd;
    private int zzc = 0;

    static {
        zzb = zzdr.zza() ? new zzeh(null) : new zzdy(null);
        zzd = new zzdw();
    }

    public static zzdu zza(String str) {
        return new zzee(str.getBytes(zzff.zza));
    }

    public static zzdu zza(byte[] bArr) {
        return new zzee(bArr);
    }

    public static zzdu zza(byte[] bArr, int i, int i2) {
        zzb(i, i + i2, bArr.length);
        return new zzee(zzb.zza(bArr, i, i2));
    }

    public static int zzb(byte b) {
        return b & 255;
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

    public static zzec zzc(int i) {
        return new zzec(i, null);
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
        return new zzdx(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zza()), zza() <= 50 ? zzhr.zza(this) : String.valueOf(zzhr.zza(zza(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zza();

    protected abstract int zza(int i, int i2, int i3);

    public abstract zzdu zza(int i, int i2);

    protected abstract String zza(Charset charset);

    public abstract void zza(zzdv zzdvVar);

    public abstract byte zzb(int i);

    public final String zzb() {
        return zza() == 0 ? "" : zza(zzff.zza);
    }

    public abstract boolean zzc();

    public final int zzd() {
        return this.zzc;
    }
}
