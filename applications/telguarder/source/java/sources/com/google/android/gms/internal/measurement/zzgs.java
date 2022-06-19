package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgs.class */
public abstract class zzgs implements Iterable<Byte>, Serializable {
    private static final zzgn zza;
    public static final zzgs zzb = new zzgq(zzia.zzc);
    private static final Comparator<zzgs> zzd;
    private int zzc = 0;

    static {
        zza = zzgd.zza() ? new zzgr(null) : new zzgl(null);
        zzd = new zzgj();
    }

    public static zzgs zzj(byte[] bArr, int i, int i2) {
        zzn(i, i + i2, bArr.length);
        return new zzgq(zza.zza(bArr, i, i2));
    }

    public static zzgs zzk(String str) {
        return new zzgq(str.getBytes(zzia.zza));
    }

    public static int zzn(int i, int i2, int i3) {
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

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        int i2 = i;
        if (i == 0) {
            int zzc = zzc();
            int zzi = zzi(zzc, 0, zzc);
            i2 = zzi;
            if (zzi == 0) {
                i2 = 1;
            }
            this.zzc = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new zzgi(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzc()), zzc() <= 50 ? zzju.zza(this) : String.valueOf(zzju.zza(zze(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzc();

    public abstract zzgs zze(int i, int i2);

    public abstract void zzf(zzgh zzghVar) throws IOException;

    protected abstract String zzg(Charset charset);

    public abstract boolean zzh();

    protected abstract int zzi(int i, int i2, int i3);

    public final String zzl(Charset charset) {
        return zzc() == 0 ? "" : zzg(charset);
    }

    public final int zzm() {
        return this.zzc;
    }
}
