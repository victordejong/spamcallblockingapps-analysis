package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbi.class */
public abstract class dbi implements Serializable, Iterable<Byte> {

    /* renamed from: a */
    public static final dbi f13932a = new dbt(dcz.f14094b);

    /* renamed from: b */
    private static final dbo f13933b;

    /* renamed from: d */
    private static final Comparator<dbi> f13934d;

    /* renamed from: c */
    private int f13935c = 0;

    static {
        f13933b = dbf.m10230a() ? new dbv(null) : new dbm(null);
        f13934d = new dbk();
    }

    /* renamed from: a */
    public static dbi m10223a(InputStream inputStream) {
        int i;
        int read;
        ArrayList arrayList = new ArrayList();
        int i2 = 256;
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
            dbi m10218a = i == 0 ? null : m10218a(bArr, 0, i);
            if (m10218a != null) {
                arrayList.add(m10218a);
                i2 = Math.min(i3 << 1, 8192);
            } else {
                return m10222a(arrayList);
            }
        }
    }

    /* renamed from: a */
    public static dbi m10222a(Iterable<dbi> iterable) {
        int i;
        if (!(iterable instanceof Collection)) {
            int i2 = 0;
            Iterator<dbi> it = iterable.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                it.next();
                i2++;
            }
        } else {
            i = ((Collection) iterable).size();
        }
        return i == 0 ? f13932a : m10220a(iterable.iterator(), i);
    }

    /* renamed from: a */
    public static dbi m10221a(String str) {
        return new dbt(str.getBytes(dcz.f14093a));
    }

    /* renamed from: a */
    private static dbi m10220a(Iterator<dbi> it, int i) {
        dbi m9915a;
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
        }
        if (i == 1) {
            m9915a = it.next();
        } else {
            int i2 = i >>> 1;
            dbi m10220a = m10220a(it, i2);
            dbi m10220a2 = m10220a(it, i - i2);
            if (Integer.MAX_VALUE - m10220a.mo9911b() < m10220a2.mo9911b()) {
                throw new IllegalArgumentException(new StringBuilder(53).append("ByteString would be too long: ").append(m10220a.mo9911b()).append("+").append(m10220a2.mo9911b()).toString());
            }
            m9915a = dew.m9915a(m10220a, m10220a2);
        }
        return m9915a;
    }

    /* renamed from: a */
    public static dbi m10219a(byte[] bArr) {
        return m10218a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static dbi m10218a(byte[] bArr, int i, int i2) {
        m10211c(i, i + i2, bArr.length);
        return new dbt(f13933b.mo10202a(bArr, i, i2));
    }

    /* renamed from: b */
    public static int m10216b(byte b) {
        return b & 255;
    }

    /* renamed from: b */
    public static dbi m10214b(byte[] bArr) {
        return new dbt(bArr);
    }

    /* renamed from: b */
    public static void m10215b(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(new StringBuilder(40).append("Index > length: ").append(i).append(", ").append(i2).toString());
            }
            throw new ArrayIndexOutOfBoundsException(new StringBuilder(22).append("Index < 0: ").append(i).toString());
        }
    }

    /* renamed from: c */
    public static int m10211c(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                throw new IndexOutOfBoundsException(new StringBuilder(32).append("Beginning index: ").append(i).append(" < 0").toString());
            }
            if (i2 >= i) {
                throw new IndexOutOfBoundsException(new StringBuilder(37).append("End index: ").append(i2).append(" >= ").append(i3).toString());
            }
            throw new IndexOutOfBoundsException(new StringBuilder(66).append("Beginning index larger than ending index: ").append(i).append(", ").append(i2).toString());
        }
        return i4;
    }

    /* renamed from: c */
    public static dbq m10212c(int i) {
        return new dbq(i, null);
    }

    /* renamed from: h */
    public static dbw m10208h() {
        return new dbw(128);
    }

    /* renamed from: a */
    public abstract byte mo9918a(int i);

    /* renamed from: a */
    public abstract int mo9916a(int i, int i2, int i3);

    /* renamed from: a */
    public abstract dbi mo9917a(int i, int i2);

    /* renamed from: a */
    public dbr iterator() {
        return new dbl(this);
    }

    /* renamed from: a */
    protected abstract String mo9912a(Charset charset);

    /* renamed from: a */
    public abstract void mo9914a(dbj dbjVar);

    @Deprecated
    /* renamed from: a */
    public final void m10217a(byte[] bArr, int i, int i2, int i3) {
        m10211c(i, i + i3, mo9911b());
        m10211c(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            mo9906b(bArr, i, i2, i3);
        }
    }

    /* renamed from: b */
    public abstract byte mo9910b(int i);

    /* renamed from: b */
    public abstract int mo9911b();

    /* renamed from: b */
    public abstract int mo9909b(int i, int i2, int i3);

    /* renamed from: b */
    public abstract void mo9906b(byte[] bArr, int i, int i2, int i3);

    /* renamed from: c */
    public final boolean m10213c() {
        return mo9911b() == 0;
    }

    /* renamed from: d */
    public final byte[] m10210d() {
        byte[] bArr;
        int mo9911b = mo9911b();
        if (mo9911b == 0) {
            bArr = dcz.f14094b;
        } else {
            bArr = new byte[mo9911b];
            mo9906b(bArr, 0, 0, mo9911b);
        }
        return bArr;
    }

    /* renamed from: e */
    public final String m10209e() {
        return mo9911b() == 0 ? "" : mo9912a(dcz.f14093a);
    }

    public abstract boolean equals(Object obj);

    /* renamed from: f */
    public abstract boolean mo9904f();

    /* renamed from: g */
    public abstract dby mo9903g();

    public final int hashCode() {
        int i = this.f13935c;
        int i2 = i;
        if (i == 0) {
            int mo9911b = mo9911b();
            int mo9909b = mo9909b(mo9911b, 0, mo9911b);
            i2 = mo9909b;
            if (mo9909b == 0) {
                i2 = 1;
            }
            this.f13935c = i2;
        }
        return i2;
    }

    /* renamed from: i */
    public abstract int mo9902i();

    /* renamed from: j */
    public abstract boolean mo9901j();

    /* renamed from: k */
    public final int m10207k() {
        return this.f13935c;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(mo9911b()), mo9911b() <= 50 ? dfr.m9755a(this) : String.valueOf(dfr.m9755a(mo9917a(0, 47))).concat("..."));
    }
}
