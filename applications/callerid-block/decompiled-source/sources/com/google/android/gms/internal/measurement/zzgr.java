package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgr.class */
public abstract class zzgr implements Iterable<Byte>, Serializable {

    /* renamed from: b */
    public static final zzgr f9861b = new zzgp(C2202x5.f9847b);
    private int zza = 0;

    static {
        int i = C2143l4.f9782a;
    }

    zzgr() {
    }

    public static zzgr zzj(byte[] bArr, int i, int i2) {
        zzn(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzgp(bArr2);
    }

    public static zzgr zzk(String str) {
        return new zzgp(str.getBytes(C2202x5.f9846a));
    }

    static int zzn(int i, int i2, int i3) {
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
        return new q4(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzc()), zzc() <= 50 ? C2157o7.m4225a(this) : String.valueOf(C2157o7.m4225a(zze(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    abstract byte zzb(int i);

    public abstract int zzc();

    public abstract zzgr zze(int i, int i2);

    abstract void zzf(C2159p4 p4Var);

    protected abstract String zzg(Charset charset);

    public abstract boolean zzh();

    protected abstract int zzi(int i, int i2, int i3);

    public final String zzl(Charset charset) {
        return zzc() == 0 ? "" : zzg(charset);
    }

    protected final int zzm() {
        return this.zza;
    }
}
