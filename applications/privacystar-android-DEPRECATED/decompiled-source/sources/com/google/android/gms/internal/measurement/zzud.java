package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzud.class */
public abstract class zzud implements Serializable, Iterable<Byte> {
    public static final zzud zzbtz = new zzum(zzvo.zzbzj);
    private static final zzui zzbua;
    private static final Comparator<zzud> zzbub;
    private int zzbry = 0;

    static {
        zzbua = zzua.zzty() ? new zzun(null) : new zzug(null);
        zzbub = new zzuf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zza(byte b) {
        return b & 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzuk zzam(int i) {
        return new zzuk(i, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    public static zzud zzb(byte[] bArr, int i, int i2) {
        zzb(i, i + i2, bArr.length);
        return new zzum(zzbua.zzc(bArr, i, i2));
    }

    public static zzud zzfv(String str) {
        return new zzum(str.getBytes(zzvo.UTF_8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzud zzi(byte[] bArr) {
        return new zzum(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzbry;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int zza = zza(size, 0, size);
            i2 = zza;
            if (zza == 0) {
                i2 = 1;
            }
            this.zzbry = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzue(this);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    protected abstract int zza(int i, int i2, int i3);

    protected abstract String zza(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(zzuc zzucVar) throws IOException;

    public abstract byte zzal(int i);

    public abstract zzud zzb(int i, int i2);

    public final String zzua() {
        return size() == 0 ? "" : zza(zzvo.UTF_8);
    }

    public abstract boolean zzub();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzuc() {
        return this.zzbry;
    }
}
