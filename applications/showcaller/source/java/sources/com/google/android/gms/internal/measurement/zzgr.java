package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgr.class */
public abstract class zzgr implements Iterable<Byte>, Serializable {
    private int zza = 0;

    /* renamed from: d */
    public static final zzgr f34851d = new zzgp(C7365f6.f34433c);

    /* renamed from: f */
    private static final C7634z4 f34853f = new C7634z4(null);

    /* renamed from: e */
    private static final Comparator<zzgr> f34852e = new C7595w4();

    static {
        int i = C7517q4.f34639a;
    }

    public static zzgr zzj(byte[] bArr, int i, int i2) {
        zzn(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzgp(bArr2);
    }

    public static zzgr zzk(String str) {
        return new zzgp(str.getBytes(C7365f6.f34431a));
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
        int i = this.zza;
        int i2 = i;
        if (i == 0) {
            int zzc = zzc();
            int zzi = zzi(zzc, 0, zzc);
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
        return new C7582v4(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzc()), zzc() <= 50 ? C7598w7.m6793a(this) : String.valueOf(C7598w7.m6793a(zze(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzc();

    public abstract zzgr zze(int i, int i2);

    public abstract void zzf(C7569u4 c7569u4);

    protected abstract String zzg(Charset charset);

    public abstract boolean zzh();

    protected abstract int zzi(int i, int i2, int i3);

    public final String zzl(Charset charset) {
        return zzc() == 0 ? "" : zzg(charset);
    }

    public final int zzm() {
        return this.zza;
    }
}
