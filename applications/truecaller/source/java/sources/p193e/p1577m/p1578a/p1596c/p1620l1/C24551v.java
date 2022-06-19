package p193e.p1577m.p1578a.p1596c.p1620l1;

import android.os.Looper;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.io.EOFException;
import java.io.IOException;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.C24286g0;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24276c;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24549u;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24690d;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24680c;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24743o;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24792q;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.l1.v */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/v.class */
public class C24551v implements AbstractC24422s {

    /* renamed from: a */
    public final C24549u f68614a;

    /* renamed from: c */
    public final AbstractC24279e<?> f68616c;

    /* renamed from: d */
    public AbstractC24553b f68617d;

    /* renamed from: e */
    public Format f68618e;

    /* renamed from: f */
    public AbstractC24276c<?> f68619f;

    /* renamed from: o */
    public int f68628o;

    /* renamed from: p */
    public int f68629p;

    /* renamed from: q */
    public int f68630q;

    /* renamed from: r */
    public int f68631r;

    /* renamed from: u */
    public boolean f68634u;

    /* renamed from: x */
    public Format f68637x;

    /* renamed from: y */
    public Format f68638y;

    /* renamed from: z */
    public Format f68639z;

    /* renamed from: b */
    public final C24552a f68615b = new C24552a();

    /* renamed from: g */
    public int f68620g = 1000;

    /* renamed from: h */
    public int[] f68621h = new int[1000];

    /* renamed from: i */
    public long[] f68622i = new long[1000];

    /* renamed from: l */
    public long[] f68625l = new long[1000];

    /* renamed from: k */
    public int[] f68624k = new int[1000];

    /* renamed from: j */
    public int[] f68623j = new int[1000];

    /* renamed from: m */
    public AbstractC24422s.C24423a[] f68626m = new AbstractC24422s.C24423a[1000];

    /* renamed from: n */
    public Format[] f68627n = new Format[1000];

    /* renamed from: s */
    public long f68632s = Long.MIN_VALUE;

    /* renamed from: t */
    public long f68633t = Long.MIN_VALUE;

    /* renamed from: w */
    public boolean f68636w = true;

    /* renamed from: v */
    public boolean f68635v = true;

    /* renamed from: e.m.a.c.l1.v$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/v$a.class */
    public static final class C24552a {

        /* renamed from: a */
        public int f68640a;

        /* renamed from: b */
        public long f68641b;

        /* renamed from: c */
        public AbstractC24422s.C24423a f68642c;
    }

    /* renamed from: e.m.a.c.l1.v$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/v$b.class */
    public interface AbstractC24553b {
    }

    public C24551v(AbstractC24690d abstractC24690d, AbstractC24279e<?> abstractC24279e) {
        this.f68614a = new C24549u(abstractC24690d);
        this.f68616c = abstractC24279e;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s
    /* renamed from: a */
    public final void mo4929a(C24798t c24798t, int i) {
        C24549u c24549u = this.f68614a;
        Objects.requireNonNull(c24549u);
        while (i > 0) {
            int m4933c = c24549u.m4933c(i);
            C24549u.C24550a c24550a = c24549u.f68607f;
            c24798t.m4542d(c24550a.f68612d.f69163a, c24550a.m4930a(c24549u.f68608g), m4933c);
            i -= m4933c;
            c24549u.m4934b(m4933c);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s
    /* renamed from: b */
    public final void mo4928b(Format format) {
        boolean z;
        this.f68639z = format;
        synchronized (this) {
            z = false;
            if (format == null) {
                this.f68636w = true;
            } else {
                this.f68636w = false;
                if (!C24773d0.m4623a(format, this.f68637x)) {
                    if (C24773d0.m4623a(format, this.f68638y)) {
                        this.f68637x = this.f68638y;
                    } else {
                        this.f68637x = format;
                    }
                    z = true;
                }
            }
        }
        AbstractC24553b abstractC24553b = this.f68617d;
        if (abstractC24553b == null || !z) {
            return;
        }
        C24540s c24540s = (C24540s) abstractC24553b;
        c24540s.f68548o.post(c24540s.f68546m);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s
    /* renamed from: c */
    public final void mo4927c(long j, int i, int i2, int i3, AbstractC24422s.C24423a c24423a) {
        long j2 = j + 0;
        long j3 = this.f68614a.f68608g;
        long j4 = i2;
        long j5 = i3;
        synchronized (this) {
            if (this.f68635v) {
                if ((i & 1) == 0) {
                    return;
                }
                this.f68635v = false;
            }
            C26232y.m2286x(!this.f68636w);
            this.f68634u = (536870912 & i) != 0;
            this.f68633t = Math.max(this.f68633t, j2);
            int m4920j = m4920j(this.f68628o);
            this.f68625l[m4920j] = j2;
            long[] jArr = this.f68622i;
            jArr[m4920j] = (j3 - j4) - j5;
            this.f68623j[m4920j] = i2;
            this.f68624k[m4920j] = i;
            this.f68626m[m4920j] = c24423a;
            Format[] formatArr = this.f68627n;
            Format format = this.f68637x;
            formatArr[m4920j] = format;
            this.f68621h[m4920j] = 0;
            this.f68638y = format;
            int i4 = this.f68628o + 1;
            this.f68628o = i4;
            int i5 = this.f68620g;
            if (i4 == i5) {
                int i6 = i5 + 1000;
                int[] iArr = new int[i6];
                long[] jArr2 = new long[i6];
                long[] jArr3 = new long[i6];
                int[] iArr2 = new int[i6];
                int[] iArr3 = new int[i6];
                AbstractC24422s.C24423a[] c24423aArr = new AbstractC24422s.C24423a[i6];
                Format[] formatArr2 = new Format[i6];
                int i7 = this.f68630q;
                int i8 = i5 - i7;
                System.arraycopy(jArr, i7, jArr2, 0, i8);
                System.arraycopy(this.f68625l, this.f68630q, jArr3, 0, i8);
                System.arraycopy(this.f68624k, this.f68630q, iArr2, 0, i8);
                System.arraycopy(this.f68623j, this.f68630q, iArr3, 0, i8);
                System.arraycopy(this.f68626m, this.f68630q, c24423aArr, 0, i8);
                System.arraycopy(this.f68627n, this.f68630q, formatArr2, 0, i8);
                System.arraycopy(this.f68621h, this.f68630q, iArr, 0, i8);
                int i9 = this.f68630q;
                System.arraycopy(this.f68622i, 0, jArr2, i8, i9);
                System.arraycopy(this.f68625l, 0, jArr3, i8, i9);
                System.arraycopy(this.f68624k, 0, iArr2, i8, i9);
                System.arraycopy(this.f68623j, 0, iArr3, i8, i9);
                System.arraycopy(this.f68626m, 0, c24423aArr, i8, i9);
                System.arraycopy(this.f68627n, 0, formatArr2, i8, i9);
                System.arraycopy(this.f68621h, 0, iArr, i8, i9);
                this.f68622i = jArr2;
                this.f68625l = jArr3;
                this.f68624k = iArr2;
                this.f68623j = iArr3;
                this.f68626m = c24423aArr;
                this.f68627n = formatArr2;
                this.f68621h = iArr;
                this.f68630q = 0;
                this.f68620g = i6;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s
    /* renamed from: d */
    public final int mo4926d(C24353e c24353e, int i, boolean z) throws IOException, InterruptedException {
        C24549u c24549u = this.f68614a;
        int m4933c = c24549u.m4933c(i);
        C24549u.C24550a c24550a = c24549u.f68607f;
        int m5209f = c24353e.m5209f(c24550a.f68612d.f69163a, c24550a.m4930a(c24549u.f68608g), m4933c);
        if (m5209f != -1) {
            c24549u.m4934b(m5209f);
        } else if (!z) {
            throw new EOFException();
        } else {
            m5209f = -1;
        }
        return m5209f;
    }

    /* renamed from: e */
    public final long m4925e(int i) {
        int i2;
        this.f68632s = Math.max(this.f68632s, m4921i(i));
        int i3 = this.f68628o - i;
        this.f68628o = i3;
        this.f68629p += i;
        int i4 = this.f68630q + i;
        this.f68630q = i4;
        int i5 = this.f68620g;
        if (i4 >= i5) {
            this.f68630q = i4 - i5;
        }
        int i6 = this.f68631r - i;
        this.f68631r = i6;
        if (i6 < 0) {
            this.f68631r = 0;
        }
        if (i3 == 0) {
            int i7 = this.f68630q;
            if (i7 == 0) {
                i7 = i5;
            }
            return this.f68622i[i7 - 1] + this.f68623j[i2];
        }
        return this.f68622i[this.f68630q];
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: f */
    public final void m4924f() {
        char m4925e;
        C24549u c24549u = this.f68614a;
        synchronized (this) {
            int i = this.f68628o;
            m4925e = i == 0 ? (char) 65535 : m4925e(i);
        }
        c24549u.m4935a(m4925e);
    }

    /* renamed from: g */
    public final int m4923g(int i, int i2, long j, boolean z) {
        int i3 = -1;
        int i4 = i;
        for (int i5 = 0; i5 < i2 && this.f68625l[i4] <= j; i5++) {
            if (!z || (this.f68624k[i4] & 1) != 0) {
                i3 = i5;
            }
            int i6 = i4 + 1;
            i4 = i6;
            if (i6 == this.f68620g) {
                i4 = 0;
            }
        }
        return i3;
    }

    /* renamed from: h */
    public final long m4922h() {
        long j;
        synchronized (this) {
            j = this.f68633t;
        }
        return j;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: i */
    public final long m4921i(int i) {
        char c;
        char c2 = 0;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int m4920j = m4920j(i - 1);
        int i2 = 0;
        while (true) {
            c = c2;
            if (i2 >= i) {
                break;
            }
            c2 = Math.max((long) c2, this.f68625l[m4920j]);
            if ((this.f68624k[m4920j] & 1) != 0) {
                c = c2;
                break;
            }
            int i3 = m4920j - 1;
            m4920j = i3;
            if (i3 == -1) {
                m4920j = this.f68620g - 1;
            }
            i2++;
        }
        return c;
    }

    /* renamed from: j */
    public final int m4920j(int i) {
        int i2 = this.f68630q + i;
        int i3 = this.f68620g;
        if (i2 >= i3) {
            i2 -= i3;
        }
        return i2;
    }

    /* renamed from: k */
    public final Format m4919k() {
        Format format;
        synchronized (this) {
            format = this.f68636w ? null : this.f68637x;
        }
        return format;
    }

    /* renamed from: l */
    public final boolean m4918l() {
        return this.f68631r != this.f68628o;
    }

    /* renamed from: m */
    public boolean m4917m(boolean z) {
        synchronized (this) {
            if (m4918l()) {
                int m4920j = m4920j(this.f68631r);
                if (this.f68627n[m4920j] != this.f68618e) {
                    return true;
                }
                return m4916n(m4920j);
            }
            boolean z2 = true;
            if (!z) {
                z2 = true;
                if (!this.f68634u) {
                    Format format = this.f68637x;
                    z2 = (format == null || format == this.f68618e) ? false : true;
                }
            }
            return z2;
        }
    }

    /* renamed from: n */
    public final boolean m4916n(int i) {
        if (this.f68616c == AbstractC24279e.f67328a) {
            return true;
        }
        AbstractC24276c<?> abstractC24276c = this.f68619f;
        boolean z = true;
        if (abstractC24276c != null) {
            z = true;
            if (abstractC24276c.getState() != 4) {
                z = (this.f68624k[i] & 1073741824) == 0 && this.f68619f.mo5311d();
            }
        }
        return z;
    }

    /* renamed from: o */
    public final void m4915o(Format format, C24286g0 c24286g0) {
        c24286g0.f67334c = format;
        Format format2 = this.f68618e;
        boolean z = format2 == null;
        DrmInitData drmInitData = z ? null : format2.f4850l;
        this.f68618e = format;
        if (this.f68616c == AbstractC24279e.f67328a) {
            return;
        }
        DrmInitData drmInitData2 = format.f4850l;
        c24286g0.f67332a = true;
        c24286g0.f67333b = this.f68619f;
        if (!z && C24773d0.m4623a(drmInitData, drmInitData2)) {
            return;
        }
        AbstractC24276c<?> abstractC24276c = this.f68619f;
        Looper myLooper = Looper.myLooper();
        Objects.requireNonNull(myLooper);
        AbstractC24276c<?> mo5315d = drmInitData2 != null ? this.f68616c.mo5315d(myLooper, drmInitData2) : this.f68616c.mo5316c(myLooper, C24792q.m4569e(format.f4847i));
        this.f68619f = mo5315d;
        c24286g0.f67333b = mo5315d;
        if (abstractC24276c == null) {
            return;
        }
        abstractC24276c.release();
    }

    /* renamed from: p */
    public void m4914p(boolean z) {
        C24549u c24549u = this.f68614a;
        C24549u.C24550a c24550a = c24549u.f68605d;
        if (c24550a.f68611c) {
            C24549u.C24550a c24550a2 = c24549u.f68607f;
            int i = (((int) (c24550a2.f68609a - c24550a.f68609a)) / c24549u.f68603b) + (c24550a2.f68611c ? 1 : 0);
            C24680c[] c24680cArr = new C24680c[i];
            int i2 = 0;
            while (i2 < i) {
                c24680cArr[i2] = c24550a.f68612d;
                c24550a.f68612d = null;
                C24549u.C24550a c24550a3 = c24550a.f68613e;
                c24550a.f68613e = null;
                i2++;
                c24550a = c24550a3;
            }
            ((C24743o) c24549u.f68602a).m4684a(c24680cArr);
        }
        C24549u.C24550a c24550a4 = new C24549u.C24550a(0L, c24549u.f68603b);
        c24549u.f68605d = c24550a4;
        c24549u.f68606e = c24550a4;
        c24549u.f68607f = c24550a4;
        c24549u.f68608g = 0L;
        ((C24743o) c24549u.f68602a).m4682c();
        this.f68628o = 0;
        this.f68629p = 0;
        this.f68630q = 0;
        this.f68631r = 0;
        this.f68635v = true;
        this.f68632s = Long.MIN_VALUE;
        this.f68633t = Long.MIN_VALUE;
        this.f68634u = false;
        this.f68638y = null;
        if (z) {
            this.f68639z = null;
            this.f68637x = null;
            this.f68636w = true;
        }
    }

    /* renamed from: q */
    public final boolean m4913q(long j, boolean z) {
        synchronized (this) {
            synchronized (this) {
                this.f68631r = 0;
                C24549u c24549u = this.f68614a;
                c24549u.f68606e = c24549u.f68605d;
            }
        }
        int m4920j = m4920j(0);
        if (!m4918l() || j < this.f68625l[m4920j] || (j > this.f68633t && !z)) {
            return false;
        }
        int m4923g = m4923g(m4920j, this.f68628o - this.f68631r, j, true);
        if (m4923g == -1) {
            return false;
        }
        this.f68631r += m4923g;
        return true;
    }
}
