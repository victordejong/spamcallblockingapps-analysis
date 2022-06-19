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

    /* renamed from: a */
    public static final dlw f47199a = new dmh(dnj.f47287b);

    /* renamed from: b */
    private static final dmc f47200b;

    /* renamed from: d */
    private static final Comparator<dlw> f47201d;

    /* renamed from: c */
    private int f47202c = 0;

    static {
        f47200b = dlp.m16504a() ? new dmj(null) : new dma(null);
        f47201d = new dly();
    }

    /* renamed from: a */
    public static /* synthetic */ int m16480a(byte b) {
        return b & 255;
    }

    /* renamed from: a */
    public static dlw m16479a(InputStream inputStream) throws IOException {
        int i;
        int read;
        ArrayList arrayList = new ArrayList();
        int i2 = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        while (true) {
            int i3 = i2;
            byte[] bArr = new byte[i3];
            int i4 = 0;
            while (true) {
                i = i4;
                if (i >= i3 || (read = inputStream.read(bArr, i, i3 - i)) == -1) {
                    break;
                }
                i4 = i + read;
            }
            dlw m16474a = i == 0 ? null : m16474a(bArr, 0, i);
            if (m16474a != null) {
                arrayList.add(m16474a);
                i2 = Math.min(i3 << 1, (int) PropertyFlags.UNSIGNED);
            } else {
                return m16478a(arrayList);
            }
        }
    }

    /* renamed from: a */
    public static dlw m16478a(Iterable<dlw> iterable) {
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
        return i == 0 ? f47199a : m16476a(iterable.iterator(), i);
    }

    /* renamed from: a */
    public static dlw m16477a(String str) {
        return new dmh(str.getBytes(dnj.f47286a));
    }

    /* renamed from: a */
    private static dlw m16476a(Iterator<dlw> it2, int i) {
        dlw dlwVar;
        if (i > 0) {
            if (i == 1) {
                dlwVar = it2.next();
            } else {
                int i2 = i >>> 1;
                dlw m16476a = m16476a(it2, i2);
                dlw m16476a2 = m16476a(it2, i - i2);
                if (Integer.MAX_VALUE - m16476a.mo16138b() < m16476a2.mo16138b()) {
                    int mo16138b = m16476a.mo16138b();
                    int mo16138b2 = m16476a2.mo16138b();
                    StringBuilder sb = new StringBuilder(53);
                    sb.append("ByteString would be too long: ");
                    sb.append(mo16138b);
                    sb.append("+");
                    sb.append(mo16138b2);
                    throw new IllegalArgumentException(sb.toString());
                }
                dlwVar = dpm.m16141a(m16476a, m16476a2);
            }
            return dlwVar;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    /* renamed from: a */
    public static dlw m16475a(byte[] bArr) {
        return m16474a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static dlw m16474a(byte[] bArr, int i, int i2) {
        m16468c(i, i + i2, bArr.length);
        return new dmh(f47200b.mo16453a(bArr, i, i2));
    }

    /* renamed from: b */
    public static dlw m16471b(byte[] bArr) {
        return new dmh(bArr);
    }

    /* renamed from: b */
    public static void m16472b(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
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
    }

    /* renamed from: c */
    public static int m16468c(int i, int i2, int i3) {
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

    /* renamed from: c */
    public static dme m16469c(int i) {
        return new dme(i, null);
    }

    /* renamed from: h */
    public static dmf m16465h() {
        return new dmf(128);
    }

    /* renamed from: a */
    public abstract byte mo16145a(int i);

    /* renamed from: a */
    public abstract int mo16143a(int i, int i2, int i3);

    /* renamed from: a */
    public abstract dlw mo16144a(int i, int i2);

    /* renamed from: a */
    public dmb iterator() {
        return new dlv(this);
    }

    /* renamed from: a */
    protected abstract String mo16139a(Charset charset);

    /* renamed from: a */
    public abstract void mo16142a(dlt dltVar) throws IOException;

    @Deprecated
    /* renamed from: a */
    public final void m16473a(byte[] bArr, int i, int i2, int i3) {
        m16468c(i, i + i3, mo16138b());
        m16468c(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            mo16133b(bArr, i, i2, i3);
        }
    }

    /* renamed from: b */
    public abstract byte mo16137b(int i);

    /* renamed from: b */
    public abstract int mo16138b();

    /* renamed from: b */
    public abstract int mo16136b(int i, int i2, int i3);

    /* renamed from: b */
    public abstract void mo16133b(byte[] bArr, int i, int i2, int i3);

    /* renamed from: c */
    public final boolean m16470c() {
        return mo16138b() == 0;
    }

    /* renamed from: d */
    public final byte[] m16467d() {
        int mo16138b = mo16138b();
        if (mo16138b == 0) {
            return dnj.f47287b;
        }
        byte[] bArr = new byte[mo16138b];
        mo16133b(bArr, 0, 0, mo16138b);
        return bArr;
    }

    /* renamed from: e */
    public final String m16466e() {
        return mo16138b() == 0 ? "" : mo16139a(dnj.f47286a);
    }

    public abstract boolean equals(Object obj);

    /* renamed from: f */
    public abstract boolean mo16131f();

    /* renamed from: g */
    public abstract dmi mo16130g();

    public final int hashCode() {
        int i = this.f47202c;
        int i2 = i;
        if (i == 0) {
            int mo16138b = mo16138b();
            int mo16136b = mo16136b(mo16138b, 0, mo16138b);
            i2 = mo16136b;
            if (mo16136b == 0) {
                i2 = 1;
            }
            this.f47202c = i2;
        }
        return i2;
    }

    /* renamed from: i */
    public abstract int mo16129i();

    /* renamed from: j */
    public abstract boolean mo16128j();

    /* renamed from: k */
    public final int m16464k() {
        return this.f47202c;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(mo16138b()), mo16138b() <= 50 ? dqd.m16031a(this) : String.valueOf(dqd.m16031a(mo16144a(0, 47))).concat("..."));
    }
}
