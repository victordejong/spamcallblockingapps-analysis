package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4409s;
import p131c.p161d.p170b.p224d.p252g.p255c.C4379m;
import p131c.p161d.p170b.p224d.p252g.p255c.C4399q;
import p131c.p161d.p170b.p224d.p252g.p255c.C4404r;
import p131c.p161d.p170b.p224d.p252g.p255c.C4414t;
import p131c.p161d.p170b.p224d.p252g.p255c.C4419u;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbb.class */
public abstract class zzbb implements Serializable, Iterable<Byte> {
    public static final zzbb zzfi = new zzbi(zzci.f29265b);
    public static final AbstractC4409s zzfj;
    public int zzfk = 0;

    static {
        zzfj = C4379m.m25809a() ? new C4419u(null) : new C4404r(null);
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

    public static zzbb zzb(byte[] bArr, int i, int i2) {
        return new zzbi(zzfj.mo25634a(bArr, i, i2));
    }

    public static zzbb zzf(String str) {
        return new zzbi(str.getBytes(zzci.f29264a));
    }

    public static C4414t zzk(int i) {
        return new C4414t(i, null);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzfk;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int zza = zza(size, 0, size);
            i2 = zza;
            if (zza == 0) {
                i2 = 1;
            }
            this.zzfk = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new C4399q(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public abstract int zza(int i, int i2, int i3);

    public abstract zzbb zza(int i, int i2);

    public abstract String zza(Charset charset);

    public abstract void zza(zzba zzbaVar) throws IOException;

    public abstract boolean zzaa();

    public final int zzab() {
        return this.zzfk;
    }

    public abstract byte zzj(int i);

    public final String zzz() {
        return size() == 0 ? "" : zza(zzci.f29264a);
    }
}
