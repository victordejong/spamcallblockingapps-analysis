package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbb.class */
public abstract class zzbb implements Serializable, Iterable<Byte> {
    public static final zzbb zzfi = new zzbi(zzci.zzkt);
    private static final zzbf zzfj;
    private int zzfk = 0;

    static {
        zzfj = zzaw.zzx() ? new zzbj(null) : new zzbd(null);
    }

    public static int zzb(int i, int i2, int i3) {
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

    public static zzbb zzb(byte[] bArr, int i, int i2) {
        return new zzbi(zzfj.zzc(bArr, i, i2));
    }

    public static zzbb zzf(String str) {
        return new zzbi(str.getBytes(zzci.UTF_8));
    }

    public static zzbg zzk(int i) {
        return new zzbg(i, null);
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
        return new zzbc(this);
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
        return size() == 0 ? "" : zza(zzci.UTF_8);
    }
}
