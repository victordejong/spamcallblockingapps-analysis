package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fm.class */
public abstract class fm implements Serializable, Iterable<Byte> {

    /* renamed from: a  reason: collision with root package name */
    private int f29020a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final fm f29017b = new fk(gt.f29067c);

    /* renamed from: d  reason: collision with root package name */
    private static final fl f29019d = new fl(null);

    /* renamed from: c  reason: collision with root package name */
    private static final Comparator<fm> f29018c = new ff();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2, int i3) {
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

    public static fm a(String str) {
        return new fk(str.getBytes(gt.f29065a));
    }

    public static fm a(byte[] bArr, int i, int i2) {
        a(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new fk(bArr2);
    }

    public abstract byte a(int i);

    public abstract int a();

    protected abstract int a(int i, int i2);

    protected abstract String a(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(fd fdVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte b(int i);

    public final String b(Charset charset) {
        return a() == 0 ? "" : a(charset);
    }

    public abstract boolean b();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int c() {
        return this.f29020a;
    }

    public abstract fm c(int i);

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.f29020a;
        int i2 = i;
        if (i == 0) {
            int a2 = a();
            int a3 = a(a2, a2);
            i2 = a3;
            if (a3 == 0) {
                i2 = 1;
            }
            this.f29020a = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new fe(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(a()), a() <= 50 ? il.a(this) : String.valueOf(il.a(c(47))).concat("..."));
    }
}
