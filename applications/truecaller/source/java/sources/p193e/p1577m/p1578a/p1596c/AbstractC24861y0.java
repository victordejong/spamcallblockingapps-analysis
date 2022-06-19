package p193e.p1577m.p1578a.p1596c;

import android.util.Pair;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1620l1.p1621a0.C24512a;
/* renamed from: e.m.a.c.y0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/y0.class */
public abstract class AbstractC24861y0 {

    /* renamed from: a */
    public static final AbstractC24861y0 f69725a = new C24862a();

    /* renamed from: e.m.a.c.y0$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/y0$a.class */
    public static final class C24862a extends AbstractC24861y0 {
        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24861y0
        /* renamed from: b */
        public int mo4361b(Object obj) {
            return -1;
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24861y0
        /* renamed from: g */
        public C24863b mo4360g(int i, C24863b c24863b, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24861y0
        /* renamed from: i */
        public int mo4359i() {
            return 0;
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24861y0
        /* renamed from: l */
        public Object mo4358l(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24861y0
        /* renamed from: n */
        public C24864c mo4357n(int i, C24864c c24864c, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24861y0
        /* renamed from: o */
        public int mo4356o() {
            return 0;
        }
    }

    /* renamed from: e.m.a.c.y0$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/y0$b.class */
    public static final class C24863b {

        /* renamed from: a */
        public Object f69726a;

        /* renamed from: b */
        public int f69727b;

        /* renamed from: c */
        public long f69728c;

        /* renamed from: d */
        public long f69729d;

        /* renamed from: e */
        public C24512a f69730e = C24512a.f68451e;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* renamed from: a */
        public long m4355a(int i, int i2) {
            C24512a.C24513a c24513a = this.f69730e.f68454c[i];
            return c24513a.f68456a != -1 ? c24513a.f68459d[i2] : (char) 1;
        }

        /* renamed from: b */
        public int m4354b(long j) {
            C24512a c24512a = this.f69730e;
            long j2 = this.f69728c;
            Objects.requireNonNull(c24512a);
            int i = -1;
            if (j != Long.MIN_VALUE) {
                if (j2 == -9223372036854775807L || j < j2) {
                    int i2 = 0;
                    while (true) {
                        long[] jArr = c24512a.f68453b;
                        if (i2 >= jArr.length || jArr[i2] == Long.MIN_VALUE || (j < jArr[i2] && c24512a.f68454c[i2].m4981b())) {
                            break;
                        }
                        i2++;
                    }
                    i = -1;
                    if (i2 < c24512a.f68453b.length) {
                        i = i2;
                    }
                } else {
                    i = -1;
                }
            }
            return i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
            if (r6 >= r0) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
            if (r6 < r0) goto L15;
         */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m4353c(long r6) {
            /*
                r5 = this;
                r0 = r5
                e.m.a.c.l1.a0.a r0 = r0.f69730e
                r8 = r0
                r0 = r8
                long[] r0 = r0.f68453b
                int r0 = r0.length
                r1 = 1
                int r0 = r0 - r1
                r9 = r0
            Le:
                r0 = r9
                if (r0 < 0) goto L61
                r0 = 0
                r10 = r0
                r0 = r6
                r1 = -9223372036854775808
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L21
                goto L56
            L21:
                r0 = r8
                long[] r0 = r0.f68453b
                r1 = r9
                r0 = r0[r1]
                r11 = r0
                r0 = r11
                r1 = -9223372036854775808
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L4c
                r0 = r8
                long r0 = r0.f68455d
                r11 = r0
                r0 = r11
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L53
                r0 = r6
                r1 = r11
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L56
                goto L53
            L4c:
                r0 = r6
                r1 = r11
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L56
            L53:
                r0 = 1
                r10 = r0
            L56:
                r0 = r10
                if (r0 == 0) goto L61
                int r9 = r9 + (-1)
                goto Le
            L61:
                r0 = r9
                if (r0 < 0) goto L76
                r0 = r8
                e.m.a.c.l1.a0.a$a[] r0 = r0.f68454c
                r1 = r9
                r0 = r0[r1]
                boolean r0 = r0.m4981b()
                if (r0 == 0) goto L76
                goto L79
            L76:
                r0 = -1
                r9 = r0
            L79:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.AbstractC24861y0.C24863b.m4353c(long):int");
        }

        /* renamed from: d */
        public long m4352d(int i) {
            return this.f69730e.f68453b[i];
        }

        /* renamed from: e */
        public int m4351e(int i) {
            return this.f69730e.f68454c[i].m4982a(-1);
        }

        /* renamed from: f */
        public boolean m4350f(int i, int i2) {
            C24512a.C24513a c24513a = this.f69730e.f68454c[i];
            return (c24513a.f68456a == -1 || c24513a.f68458c[i2] == 0) ? false : true;
        }
    }

    /* renamed from: e.m.a.c.y0$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/y0$c.class */
    public static final class C24864c {

        /* renamed from: l */
        public static final Object f69731l = new Object();

        /* renamed from: a */
        public Object f69732a = f69731l;

        /* renamed from: b */
        public Object f69733b;

        /* renamed from: c */
        public Object f69734c;

        /* renamed from: d */
        public boolean f69735d;

        /* renamed from: e */
        public boolean f69736e;

        /* renamed from: f */
        public boolean f69737f;

        /* renamed from: g */
        public int f69738g;

        /* renamed from: h */
        public int f69739h;

        /* renamed from: i */
        public long f69740i;

        /* renamed from: j */
        public long f69741j;

        /* renamed from: k */
        public long f69742k;

        /* renamed from: a */
        public long m4349a() {
            return C24854v.m4382b(this.f69741j);
        }
    }

    /* renamed from: a */
    public int m4371a() {
        return m4362p() ? -1 : 0;
    }

    /* renamed from: b */
    public abstract int mo4361b(Object obj);

    /* renamed from: c */
    public int m4370c() {
        return m4362p() ? -1 : mo4356o() - 1;
    }

    /* renamed from: d */
    public final int m4369d(int i, C24863b c24863b, C24864c c24864c, int i2, boolean z) {
        int i3 = mo4360g(i, c24863b, false).f69727b;
        if (m4363m(i3, c24864c).f69739h == i) {
            int m4368e = m4368e(i3, i2, z);
            if (m4368e != -1) {
                return m4363m(m4368e, c24864c).f69738g;
            }
            return -1;
        }
        return i + 1;
    }

    /* renamed from: e */
    public int m4368e(int i, int i2, boolean z) {
        if (i2 == 0) {
            return i == m4370c() ? -1 : i + 1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException();
            }
            return i == m4370c() ? m4371a() : i + 1;
        }
    }

    /* renamed from: f */
    public final C24863b m4367f(int i, C24863b c24863b) {
        return mo4360g(i, c24863b, false);
    }

    /* renamed from: g */
    public abstract C24863b mo4360g(int i, C24863b c24863b, boolean z);

    /* renamed from: h */
    public C24863b m4366h(Object obj, C24863b c24863b) {
        return mo4360g(mo4361b(obj), c24863b, true);
    }

    /* renamed from: i */
    public abstract int mo4359i();

    /* renamed from: j */
    public final Pair<Object, Long> m4365j(C24864c c24864c, C24863b c24863b, int i, long j) {
        Pair<Object, Long> m4364k = m4364k(c24864c, c24863b, i, j, 0L);
        Objects.requireNonNull(m4364k);
        return m4364k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* renamed from: k */
    public final Pair<Object, Long> m4364k(C24864c c24864c, C24863b c24863b, int i, long j, long j2) {
        C26232y.m2290w(i, 0, mo4356o());
        mo4357n(i, c24864c, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            ?? r0 = c24864c.f69740i;
            c = r0;
            if (r0 == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = c24864c.f69738g;
        char c2 = c24864c.f69742k + c;
        ?? r02 = mo4360g(i2, c24863b, true).f69728c;
        while (true) {
            char c3 = r02;
            if (c3 == -9223372036854775807L || c2 < c3 || i2 >= c24864c.f69739h) {
                break;
            }
            c2 -= c3;
            i2++;
            r02 = mo4360g(i2, c24863b, true).f69728c;
        }
        Object obj = c24863b.f69726a;
        Objects.requireNonNull(obj);
        return Pair.create(obj, Long.valueOf(c2));
    }

    /* renamed from: l */
    public abstract Object mo4358l(int i);

    /* renamed from: m */
    public final C24864c m4363m(int i, C24864c c24864c) {
        return mo4357n(i, c24864c, 0L);
    }

    /* renamed from: n */
    public abstract C24864c mo4357n(int i, C24864c c24864c, long j);

    /* renamed from: o */
    public abstract int mo4356o();

    /* renamed from: p */
    public final boolean m4362p() {
        return mo4356o() == 0;
    }
}
