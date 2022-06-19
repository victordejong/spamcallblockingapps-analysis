package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgex.class */
public abstract class zzgex implements Iterable<Byte>, Serializable {
    private int zza = 0;

    /* renamed from: d */
    public static final zzgex f34110d = new zzget(se3.f29464c);

    /* renamed from: f */
    private static final gd3 f34112f = new gd3(null);

    /* renamed from: e */
    private static final Comparator<zzgex> f34111e = new bd3();

    static {
        int i = vc3.f31136a;
    }

    /* renamed from: c */
    private static zzgex m7858c(Iterator<zzgex> it, int i) {
        zzgex zzgexVar;
        if (i > 0) {
            if (i == 1) {
                zzgexVar = it.next();
            } else {
                int i2 = i >>> 1;
                zzgex m7858c = m7858c(it, i2);
                zzgex m7858c2 = m7858c(it, i - i2);
                if (Integer.MAX_VALUE - m7858c.zzc() < m7858c2.zzc()) {
                    int zzc = m7858c.zzc();
                    int zzc2 = m7858c2.zzc();
                    StringBuilder sb = new StringBuilder(53);
                    sb.append("ByteString would be too long: ");
                    sb.append(zzc);
                    sb.append("+");
                    sb.append(zzc2);
                    throw new IllegalArgumentException(sb.toString());
                }
                zzgexVar = zzghy.zzF(m7858c, m7858c2);
            }
            return zzgexVar;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    public static fd3 zzB() {
        return new fd3(128);
    }

    public static void zzD(int i, int i2) {
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

    public static int zzE(int i, int i2, int i3) {
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

    public static zzgex zzs(byte[] bArr, int i, int i2) {
        zzE(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzget(bArr2);
    }

    public static zzgex zzt(byte[] bArr) {
        return zzs(bArr, 0, bArr.length);
    }

    public static zzgex zzu(byte[] bArr) {
        return new zzget(bArr);
    }

    public static zzgex zzv(String str) {
        return new zzget(str.getBytes(se3.f29462a));
    }

    public static zzgex zzw(InputStream inputStream) {
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
            zzgex zzs = i == 0 ? null : zzs(bArr, 0, i);
            if (zzs == null) {
                return zzx(arrayList);
            }
            arrayList.add(zzs);
            i2 = Math.min(i3 + i3, 8192);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzgex zzx(Iterable<zzgex> iterable) {
        int i;
        if (!(iterable instanceof Collection)) {
            Iterator it = iterable.iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                it.next();
                i2++;
            }
        } else {
            i = iterable.size();
        }
        return i == 0 ? f34110d : m7858c(iterable.iterator(), i);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zza;
        int i2 = i;
        if (i == 0) {
            int zzc = zzc();
            int zzo = zzo(zzc, 0, zzc);
            i2 = zzo;
            if (zzo == 0) {
                i2 = 1;
            }
            this.zza = i2;
        }
        return i2;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzc()), zzc() <= 50 ? qg3.m11895a(this) : qg3.m11895a(zzi(0, 47)).concat("..."));
    }

    public final String zzA(Charset charset) {
        return zzc() == 0 ? "" : zzl(charset);
    }

    public final int zzC() {
        return this.zza;
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzc();

    public abstract void zze(byte[] bArr, int i, int i2, int i3);

    public abstract int zzf();

    public abstract boolean zzg();

    public abstract zzgex zzi(int i, int i2);

    public abstract ByteBuffer zzj();

    public abstract void zzk(zc3 zc3Var);

    protected abstract String zzl(Charset charset);

    public abstract boolean zzm();

    public abstract int zzn(int i, int i2, int i3);

    public abstract int zzo(int i, int i2, int i3);

    public abstract md3 zzp();

    /* renamed from: zzq */
    public dd3 iterator() {
        return new ad3(this);
    }

    public final boolean zzr() {
        return zzc() == 0;
    }

    @Deprecated
    public final void zzy(byte[] bArr, int i, int i2, int i3) {
        zzE(0, i3, zzc());
        zzE(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zze(bArr, 0, i2, i3);
        }
    }

    public final byte[] zzz() {
        int zzc = zzc();
        if (zzc == 0) {
            return se3.f29464c;
        }
        byte[] bArr = new byte[zzc];
        zze(bArr, 0, 0, zzc);
        return bArr;
    }
}
