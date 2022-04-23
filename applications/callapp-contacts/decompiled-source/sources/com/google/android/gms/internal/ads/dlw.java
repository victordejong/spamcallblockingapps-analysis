package com.google.android.gms.internal.ads;

import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlw.class */
public abstract class dlw implements Serializable, Iterable<Byte> {

    /* renamed from: a  reason: collision with root package name */
    public static final dlw f26941a = new dmh(dnj.f27002b);

    /* renamed from: b  reason: collision with root package name */
    private static final dmc f26942b;

    /* renamed from: d  reason: collision with root package name */
    private static final Comparator<dlw> f26943d;

    /* renamed from: c  reason: collision with root package name */
    private int f26944c = 0;

    static {
        f26942b = dlp.a() ? new dmj(null) : new dma(null);
        f26943d = new dly();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int a(byte b2) {
        return b2 & 255;
    }

    public static dlw a(InputStream inputStream) throws IOException {
        int read;
        ArrayList arrayList = new ArrayList();
        int i = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        while (true) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) != -1) {
                i2 += read;
            }
            dlw a2 = i2 == 0 ? null : a(bArr, 0, i2);
            if (a2 == null) {
                return a(arrayList);
            }
            arrayList.add(a2);
            i = Math.min(i << 1, (int) PropertyFlags.UNSIGNED);
        }
    }

    public static dlw a(Iterable<dlw> iterable) {
        int i;
        if (!(iterable instanceof Collection)) {
            int i2 = 0;
            Iterator<dlw> it2 = iterable.iterator();
            while (true) {
                i = i2;
                if (!it2.hasNext()) {
                    break;
                }
                it2.next();
                i2++;
            }
        } else {
            i = ((Collection) iterable).size();
        }
        return i == 0 ? f26941a : a(iterable.iterator(), i);
    }

    public static dlw a(String str) {
        return new dmh(str.getBytes(dnj.f27001a));
    }

    private static dlw a(Iterator<dlw> it2, int i) {
        dlw dlwVar;
        if (i > 0) {
            if (i == 1) {
                dlwVar = it2.next();
            } else {
                int i2 = i >>> 1;
                dlw a2 = a(it2, i2);
                dlw a3 = a(it2, i - i2);
                if (Integer.MAX_VALUE - a2.b() >= a3.b()) {
                    dlwVar = dpm.a(a2, a3);
                } else {
                    int b2 = a2.b();
                    int b3 = a3.b();
                    StringBuilder sb = new StringBuilder(53);
                    sb.append("ByteString would be too long: ");
                    sb.append(b2);
                    sb.append("+");
                    sb.append(b3);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
            return dlwVar;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    public static dlw a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static dlw a(byte[] bArr, int i, int i2) {
        c(i, i + i2, bArr.length);
        return new dmh(f26942b.a(bArr, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dlw b(byte[] bArr) {
        return new dmh(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(int i, int i2) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i, int i2, int i3) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dme c(int i) {
        return new dme(i, null);
    }

    public static dmf h() {
        return new dmf(128);
    }

    public abstract byte a(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int a(int i, int i2, int i3);

    public abstract dlw a(int i, int i2);

    /* renamed from: a */
    public dmb iterator() {
        return new dlv(this);
    }

    protected abstract String a(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(dlt dltVar) throws IOException;

    @Deprecated
    public final void a(byte[] bArr, int i, int i2, int i3) {
        c(i, i + i3, b());
        c(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            b(bArr, i, i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte b(int i);

    public abstract int b();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int b(int i, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b(byte[] bArr, int i, int i2, int i3);

    public final boolean c() {
        return b() == 0;
    }

    public final byte[] d() {
        int b2 = b();
        if (b2 == 0) {
            return dnj.f27002b;
        }
        byte[] bArr = new byte[b2];
        b(bArr, 0, 0, b2);
        return bArr;
    }

    public final String e() {
        return b() == 0 ? "" : a(dnj.f27001a);
    }

    public abstract boolean equals(Object obj);

    public abstract boolean f();

    public abstract dmi g();

    public final int hashCode() {
        int i = this.f26944c;
        int i2 = i;
        if (i == 0) {
            int b2 = b();
            int b3 = b(b2, 0, b2);
            i2 = b3;
            if (b3 == 0) {
                i2 = 1;
            }
            this.f26944c = i2;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int i();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean j();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int k() {
        return this.f26944c;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(b()), b() <= 50 ? dqd.a(this) : String.valueOf(dqd.a(a(0, 47))).concat("..."));
    }
}
