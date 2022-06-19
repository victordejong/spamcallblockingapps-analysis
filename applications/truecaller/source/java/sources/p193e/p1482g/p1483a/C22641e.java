package p193e.p1482g.p1483a;

import java.util.Iterator;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1482g.p1483a.p1484r.C22664b;
/* renamed from: e.g.a.e */
/* loaded from: classes-dex2jar.jar:e/g/a/e.class */
public class C22641e implements AbstractC22643f, Cloneable {

    /* renamed from: a */
    public char[] f62671a;

    /* renamed from: b */
    public int[] f62672b;

    /* renamed from: c */
    public int f62673c;

    /* renamed from: d */
    public int f62674d;

    /* renamed from: e */
    public int f62675e;

    /* renamed from: f */
    public int f62676f;

    /* renamed from: g */
    public boolean f62677g;

    /* renamed from: h */
    public double f62678h;

    /* renamed from: i */
    public AbstractC22658n f62679i;

    /* renamed from: e.g.a.e$a */
    /* loaded from: classes-dex2jar.jar:e/g/a/e$a.class */
    public final class C22642a extends AbstractC22636a<C22664b> {

        /* renamed from: d */
        public final int f62681d;

        /* renamed from: e */
        public int f62682e = -1;

        /* renamed from: c */
        public final C22664b f62680c = new C22664b();

        public C22642a() {
            C22641e.this = r5;
            this.f62681d = r5.f62675e + 1;
        }

        @Override // p193e.p1482g.p1483a.AbstractC22636a
        /* renamed from: b */
        public C22664b mo7984b() {
            C22664b c22664b;
            int i;
            C22641e c22641e;
            char c;
            int i2 = this.f62682e;
            if (i2 < this.f62681d) {
                do {
                    i = i2 + 1;
                    this.f62682e = i;
                    if (i < this.f62681d) {
                        c22641e = C22641e.this;
                        c = c22641e.f62671a[i];
                        i2 = i;
                    }
                } while (c == 0);
                c22664b = this.f62680c;
                c22664b.f62723a = i;
                c22664b.f62724b = c;
                c22664b.f62725c = c22641e.f62672b[i];
                return c22664b;
            }
            int i3 = this.f62682e;
            int i4 = this.f62681d;
            if (i3 == i4) {
                C22641e c22641e2 = C22641e.this;
                if (c22641e2.f62677g) {
                    c22664b = this.f62680c;
                    c22664b.f62723a = i3;
                    c22664b.f62724b = (char) 0;
                    c22664b.f62725c = c22641e2.f62672b[i4];
                    this.f62682e = i3 + 1;
                    return c22664b;
                }
            }
            m8009a();
            c22664b = null;
            return c22664b;
        }
    }

    public C22641e() {
        this(4, 0.75d);
    }

    public C22641e(int i, double d) {
        this.f62679i = C22650l.m7990a();
        C22649k.m7994a(d, 0.009999999776482582d, 0.9900000095367432d);
        this.f62678h = d;
        if (i > this.f62676f || this.f62671a == null) {
            char[] cArr = this.f62671a;
            int[] iArr = this.f62672b;
            m8003a(C22649k.m7992c(i, d));
            if (cArr == null) {
                return;
            }
            if (size() == 0) {
                return;
            }
            m8000e(cArr, iArr);
        }
    }

    /* renamed from: a */
    public void m8003a(int i) {
        int mo7983d = this.f62679i.mo7983d(i);
        char[] cArr = this.f62671a;
        int[] iArr = this.f62672b;
        int i2 = i + 1;
        try {
            this.f62671a = new char[i2];
            this.f62672b = new int[i2];
            this.f62676f = C22649k.m7993b(i, this.f62678h);
            this.f62673c = mo7983d;
            this.f62675e = i - 1;
        } catch (OutOfMemoryError e) {
            this.f62671a = cArr;
            this.f62672b = iArr;
            throw new C22637b("Not enough memory to allocate buffers for rehashing: %,d -> %,d", e, Integer.valueOf(this.f62675e + 1), Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public int m8002b(char c) {
        return C26232y.m2344i1(c, this.f62673c);
    }

    /* renamed from: c */
    public int m8001c(char c, int i) {
        int i2 = this.f62675e;
        if (c == 0) {
            this.f62677g = true;
            int[] iArr = this.f62672b;
            int i3 = i2 + 1;
            int i4 = iArr[i3];
            iArr[i3] = i;
            return i4;
        }
        char[] cArr = this.f62671a;
        int m2344i1 = C26232y.m2344i1(c, this.f62673c);
        while (true) {
            int i5 = m2344i1 & i2;
            char c2 = cArr[i5];
            if (c2 == 0) {
                if (this.f62674d == this.f62676f) {
                    char[] cArr2 = this.f62671a;
                    int[] iArr2 = this.f62672b;
                    m8003a(C22649k.m7991d(this.f62675e + 1, size(), this.f62678h));
                    cArr2[i5] = c;
                    iArr2[i5] = i;
                    m8000e(cArr2, iArr2);
                } else {
                    cArr[i5] = c;
                    this.f62672b[i5] = i;
                }
                this.f62674d++;
                return 0;
            } else if (c2 == c) {
                int[] iArr3 = this.f62672b;
                int i6 = iArr3[i5];
                iArr3[i5] = i;
                return i6;
            } else {
                m2344i1 = i5 + 1;
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            C22641e c22641e = (C22641e) super.clone();
            c22641e.f62671a = (char[]) this.f62671a.clone();
            c22641e.f62672b = (int[]) this.f62672b.clone();
            c22641e.f62677g = c22641e.f62677g;
            c22641e.f62679i = this.f62679i.mo49518clone();
            return c22641e;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: e */
    public void m8000e(char[] cArr, int[] iArr) {
        int i;
        char[] cArr2 = this.f62671a;
        int[] iArr2 = this.f62672b;
        int i2 = this.f62675e;
        int length = cArr.length - 1;
        cArr2[cArr2.length - 1] = cArr[length];
        iArr2[iArr2.length - 1] = iArr[length];
        while (true) {
            int i3 = length - 1;
            if (i3 >= 0) {
                char c = cArr[i3];
                length = i3;
                if (c != 0) {
                    int m8002b = m8002b(c);
                    while (true) {
                        i = m8002b & i2;
                        if (cArr2[i] == 0) {
                            break;
                        }
                        m8002b = i + 1;
                    }
                    cArr2[i] = c;
                    iArr2[i] = iArr[i3];
                    length = i3;
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0028 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1482g.p1483a.C22641e.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = this.f62677g ? -559038737 : 0;
        C22642a c22642a = new C22642a();
        while (c22642a.hasNext()) {
            C22664b next = c22642a.next();
            i += C26232y.m2348h1(next.f62724b) + C26232y.m2340j1(next.f62725c);
        }
        return i;
    }

    @Override // java.lang.Iterable
    public Iterator<C22664b> iterator() {
        return new C22642a();
    }

    public int size() {
        return this.f62674d + (this.f62677g ? 1 : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[");
        C22642a c22642a = new C22642a();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!c22642a.hasNext()) {
                m8728C.append("]");
                return m8728C.toString();
            }
            C22664b next = c22642a.next();
            if (!z2) {
                m8728C.append(", ");
            }
            m8728C.append(next.f62724b);
            m8728C.append("=>");
            m8728C.append(next.f62725c);
            z = false;
        }
    }
}
