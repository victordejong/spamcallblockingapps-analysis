package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzde;
import com.google.android.gms.internal.firebase-perf.zzdj;
import com.google.android.gms.internal.firebase-perf.zzdl;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdd.class */
public abstract class zzdd implements Serializable, Iterable<Byte> {
    public static final com.google.android.gms.internal.firebase-perf.zzdd zzmh = new zzdn(zzei.EMPTY_BYTE_ARRAY);
    private static final zzdj zzmi;
    private static final Comparator<zzdd> zzmj;
    private int zzz = 0;

    static {
        zzmi = zzdb.zzfh() ? new zzdq(null) : new zzdh(null);
        zzmj = new zzdf();
    }

    public static int zza(byte b) {
        return b & 255;
    }

    public static com.google.android.gms.internal.firebase-perf.zzdd zzae(String str) {
        return new zzdn(str.getBytes(zzei.UTF_8));
    }

    public static int zzc(int i, int i2, int i3) {
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

    public static zzdl zzs(int i) {
        return new zzdl(i, null);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzz;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int zzb = zzb(size, 0, size);
            i2 = zzb;
            if (zzb == 0) {
                i2 = 1;
            }
            this.zzz = i2;
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.firebase_perf.zzdg, java.util.Iterator<java.lang.Byte>] */
    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzdg(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), size() <= 50 ? zzgs.zzd(this) : String.valueOf(zzgs.zzd(zzd(0, 47))).concat("..."));
    }

    protected abstract String zza(Charset charset);

    public abstract void zza(zzde zzdeVar);

    protected abstract int zzb(int i, int i2, int i3);

    public abstract com.google.android.gms.internal.firebase-perf.zzdd zzd(int i, int i2);

    public final String zzfm() {
        return size() == 0 ? "" : zza(zzei.UTF_8);
    }

    public abstract boolean zzfn();

    public final int zzfo() {
        return this.zzz;
    }

    public abstract byte zzq(int i);

    public abstract byte zzr(int i);
}
