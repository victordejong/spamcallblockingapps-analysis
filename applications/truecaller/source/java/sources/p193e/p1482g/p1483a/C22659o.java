package p193e.p1482g.p1483a;

import java.util.Iterator;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1482g.p1483a.p1484r.C22666d;
/* renamed from: e.g.a.o */
/* loaded from: classes-dex2jar.jar:e/g/a/o.class */
public class C22659o implements AbstractC22661p, Cloneable {

    /* renamed from: a */
    public long[] f62705a;

    /* renamed from: b */
    public int[] f62706b;

    /* renamed from: c */
    public int f62707c;

    /* renamed from: d */
    public int f62708d;

    /* renamed from: e */
    public int f62709e;

    /* renamed from: f */
    public int f62710f;

    /* renamed from: g */
    public boolean f62711g;

    /* renamed from: h */
    public double f62712h;

    /* renamed from: i */
    public AbstractC22658n f62713i;

    /* renamed from: e.g.a.o$a */
    /* loaded from: classes-dex2jar.jar:e/g/a/o$a.class */
    public final class C22660a extends AbstractC22636a<C22666d> {

        /* renamed from: d */
        public final int f62715d;

        /* renamed from: e */
        public int f62716e = -1;

        /* renamed from: c */
        public final C22666d f62714c = new C22666d();

        public C22660a() {
            C22659o.this = r5;
            this.f62715d = r5.f62709e + 1;
        }

        @Override // p193e.p1482g.p1483a.AbstractC22636a
        /* renamed from: b */
        public C22666d mo7984b() {
            C22666d c22666d;
            int i;
            C22659o c22659o;
            long j;
            int i2 = this.f62716e;
            if (i2 < this.f62715d) {
                do {
                    i = i2 + 1;
                    this.f62716e = i;
                    if (i < this.f62715d) {
                        c22659o = C22659o.this;
                        j = c22659o.f62705a[i];
                        i2 = i;
                    }
                } while (j == 0);
                c22666d = this.f62714c;
                c22666d.f62729a = i;
                c22666d.f62730b = j;
                c22666d.f62731c = c22659o.f62706b[i];
                return c22666d;
            }
            int i3 = this.f62716e;
            int i4 = this.f62715d;
            if (i3 == i4) {
                C22659o c22659o2 = C22659o.this;
                if (c22659o2.f62711g) {
                    c22666d = this.f62714c;
                    c22666d.f62729a = i3;
                    c22666d.f62730b = 0L;
                    c22666d.f62731c = c22659o2.f62706b[i4];
                    this.f62716e = i3 + 1;
                    return c22666d;
                }
            }
            m8009a();
            c22666d = null;
            return c22666d;
        }
    }

    public C22659o() {
        this(4);
    }

    public C22659o(int i) {
        this.f62713i = C22650l.m7990a();
        C22649k.m7994a(0.75d, 0.009999999776482582d, 0.9900000095367432d);
        this.f62712h = 0.75d;
        if (i > this.f62710f || this.f62705a == null) {
            long[] jArr = this.f62705a;
            int[] iArr = this.f62706b;
            m7989a(C22649k.m7992c(i, 0.75d));
            if (jArr == null || isEmpty()) {
                return;
            }
            m7985f(jArr, iArr);
        }
    }

    /* renamed from: a */
    public void m7989a(int i) {
        int mo7983d = this.f62713i.mo7983d(i);
        long[] jArr = this.f62705a;
        int[] iArr = this.f62706b;
        int i2 = i + 1;
        try {
            this.f62705a = new long[i2];
            this.f62706b = new int[i2];
            this.f62710f = C22649k.m7993b(i, this.f62712h);
            this.f62707c = mo7983d;
            this.f62709e = i - 1;
        } catch (OutOfMemoryError e) {
            this.f62705a = jArr;
            this.f62706b = iArr;
            throw new C22637b("Not enough memory to allocate buffers for rehashing: %,d -> %,d", e, Integer.valueOf(this.f62709e + 1), Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public int m7988b(long j, int i) {
        if (j == 0) {
            if (this.f62711g) {
                i = this.f62706b[this.f62709e + 1];
            }
            return i;
        }
        long[] jArr = this.f62705a;
        int i2 = this.f62709e;
        int m2336k1 = (int) C26232y.m2336k1(this.f62707c ^ j);
        while (true) {
            int i3 = m2336k1 & i2;
            long j2 = jArr[i3];
            if (j2 == 0) {
                return i;
            }
            if (j2 == j) {
                return this.f62706b[i3];
            }
            m2336k1 = i3 + 1;
        }
    }

    /* renamed from: c */
    public int m7987c(long j) {
        return (int) C26232y.m2336k1(j ^ this.f62707c);
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            C22659o c22659o = (C22659o) super.clone();
            c22659o.f62705a = (long[]) this.f62705a.clone();
            c22659o.f62706b = (int[]) this.f62706b.clone();
            c22659o.f62711g = c22659o.f62711g;
            c22659o.f62713i = this.f62713i.mo49518clone();
            return c22659o;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: e */
    public int m7986e(long j, int i) {
        int i2 = this.f62709e;
        if (j == 0) {
            this.f62711g = true;
            int[] iArr = this.f62706b;
            int i3 = i2 + 1;
            int i4 = iArr[i3];
            iArr[i3] = i;
            return i4;
        }
        long[] jArr = this.f62705a;
        int m2336k1 = (int) C26232y.m2336k1(this.f62707c ^ j);
        while (true) {
            int i5 = m2336k1 & i2;
            long j2 = jArr[i5];
            if (j2 == 0) {
                if (this.f62708d == this.f62710f) {
                    long[] jArr2 = this.f62705a;
                    int[] iArr2 = this.f62706b;
                    m7989a(C22649k.m7991d(this.f62709e + 1, size(), this.f62712h));
                    jArr2[i5] = j;
                    iArr2[i5] = i;
                    m7985f(jArr2, iArr2);
                } else {
                    jArr[i5] = j;
                    this.f62706b[i5] = i;
                }
                this.f62708d++;
                return 0;
            } else if (j2 == j) {
                int[] iArr3 = this.f62706b;
                int i6 = iArr3[i5];
                iArr3[i5] = i;
                return i6;
            } else {
                m2336k1 = i5 + 1;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0028 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1482g.p1483a.C22659o.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public void m7985f(long[] jArr, int[] iArr) {
        int i;
        long[] jArr2 = this.f62705a;
        int[] iArr2 = this.f62706b;
        int i2 = this.f62709e;
        int length = jArr.length - 1;
        jArr2[jArr2.length - 1] = jArr[length];
        iArr2[iArr2.length - 1] = iArr[length];
        while (true) {
            int i3 = length - 1;
            if (i3 >= 0) {
                long j = jArr[i3];
                length = i3;
                if (j != 0) {
                    int m7987c = m7987c(j);
                    while (true) {
                        i = m7987c & i2;
                        if (jArr2[i] == 0) {
                            break;
                        }
                        m7987c = i + 1;
                    }
                    jArr2[i] = j;
                    iArr2[i] = iArr[i3];
                    length = i3;
                }
            } else {
                return;
            }
        }
    }

    public int hashCode() {
        int i = this.f62711g ? -559038737 : 0;
        C22660a c22660a = new C22660a();
        while (c22660a.hasNext()) {
            C22666d next = c22660a.next();
            i += ((int) C26232y.m2336k1(next.f62730b)) + C26232y.m2340j1(next.f62731c);
        }
        return i;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<C22666d> iterator() {
        return new C22660a();
    }

    public int size() {
        return this.f62708d + (this.f62711g ? 1 : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[");
        C22660a c22660a = new C22660a();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!c22660a.hasNext()) {
                m8728C.append("]");
                return m8728C.toString();
            }
            C22666d next = c22660a.next();
            if (!z2) {
                m8728C.append(", ");
            }
            m8728C.append(next.f62730b);
            m8728C.append("=>");
            m8728C.append(next.f62731c);
            z = false;
        }
    }
}
