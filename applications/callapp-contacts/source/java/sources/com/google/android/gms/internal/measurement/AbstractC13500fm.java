package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.measurement.fm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fm.class */
public abstract class AbstractC13500fm implements Serializable, Iterable<Byte> {

    /* renamed from: a */
    private int f50719a = 0;

    /* renamed from: b */
    public static final AbstractC13500fm f50716b = new C13498fk(C13534gt.f50767c);

    /* renamed from: d */
    private static final C13499fl f50718d = new C13499fl(null);

    /* renamed from: c */
    private static final Comparator<AbstractC13500fm> f50717c = new C13493ff();

    /* renamed from: a */
    public static int m12863a(int i, int i2, int i3) {
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

    /* renamed from: a */
    public static AbstractC13500fm m12861a(String str) {
        return new C13498fk(str.getBytes(C13534gt.f50765a));
    }

    /* renamed from: a */
    public static AbstractC13500fm m12859a(byte[] bArr, int i, int i2) {
        m12863a(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new C13498fk(bArr2);
    }

    /* renamed from: a */
    public abstract byte mo12865a(int i);

    /* renamed from: a */
    public abstract int mo12866a();

    /* renamed from: a */
    protected abstract int mo12864a(int i, int i2);

    /* renamed from: a */
    protected abstract String mo12860a(Charset charset);

    /* renamed from: a */
    public abstract void mo12862a(C13491fd c13491fd) throws IOException;

    /* renamed from: b */
    public abstract byte mo12857b(int i);

    /* renamed from: b */
    public final String m12856b(Charset charset) {
        return mo12866a() == 0 ? "" : mo12860a(charset);
    }

    /* renamed from: b */
    public abstract boolean mo12858b();

    /* renamed from: c */
    public final int m12855c() {
        return this.f50719a;
    }

    /* renamed from: c */
    public abstract AbstractC13500fm mo12854c(int i);

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.f50719a;
        int i2 = i;
        if (i == 0) {
            int mo12866a = mo12866a();
            int mo12864a = mo12864a(mo12866a, mo12866a);
            i2 = mo12864a;
            if (mo12864a == 0) {
                i2 = 1;
            }
            this.f50719a = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new C13492fe(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(mo12866a()), mo12866a() <= 50 ? C13580il.m12574a(this) : String.valueOf(C13580il.m12574a(mo12854c(47))).concat("..."));
    }
}
