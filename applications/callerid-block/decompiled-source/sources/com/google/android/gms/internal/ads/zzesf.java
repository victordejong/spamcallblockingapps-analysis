package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesf.class */
public abstract class zzesf implements Iterable<Byte>, Serializable {

    /* renamed from: b */
    public static final zzesf f9578b = new zzesc(xc2.f9101b);
    private int zza = 0;

    static {
        int i = fb2.f6484a;
    }

    zzesf() {
    }

    /* renamed from: a */
    private static zzesf m4492a(Iterator<zzesf> it, int i) {
        zzesf zzesfVar;
        if (i > 0) {
            if (i == 1) {
                zzesfVar = it.next();
            } else {
                int i2 = i >>> 1;
                zzesf a = m4492a(it, i2);
                zzesf a2 = m4492a(it, i - i2);
                if (Integer.MAX_VALUE - a.zzc() >= a2.zzc()) {
                    zzesfVar = zzeve.zzd(a, a2);
                } else {
                    int zzc = a.zzc();
                    int zzc2 = a2.zzc();
                    StringBuilder sb = new StringBuilder(53);
                    sb.append("ByteString would be too long: ");
                    sb.append(zzc);
                    sb.append("+");
                    sb.append(zzc2);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
            return zzesfVar;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    public static ob2 zzA() {
        return new ob2(128);
    }

    static void zzC(int i, int i2) {
        if (((i2 - (i + 1)) | i) >= 0) {
            return;
        }
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

    static int zzD(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
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

    public static zzesf zzr(byte[] bArr, int i, int i2) {
        zzD(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzesc(bArr2);
    }

    public static zzesf zzs(byte[] bArr) {
        return zzr(bArr, 0, bArr.length);
    }

    static zzesf zzt(byte[] bArr) {
        return new zzesc(bArr);
    }

    public static zzesf zzu(String str) {
        return new zzesc(str.getBytes(xc2.f9100a));
    }

    public static zzesf zzv(InputStream inputStream) {
        int read;
        ArrayList arrayList = new ArrayList();
        int i = 256;
        while (true) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) != -1) {
                i2 += read;
            }
            zzesf zzr = i2 == 0 ? null : zzr(bArr, 0, i2);
            if (zzr == null) {
                return zzw(arrayList);
            }
            arrayList.add(zzr);
            i = Math.min(i + i, 8192);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzesf zzw(Iterable<zzesf> iterable) {
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
        return i == 0 ? f9578b : m4492a(iterable.iterator(), i);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zza;
        int i2 = i;
        if (i == 0) {
            int zzc = zzc();
            int zzn = zzn(zzc, 0, zzc);
            i2 = zzn;
            if (zzn == 0) {
                i2 = 1;
            }
            this.zza = i2;
        }
        return i2;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzc()), zzc() <= 50 ? te2.m5528a(this) : String.valueOf(te2.m5528a(zzi(0, 47))).concat("..."));
    }

    protected final int zzB() {
        return this.zza;
    }

    public abstract byte zza(int i);

    abstract byte zzb(int i);

    public abstract int zzc();

    protected abstract void zze(byte[] bArr, int i, int i2, int i3);

    protected abstract int zzf();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean zzg();

    public abstract zzesf zzi(int i, int i2);

    abstract void zzj(jb2 jb2Var);

    protected abstract String zzk(Charset charset);

    public abstract boolean zzl();

    protected abstract int zzm(int i, int i2, int i3);

    protected abstract int zzn(int i, int i2, int i3);

    public abstract sb2 zzo();

    /* renamed from: zzp */
    public nb2 iterator() {
        return new kb2(this);
    }

    public final boolean zzq() {
        return zzc() == 0;
    }

    @Deprecated
    public final void zzx(byte[] bArr, int i, int i2, int i3) {
        zzD(i, i + i3, zzc());
        zzD(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zze(bArr, i, i2, i3);
        }
    }

    public final byte[] zzy() {
        int zzc = zzc();
        if (zzc == 0) {
            return xc2.f9101b;
        }
        byte[] bArr = new byte[zzc];
        zze(bArr, 0, 0, zzc);
        return bArr;
    }

    public final String zzz(Charset charset) {
        return zzc() == 0 ? "" : zzk(charset);
    }
}
