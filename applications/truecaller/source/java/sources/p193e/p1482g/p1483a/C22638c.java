package p193e.p1482g.p1483a;

import java.util.Iterator;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1482g.p1483a.p1484r.C22663a;
/* renamed from: e.g.a.c */
/* loaded from: classes-dex2jar.jar:e/g/a/c.class */
public class C22638c implements AbstractC22640d, Cloneable {

    /* renamed from: a */
    public char[] f62658a;

    /* renamed from: b */
    public char[] f62659b;

    /* renamed from: c */
    public int f62660c;

    /* renamed from: d */
    public int f62661d;

    /* renamed from: e */
    public int f62662e;

    /* renamed from: f */
    public int f62663f;

    /* renamed from: g */
    public boolean f62664g;

    /* renamed from: h */
    public double f62665h;

    /* renamed from: i */
    public AbstractC22658n f62666i;

    /* renamed from: e.g.a.c$a */
    /* loaded from: classes-dex2jar.jar:e/g/a/c$a.class */
    public final class C22639a extends AbstractC22636a<C22663a> {

        /* renamed from: d */
        public final int f62668d;

        /* renamed from: e */
        public int f62669e = -1;

        /* renamed from: c */
        public final C22663a f62667c = new C22663a();

        public C22639a() {
            C22638c.this = r5;
            this.f62668d = r5.f62662e + 1;
        }

        @Override // p193e.p1482g.p1483a.AbstractC22636a
        /* renamed from: b */
        public C22663a mo7984b() {
            C22663a c22663a;
            int i;
            C22638c c22638c;
            int i2;
            C22638c c22638c2;
            char c;
            int i3 = this.f62669e;
            if (i3 < this.f62668d) {
                do {
                    i2 = i3 + 1;
                    this.f62669e = i2;
                    if (i2 < this.f62668d) {
                        c = C22638c.this.f62658a[i2];
                        i3 = i2;
                    }
                } while (c == 0);
                c22663a = this.f62667c;
                c22663a.f62720a = i2;
                c22663a.f62721b = c;
                c22663a.f62722c = c22638c2.f62659b[i2];
                return c22663a;
            }
            int i4 = this.f62669e;
            if (i4 == this.f62668d) {
                if (C22638c.this.f62664g) {
                    c22663a = this.f62667c;
                    c22663a.f62720a = i4;
                    c22663a.f62721b = (char) 0;
                    c22663a.f62722c = c22638c.f62659b[i];
                    this.f62669e = i4 + 1;
                    return c22663a;
                }
            }
            m8009a();
            c22663a = null;
            return c22663a;
        }
    }

    public C22638c() {
        this(4, 0.75d);
    }

    public C22638c(int i, double d) {
        this.f62666i = C22650l.m7990a();
        C22649k.m7994a(d, 0.009999999776482582d, 0.9900000095367432d);
        this.f62665h = d;
        if (i > this.f62663f || this.f62658a == null) {
            char[] cArr = this.f62658a;
            char[] cArr2 = this.f62659b;
            m8008a(C22649k.m7992c(i, d));
            if (cArr == null) {
                return;
            }
            if (size() == 0) {
                return;
            }
            m8006c(cArr, cArr2);
        }
    }

    @Override // p193e.p1482g.p1483a.AbstractC22640d
    /* renamed from: P */
    public char mo8005P(char c, char c2) {
        int i = this.f62662e;
        if (c == 0) {
            this.f62664g = true;
            char[] cArr = this.f62659b;
            int i2 = i + 1;
            char c3 = cArr[i2];
            cArr[i2] = c2;
            return c3;
        }
        char[] cArr2 = this.f62658a;
        int m2344i1 = C26232y.m2344i1(c, this.f62660c);
        while (true) {
            int i3 = m2344i1 & i;
            char c4 = cArr2[i3];
            if (c4 == 0) {
                if (this.f62661d == this.f62663f) {
                    char[] cArr3 = this.f62658a;
                    char[] cArr4 = this.f62659b;
                    m8008a(C22649k.m7991d(this.f62662e + 1, size(), this.f62665h));
                    cArr3[i3] = c;
                    cArr4[i3] = c2;
                    m8006c(cArr3, cArr4);
                } else {
                    cArr2[i3] = c;
                    this.f62659b[i3] = c2;
                }
                this.f62661d++;
                return (char) 0;
            } else if (c4 == c) {
                char[] cArr5 = this.f62659b;
                char c5 = cArr5[i3];
                cArr5[i3] = c2;
                return c5;
            } else {
                m2344i1 = i3 + 1;
            }
        }
    }

    /* renamed from: a */
    public void m8008a(int i) {
        int mo7983d = this.f62666i.mo7983d(i);
        char[] cArr = this.f62658a;
        char[] cArr2 = this.f62659b;
        int i2 = i + 1;
        try {
            this.f62658a = new char[i2];
            this.f62659b = new char[i2];
            this.f62663f = C22649k.m7993b(i, this.f62665h);
            this.f62660c = mo7983d;
            this.f62662e = i - 1;
        } catch (OutOfMemoryError e) {
            this.f62658a = cArr;
            this.f62659b = cArr2;
            throw new C22637b("Not enough memory to allocate buffers for rehashing: %,d -> %,d", e, Integer.valueOf(this.f62662e + 1), Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public int m8007b(char c) {
        return C26232y.m2344i1(c, this.f62660c);
    }

    /* renamed from: c */
    public void m8006c(char[] cArr, char[] cArr2) {
        int i;
        char[] cArr3 = this.f62658a;
        char[] cArr4 = this.f62659b;
        int i2 = this.f62662e;
        int length = cArr.length - 1;
        cArr3[cArr3.length - 1] = cArr[length];
        cArr4[cArr4.length - 1] = cArr2[length];
        while (true) {
            int i3 = length - 1;
            if (i3 >= 0) {
                char c = cArr[i3];
                length = i3;
                if (c != 0) {
                    int m8007b = m8007b(c);
                    while (true) {
                        i = m8007b & i2;
                        if (cArr3[i] == 0) {
                            break;
                        }
                        m8007b = i + 1;
                    }
                    cArr3[i] = c;
                    cArr4[i] = cArr2[i3];
                    length = i3;
                }
            } else {
                return;
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            C22638c c22638c = (C22638c) super.clone();
            c22638c.f62658a = (char[]) this.f62658a.clone();
            c22638c.f62659b = (char[]) this.f62659b.clone();
            c22638c.f62664g = c22638c.f62664g;
            c22638c.f62666i = this.f62666i.mo49518clone();
            return c22638c;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0028 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1482g.p1483a.C22638c.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = this.f62664g ? -559038737 : 0;
        C22639a c22639a = new C22639a();
        while (c22639a.hasNext()) {
            C22663a next = c22639a.next();
            i += C26232y.m2348h1(next.f62722c) + C26232y.m2348h1(next.f62721b);
        }
        return i;
    }

    @Override // java.lang.Iterable
    public Iterator<C22663a> iterator() {
        return new C22639a();
    }

    public int size() {
        return this.f62661d + (this.f62664g ? 1 : 0);
    }

    @Override // p193e.p1482g.p1483a.AbstractC22640d
    /* renamed from: t0 */
    public char mo8004t0(char c, char c2) {
        if (c == 0) {
            if (this.f62664g) {
                c2 = this.f62659b[this.f62662e + 1];
            }
            return c2;
        }
        char[] cArr = this.f62658a;
        int i = this.f62662e;
        int m2344i1 = C26232y.m2344i1(c, this.f62660c);
        while (true) {
            int i2 = m2344i1 & i;
            char c3 = cArr[i2];
            if (c3 == 0) {
                return c2;
            }
            if (c3 == c) {
                return this.f62659b[i2];
            }
            m2344i1 = i2 + 1;
        }
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[");
        C22639a c22639a = new C22639a();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!c22639a.hasNext()) {
                m8728C.append("]");
                return m8728C.toString();
            }
            C22663a next = c22639a.next();
            if (!z2) {
                m8728C.append(", ");
            }
            m8728C.append(next.f62721b);
            m8728C.append("=>");
            m8728C.append(next.f62722c);
            z = false;
        }
    }
}
