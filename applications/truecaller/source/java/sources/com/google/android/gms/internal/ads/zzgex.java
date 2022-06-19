package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgex.class */
public abstract class zzgex implements Iterable<Byte>, Serializable {
    private int zza = 0;
    public static final zzgex zzb = new zzget(zzggk.zzc);
    private static final zzgew zzd = new zzgew(null);
    private static final Comparator<zzgex> zzc = new zzgeo();

    static {
        int i = zzgei.zza;
    }

    public static zzgev zzB() {
        return new zzgev(128);
    }

    public static void zzD(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(C22128a.m8683N1(40, "Index > length: ", i, ", ", i2));
            }
            throw new ArrayIndexOutOfBoundsException(C22128a.m8690L1(22, "Index < 0: ", i));
        }
    }

    public static int zzE(int i, int i2, int i3) {
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

    private static zzgex zzd(Iterator<zzgex> it, int i) {
        zzgex zzgexVar;
        if (i > 0) {
            if (i == 1) {
                zzgexVar = it.next();
            } else {
                int i2 = i >>> 1;
                zzgex zzd2 = zzd(it, i2);
                zzgex zzd3 = zzd(it, i - i2);
                if (Integer.MAX_VALUE - zzd2.zzc() < zzd3.zzc()) {
                    throw new IllegalArgumentException(C22128a.m8683N1(53, "ByteString would be too long: ", zzd2.zzc(), "+", zzd3.zzc()));
                }
                zzgexVar = zzghy.zzF(zzd2, zzd3);
            }
            return zzgexVar;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
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
        return new zzget(str.getBytes(zzggk.zza));
    }

    public static zzgex zzw(InputStream inputStream) throws IOException {
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
        return i == 0 ? zzb : zzd(iterable.iterator(), i);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zza;
        int i2 = i;
        if (i == 0) {
            int zzc2 = zzc();
            int zzo = zzo(zzc2, 0, zzc2);
            i2 = zzo;
            if (zzo == 0) {
                i2 = 1;
            }
            this.zza = i2;
        }
        return i2;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzc()), zzc() <= 50 ? zzgim.zza(this) : zzgim.zza(zzi(0, 47)).concat("..."));
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

    public abstract void zzk(zzgem zzgemVar) throws IOException;

    public abstract String zzl(Charset charset);

    public abstract boolean zzm();

    public abstract int zzn(int i, int i2, int i3);

    public abstract int zzo(int i, int i2, int i3);

    public abstract zzgfc zzp();

    /* renamed from: zzq */
    public zzger iterator() {
        return new zzgen(this);
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
        int zzc2 = zzc();
        if (zzc2 == 0) {
            return zzggk.zzc;
        }
        byte[] bArr = new byte[zzc2];
        zze(bArr, 0, 0, zzc2);
        return bArr;
    }
}
