package p193e.p1482g.p1483a;

import java.util.Arrays;
import java.util.Iterator;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1482g.p1483a.p1484r.C22665c;
/* renamed from: e.g.a.g */
/* loaded from: classes-dex2jar.jar:e/g/a/g.class */
public class C22644g<VType> implements AbstractC22646h<VType>, Object {

    /* renamed from: a */
    public char[] f62684a;

    /* renamed from: b */
    public Object[] f62685b;

    /* renamed from: c */
    public int f62686c;

    /* renamed from: d */
    public int f62687d;

    /* renamed from: e */
    public int f62688e;

    /* renamed from: f */
    public int f62689f;

    /* renamed from: g */
    public boolean f62690g;

    /* renamed from: h */
    public double f62691h;

    /* renamed from: i */
    public AbstractC22658n f62692i;

    /* renamed from: e.g.a.g$a */
    /* loaded from: classes-dex2jar.jar:e/g/a/g$a.class */
    public final class C22645a extends AbstractC22636a<C22665c<VType>> {

        /* renamed from: d */
        public final int f62694d;

        /* renamed from: e */
        public int f62695e = -1;

        /* renamed from: c */
        public final C22665c<VType> f62693c = new C22665c<>();

        public C22645a() {
            C22644g.this = r5;
            this.f62694d = r5.f62688e + 1;
        }

        @Override // p193e.p1482g.p1483a.AbstractC22636a
        /* renamed from: b */
        public Object mo7984b() {
            C22665c<VType> c22665c;
            int i;
            C22644g c22644g;
            char c;
            int i2 = this.f62695e;
            if (i2 < this.f62694d) {
                do {
                    i = i2 + 1;
                    this.f62695e = i;
                    if (i < this.f62694d) {
                        c22644g = C22644g.this;
                        c = c22644g.f62684a[i];
                        i2 = i;
                    }
                } while (c == 0);
                c22665c = this.f62693c;
                c22665c.f62726a = i;
                c22665c.f62727b = c;
                c22665c.f62728c = (VType) c22644g.f62685b[i];
                return c22665c;
            }
            int i3 = this.f62695e;
            int i4 = this.f62694d;
            if (i3 == i4) {
                C22644g c22644g2 = C22644g.this;
                if (c22644g2.f62690g) {
                    c22665c = this.f62693c;
                    c22665c.f62726a = i3;
                    c22665c.f62727b = (char) 0;
                    c22665c.f62728c = (VType) c22644g2.f62685b[i4];
                    this.f62695e = i3 + 1;
                    return c22665c;
                }
            }
            m8009a();
            c22665c = null;
            return c22665c;
        }
    }

    public C22644g() {
        this(4, 0.75d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C22644g(int i, double d) {
        this.f62692i = C22650l.m7990a();
        C22649k.m7994a(d, 0.009999999776482582d, 0.9900000095367432d);
        this.f62691h = d;
        if (i > this.f62689f || this.f62684a == null) {
            char[] cArr = this.f62684a;
            Object[] objArr = this.f62685b;
            m7999a(C22649k.m7992c(i, d));
            if (cArr == null) {
                return;
            }
            if (size() == 0) {
                return;
            }
            m7997c(cArr, objArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p1482g.p1483a.AbstractC22646h
    /* renamed from: J */
    public VType mo7996J(char c, VType vtype) {
        int i = this.f62688e;
        if (c == 0) {
            this.f62690g = true;
            Object[] objArr = this.f62685b;
            int i2 = i + 1;
            VType vtype2 = (VType) objArr[i2];
            objArr[i2] = vtype;
            return vtype2;
        }
        char[] cArr = this.f62684a;
        int m2344i1 = C26232y.m2344i1(c, this.f62686c);
        while (true) {
            int i3 = m2344i1 & i;
            char c2 = cArr[i3];
            if (c2 == 0) {
                if (this.f62687d == this.f62689f) {
                    char[] cArr2 = this.f62684a;
                    Object[] objArr2 = this.f62685b;
                    m7999a(C22649k.m7991d(this.f62688e + 1, size(), this.f62691h));
                    cArr2[i3] = c;
                    objArr2[i3] = vtype;
                    m7997c(cArr2, objArr2);
                } else {
                    cArr[i3] = c;
                    this.f62685b[i3] = vtype;
                }
                this.f62687d++;
                return null;
            } else if (c2 == c) {
                Object[] objArr3 = this.f62685b;
                VType vtype3 = (VType) objArr3[i3];
                objArr3[i3] = vtype;
                return vtype3;
            } else {
                m2344i1 = i3 + 1;
            }
        }
    }

    /* renamed from: a */
    public void m7999a(int i) {
        int mo7983d = this.f62692i.mo7983d(i);
        char[] cArr = this.f62684a;
        Object[] objArr = this.f62685b;
        int i2 = i + 1;
        try {
            this.f62684a = new char[i2];
            this.f62685b = new Object[i2];
            this.f62689f = C22649k.m7993b(i, this.f62691h);
            this.f62686c = mo7983d;
            this.f62688e = i - 1;
        } catch (OutOfMemoryError e) {
            this.f62684a = cArr;
            this.f62685b = objArr;
            throw new C22637b("Not enough memory to allocate buffers for rehashing: %,d -> %,d", e, Integer.valueOf(this.f62688e + 1), Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public int m7998b(char c) {
        return C26232y.m2344i1(c, this.f62686c);
    }

    /* renamed from: c */
    public void m7997c(char[] cArr, VType[] vtypeArr) {
        int i;
        char[] cArr2 = this.f62684a;
        Object[] objArr = this.f62685b;
        int i2 = this.f62688e;
        int length = cArr.length - 1;
        cArr2[cArr2.length - 1] = cArr[length];
        objArr[objArr.length - 1] = vtypeArr[length];
        while (true) {
            int i3 = length - 1;
            if (i3 >= 0) {
                char c = cArr[i3];
                length = i3;
                if (c != 0) {
                    int m7998b = m7998b(c);
                    while (true) {
                        i = m7998b & i2;
                        if (cArr2[i] == 0) {
                            break;
                        }
                        m7998b = i + 1;
                    }
                    cArr2[i] = c;
                    objArr[i] = vtypeArr[i3];
                    length = i3;
                }
            } else {
                return;
            }
        }
    }

    @Override // p193e.p1482g.p1483a.AbstractC22646h
    public void clear() {
        this.f62687d = 0;
        this.f62690g = false;
        Arrays.fill(this.f62684a, (char) 0);
        Arrays.fill(this.f62685b, (Object) null);
    }

    @Override // java.lang.Object
    public Object clone() throws CloneNotSupportedException {
        try {
            C22644g c22644g = (C22644g) super.clone();
            c22644g.f62684a = (char[]) this.f62684a.clone();
            c22644g.f62685b = (Object[]) this.f62685b.clone();
            c22644g.f62690g = c22644g.f62690g;
            c22644g.f62692i = this.f62692i.mo49518clone();
            return c22644g;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb  */
    @Override // java.lang.Object
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 == 0) goto Lbd
            r0 = r6
            r7 = r0
            java.lang.Class<e.g.a.g> r0 = p193e.p1482g.p1483a.C22644g.class
            r1 = r5
            java.lang.Class r1 = r1.getClass()
            if (r0 != r1) goto Lbd
            java.lang.Class<e.g.a.g> r0 = p193e.p1482g.p1483a.C22644g.class
            r1 = r5
            java.lang.Object r0 = r0.cast(r1)
            e.g.a.g r0 = (p193e.p1482g.p1483a.C22644g) r0
            r5 = r0
            r0 = r5
            int r0 = r0.size()
            r1 = r4
            int r1 = r1.size()
            if (r0 == r1) goto L2e
        L28:
            r0 = 0
            r8 = r0
            goto Lb4
        L2e:
            e.g.a.g$a r0 = new e.g.a.g$a
            r1 = r0
            r2 = r5
            r1.<init>()
            r5 = r0
        L37:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Lb1
            r0 = r5
            java.lang.Object r0 = r0.next()
            e.g.a.r.c r0 = (p193e.p1482g.p1483a.p1484r.C22665c) r0
            r9 = r0
            r0 = r9
            char r0 = r0.f62727b
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L5b
            r0 = r4
            boolean r0 = r0.f62690g
            r7 = r0
            goto L99
        L5b:
            r0 = r4
            char[] r0 = r0.f62684a
            r11 = r0
            r0 = r4
            int r0 = r0.f62688e
            r12 = r0
            r0 = r10
            r1 = r4
            int r1 = r1.f62686c
            int r0 = p1727n3.p1789g0.C26232y.m2344i1(r0, r1)
            r8 = r0
        L72:
            r0 = r8
            r1 = r12
            r0 = r0 & r1
            r8 = r0
            r0 = r11
            r1 = r8
            char r0 = r0[r1]
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L97
            r0 = r13
            r1 = r10
            if (r0 != r1) goto L91
            r0 = 1
            r7 = r0
            goto L99
        L91:
            int r8 = r8 + 1
            goto L72
        L97:
            r0 = 0
            r7 = r0
        L99:
            r0 = r7
            if (r0 == 0) goto L28
            r0 = r4
            r1 = r10
            java.lang.Object r0 = r0.mo7995i2(r1)
            r1 = r9
            VType r1 = r1.f62728c
            boolean r0 = java.util.Objects.equals(r0, r1)
            if (r0 != 0) goto L37
            goto L28
        Lb1:
            r0 = 1
            r8 = r0
        Lb4:
            r0 = r6
            r7 = r0
            r0 = r8
            if (r0 == 0) goto Lbd
            r0 = 1
            r7 = r0
        Lbd:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1482g.p1483a.C22644g.equals(java.lang.Object):boolean");
    }

    @Override // java.lang.Object
    public int hashCode() {
        int i = this.f62690g ? -559038737 : 0;
        C22645a c22645a = new C22645a();
        while (c22645a.hasNext()) {
            C22665c<VType> next = c22645a.next();
            int m2348h1 = C26232y.m2348h1(next.f62727b);
            VType vtype = next.f62728c;
            i += m2348h1 + (vtype == null ? 0 : C26232y.m2340j1(vtype.hashCode()));
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v23 */
    @Override // p193e.p1482g.p1483a.AbstractC22646h
    /* renamed from: i2 */
    public VType mo7995i2(char c) {
        VType vtype = null;
        if (c == 0) {
            if (this.f62690g) {
                vtype = this.f62685b[this.f62688e + 1];
            }
            return vtype;
        }
        char[] cArr = this.f62684a;
        int i = this.f62688e;
        int m2344i1 = C26232y.m2344i1(c, this.f62686c);
        while (true) {
            int i2 = m2344i1 & i;
            char c2 = cArr[i2];
            if (c2 == 0) {
                return null;
            }
            if (c2 == c) {
                return (VType) this.f62685b[i2];
            }
            m2344i1 = i2 + 1;
        }
    }

    public Iterator<C22665c<VType>> iterator() {
        return new C22645a();
    }

    public int size() {
        return this.f62687d + (this.f62690g ? 1 : 0);
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[");
        C22645a c22645a = new C22645a();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!c22645a.hasNext()) {
                m8728C.append("]");
                return m8728C.toString();
            }
            C22665c<VType> next = c22645a.next();
            if (!z2) {
                m8728C.append(", ");
            }
            m8728C.append(next.f62727b);
            m8728C.append("=>");
            m8728C.append(next.f62728c);
            z = false;
        }
    }
}
