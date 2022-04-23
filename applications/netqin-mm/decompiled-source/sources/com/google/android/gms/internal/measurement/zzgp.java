package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4565p2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4473c5;
import p131c.p161d.p170b.p224d.p252g.p258f.C4512i2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4537l2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4544m2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4551n2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4572q2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4579r2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgp.class */
public abstract class zzgp implements Serializable, Iterable<Byte> {
    public static final zzgp zza = new zzgz(zzia.f29512b);
    public static final AbstractC4565p2 zzb;
    public static final Comparator<zzgp> zzd;
    public int zzc = 0;

    static {
        zzb = C4512i2.m25452a() ? new C4579r2(null) : new C4551n2(null);
        zzd = new C4537l2();
    }

    public static zzgp zza(String str) {
        return new zzgz(str.getBytes(zzia.f29511a));
    }

    public static zzgp zza(byte[] bArr) {
        return new zzgz(bArr);
    }

    public static zzgp zza(byte[] bArr, int i, int i2) {
        zzb(i, i + i2, bArr.length);
        return new zzgz(zzb.mo25253a(bArr, i, i2));
    }

    public static int zzb(byte b) {
        return b & 255;
    }

    public static int zzb(int i, int i2, int i3) {
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

    public static C4572q2 zzc(int i) {
        return new C4572q2(i, null);
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
        return new C4544m2(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zza()), zza() <= 50 ? C4473c5.m25520a(this) : String.valueOf(C4473c5.m25520a(zza(0, 47))).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zza();

    public abstract int zza(int i, int i2, int i3);

    public abstract zzgp zza(int i, int i2);

    public abstract String zza(Charset charset);

    public abstract void zza(zzgq zzgqVar) throws IOException;

    public abstract byte zzb(int i);

    public final String zzb() {
        return zza() == 0 ? "" : zza(zzia.f29511a);
    }

    public abstract boolean zzc();

    public final int zzd() {
        return this.zzc;
    }
}
