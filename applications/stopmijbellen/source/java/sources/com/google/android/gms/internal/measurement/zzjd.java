package com.google.android.gms.internal.measurement;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjd.class */
public abstract class zzjd implements Iterable<Byte>, Serializable {
    private int zza = 0;
    public static final zzjd zzb = new zzjb(zzkl.zzc);
    private static final zzjc zzd = new zzjc(null);
    private static final Comparator<zzjd> zzc = new zziw();

    static {
        int i = zziq.zza;
    }

    public static zzjd zzj(byte[] bArr, int i, int i2) {
        zzn(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzjb(bArr2);
    }

    public static zzjd zzk(String str) {
        return new zzjb(str.getBytes(zzkl.zza));
    }

    public static int zzn(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i >= 0) {
                if (i2 >= i) {
                    throw new IndexOutOfBoundsException(C0082b.m8757e(37, "End index: ", i2, " >= ", i3));
                }
                throw new IndexOutOfBoundsException(C0082b.m8757e(66, "Beginning index larger than ending index: ", i, ", ", i2));
            }
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        return i4;
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zza;
        int i2 = i;
        if (i == 0) {
            int zzc2 = zzc();
            int zzi = zzi(zzc2, 0, zzc2);
            i2 = zzi;
            if (zzi == 0) {
                i2 = 1;
            }
            this.zza = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new zziv(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzc()), zzc() <= 50 ? zzmf.zza(this) : String.valueOf(zzmf.zza(zze(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzc();

    public abstract zzjd zze(int i, int i2);

    public abstract void zzf(zziu zziuVar) throws IOException;

    public abstract String zzg(Charset charset);

    public abstract boolean zzh();

    public abstract int zzi(int i, int i2, int i3);

    public final String zzl(Charset charset) {
        return zzc() == 0 ? "" : zzg(charset);
    }

    public final int zzm() {
        return this.zza;
    }
}
