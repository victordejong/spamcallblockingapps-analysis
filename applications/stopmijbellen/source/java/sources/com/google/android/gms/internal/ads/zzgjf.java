package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjf.class */
public abstract class zzgjf implements Iterable<Byte>, Serializable {
    private int zzc = 0;
    public static final zzgjf zzb = new zzgjb(zzgkv.zzd);
    private static final zzgje zzd = new zzgje(null);
    private static final Comparator<zzgjf> zza = new zzgiw();

    static {
        int i = zzgip.zza;
    }

    public static void zzB(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(C0082b.m8757e(40, "Index > length: ", i, ", ", i2));
            }
            throw new ArrayIndexOutOfBoundsException(C0082b.m8758d(22, "Index < 0: ", i));
        }
    }

    private static zzgjf zzc(Iterator<zzgjf> it2, int i) {
        zzgjf zzgjfVar;
        if (i > 0) {
            if (i == 1) {
                zzgjfVar = it2.next();
            } else {
                int i2 = i >>> 1;
                zzgjf zzc = zzc(it2, i2);
                zzgjf zzc2 = zzc(it2, i - i2);
                if (Api.BaseClientBuilder.API_PRIORITY_OTHER - zzc.zzd() < zzc2.zzd()) {
                    throw new IllegalArgumentException(C0082b.m8757e(53, "ByteString would be too long: ", zzc.zzd(), "+", zzc2.zzd()));
                }
                zzgjfVar = zzgmn.zzG(zzc, zzc2);
            }
            return zzgjfVar;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    public static int zzq(int i, int i2, int i3) {
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

    public static zzgjc zzt() {
        return new zzgjc(128);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzgjf zzu(Iterable<zzgjf> iterable) {
        int i;
        if (!(iterable instanceof Collection)) {
            Iterator it2 = iterable.iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (!it2.hasNext()) {
                    break;
                }
                it2.next();
                i2++;
            }
        } else {
            i = iterable.size();
        }
        return i == 0 ? zzb : zzc(iterable.iterator(), i);
    }

    public static zzgjf zzv(byte[] bArr) {
        return zzw(bArr, 0, bArr.length);
    }

    public static zzgjf zzw(byte[] bArr, int i, int i2) {
        zzq(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzgjb(bArr2);
    }

    public static zzgjf zzx(String str) {
        return new zzgjb(str.getBytes(zzgkv.zzb));
    }

    public static zzgjf zzy(InputStream inputStream) throws IOException {
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
            zzgjf zzw = i == 0 ? null : zzw(bArr, 0, i);
            if (zzw == null) {
                return zzu(arrayList);
            }
            arrayList.add(zzw);
            i2 = Math.min(i3 + i3, 8192);
        }
    }

    public static zzgjf zzz(byte[] bArr) {
        return new zzgjb(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        int i2 = i;
        if (i == 0) {
            int zzd2 = zzd();
            int zzi = zzi(zzd2, 0, zzd2);
            i2 = zzi;
            if (zzi == 0) {
                i2 = 1;
            }
            this.zzc = i2;
        }
        return i2;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzd()), zzd() <= 50 ? zzgnd.zza(this) : zzgnd.zza(zzk(0, 47)).concat("..."));
    }

    public final String zzA(Charset charset) {
        return zzd() == 0 ? "" : zzm(charset);
    }

    @Deprecated
    public final void zzC(byte[] bArr, int i, int i2, int i3) {
        zzq(0, i3, zzd());
        zzq(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zze(bArr, 0, i2, i3);
        }
    }

    public final boolean zzD() {
        return zzd() == 0;
    }

    public final byte[] zzE() {
        int zzd2 = zzd();
        if (zzd2 == 0) {
            return zzgkv.zzd;
        }
        byte[] bArr = new byte[zzd2];
        zze(bArr, 0, 0, zzd2);
        return bArr;
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzd();

    public abstract void zze(byte[] bArr, int i, int i2, int i3);

    public abstract int zzf();

    public abstract boolean zzh();

    public abstract int zzi(int i, int i2, int i3);

    public abstract int zzj(int i, int i2, int i3);

    public abstract zzgjf zzk(int i, int i2);

    public abstract zzgjn zzl();

    public abstract String zzm(Charset charset);

    public abstract ByteBuffer zzn();

    public abstract void zzo(zzgit zzgitVar) throws IOException;

    public abstract boolean zzp();

    public final int zzr() {
        return this.zzc;
    }

    /* renamed from: zzs */
    public zzgiz iterator() {
        return new zzgiu(this);
    }
}
