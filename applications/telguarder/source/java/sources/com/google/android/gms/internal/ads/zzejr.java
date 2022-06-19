package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import org.slf4j.Marker;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejr.class */
public abstract class zzejr implements Serializable, Iterable<Byte> {
    public static final zzejr zzilz = new zzekb(zzeld.zzimf);
    private static final zzejx zzima;
    private static final Comparator<zzejr> zzimb;
    private int zzilf = 0;

    static {
        zzima = zzejk.zzbgc() ? new zzekd(null) : new zzejv(null);
        zzimb = new zzejt();
    }

    private static zzejr zza(Iterator<zzejr> it, int i) {
        zzejr zzejrVar;
        if (i > 0) {
            if (i == 1) {
                zzejrVar = it.next();
            } else {
                int i2 = i >>> 1;
                zzejr zza = zza(it, i2);
                zzejr zza2 = zza(it, i - i2);
                if (Integer.MAX_VALUE - zza.size() < zza2.size()) {
                    int size = zza.size();
                    int size2 = zza2.size();
                    StringBuilder sb = new StringBuilder(53);
                    sb.append("ByteString would be too long: ");
                    sb.append(size);
                    sb.append(Marker.ANY_NON_NULL_MARKER);
                    sb.append(size2);
                    throw new IllegalArgumentException(sb.toString());
                }
                zzejrVar = zzeng.zza(zza, zza2);
            }
            return zzejrVar;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    public static void zzab(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
    }

    public static int zzb(byte b) {
        return b & 255;
    }

    public static zzeka zzbgl() {
        return new zzeka(128);
    }

    public static zzejr zzf(InputStream inputStream) throws IOException {
        int i;
        int read;
        ArrayList arrayList = new ArrayList();
        int i2 = 256;
        while (true) {
            int i3 = i2;
            byte[] bArr = new byte[i3];
            int i4 = 0;
            while (true) {
                i = i4;
                if (i >= i3 || (read = inputStream.read(bArr, i, i3 - i)) == -1) {
                    break;
                }
                i4 = i + read;
            }
            zzejr zzi = i == 0 ? null : zzi(bArr, 0, i);
            if (zzi != null) {
                arrayList.add(zzi);
                i2 = Math.min(i3 << 1, 8192);
            } else {
                return zzl(arrayList);
            }
        }
    }

    public static zzejz zzgb(int i) {
        return new zzejz(i, null);
    }

    public static zzejr zzhy(String str) {
        return new zzekb(str.getBytes(zzeld.UTF_8));
    }

    public static int zzi(int i, int i2, int i3) {
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

    public static zzejr zzi(byte[] bArr, int i, int i2) {
        zzi(i, i + i2, bArr.length);
        return new zzekb(zzima.zzj(bArr, i, i2));
    }

    public static zzejr zzl(Iterable<zzejr> iterable) {
        int i;
        if (!(iterable instanceof Collection)) {
            int i2 = 0;
            Iterator<zzejr> it = iterable.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                it.next();
                i2++;
            }
        } else {
            i = ((Collection) iterable).size();
        }
        return i == 0 ? zzilz : zza(iterable.iterator(), i);
    }

    public static zzejr zzt(byte[] bArr) {
        return zzi(bArr, 0, bArr.length);
    }

    public static zzejr zzu(byte[] bArr) {
        return new zzekb(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzilf;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int zzh = zzh(size, 0, size);
            i2 = zzh;
            if (zzh == 0) {
                i2 = 1;
            }
            this.zzilf = i2;
        }
        return i2;
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract int size();

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return zzeld.zzimf;
        }
        byte[] bArr = new byte[size];
        zzb(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), size() <= 50 ? zzenx.zzan(this) : String.valueOf(zzenx.zzan(zzaa(0, 47))).concat("..."));
    }

    protected abstract String zza(Charset charset);

    public abstract void zza(zzejo zzejoVar) throws IOException;

    @Deprecated
    public final void zza(byte[] bArr, int i, int i2, int i3) {
        zzi(i, i + i3, size());
        zzi(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zzb(bArr, i, i2, i3);
        }
    }

    public abstract zzejr zzaa(int i, int i2);

    public abstract void zzb(byte[] bArr, int i, int i2, int i3);

    /* renamed from: zzbgh */
    public zzejw iterator() {
        return new zzejq(this);
    }

    public final String zzbgi() {
        return size() == 0 ? "" : zza(zzeld.UTF_8);
    }

    public abstract boolean zzbgj();

    public abstract zzekc zzbgk();

    public abstract int zzbgm();

    public abstract boolean zzbgn();

    public final int zzbgo() {
        return this.zzilf;
    }

    public abstract byte zzfz(int i);

    public abstract int zzg(int i, int i2, int i3);

    public abstract byte zzga(int i);

    public abstract int zzh(int i, int i2, int i3);
}
