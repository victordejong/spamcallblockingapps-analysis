package p1727n3.p1874y.p1876b.p1877a;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Pair;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.p1896o0.C27348a;
/* renamed from: n3.y.b.a.l0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/l0.class */
public abstract class AbstractC27096l0 {

    /* renamed from: a */
    public static final AbstractC27096l0 f75737a = new C27097a();

    /* renamed from: n3.y.b.a.l0$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/l0$a.class */
    public class C27097a extends AbstractC27096l0 {
        @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
        /* renamed from: b */
        public int mo541b(Object obj) {
            return -1;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
        /* renamed from: g */
        public C27098b mo538g(int i, C27098b c27098b, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
        /* renamed from: i */
        public int mo907i() {
            return 0;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
        /* renamed from: l */
        public Object mo536l(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
        /* renamed from: n */
        public C27099c mo535n(int i, C27099c c27099c, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0
        /* renamed from: o */
        public int mo906o() {
            return 0;
        }
    }

    /* renamed from: n3.y.b.a.l0$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/l0$b.class */
    public static final class C27098b {

        /* renamed from: a */
        public Object f75738a;

        /* renamed from: b */
        public Object f75739b;

        /* renamed from: c */
        public int f75740c;

        /* renamed from: d */
        public long f75741d;

        /* renamed from: e */
        public long f75742e;

        /* renamed from: f */
        public C27348a f75743f = C27348a.f76972e;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* renamed from: a */
        public long m905a(int i, int i2) {
            C27348a.C27349a c27349a = this.f75743f.f76975c[i];
            return c27349a.f76977a != -1 ? c27349a.f76980d[i2] : (char) 1;
        }

        /* renamed from: b */
        public int m904b(long j) {
            C27348a c27348a = this.f75743f;
            long j2 = this.f75741d;
            Objects.requireNonNull(c27348a);
            int i = -1;
            if (j != Long.MIN_VALUE) {
                if (j2 == -9223372036854775807L || j < j2) {
                    int i2 = 0;
                    while (true) {
                        long[] jArr = c27348a.f76974b;
                        if (i2 >= jArr.length || jArr[i2] == Long.MIN_VALUE || (j < jArr[i2] && c27348a.f76975c[i2].m469b())) {
                            break;
                        }
                        i2++;
                    }
                    i = -1;
                    if (i2 < c27348a.f76974b.length) {
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
        public int m903c(long r6) {
            /*
                r5 = this;
                r0 = r5
                n3.y.b.a.t0.o0.a r0 = r0.f75743f
                r8 = r0
                r0 = r8
                long[] r0 = r0.f76974b
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
                long[] r0 = r0.f76974b
                r1 = r9
                r0 = r0[r1]
                r11 = r0
                r0 = r11
                r1 = -9223372036854775808
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L4c
                r0 = r8
                long r0 = r0.f76976d
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
                n3.y.b.a.t0.o0.a$a[] r0 = r0.f76975c
                r1 = r9
                r0 = r0[r1]
                boolean r0 = r0.m469b()
                if (r0 == 0) goto L76
                goto L79
            L76:
                r0 = -1
                r9 = r0
            L79:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0.C27098b.m903c(long):int");
        }

        /* renamed from: d */
        public int m902d(int i) {
            return this.f75743f.f76975c[i].m470a(-1);
        }

        /* renamed from: e */
        public boolean m901e(int i, int i2) {
            C27348a.C27349a c27349a = this.f75743f.f76975c[i];
            return (c27349a.f76977a == -1 || c27349a.f76979c[i2] == 0) ? false : true;
        }

        /* renamed from: f */
        public C27098b m900f(Object obj, Object obj2, int i, long j, long j2) {
            C27348a c27348a = C27348a.f76972e;
            this.f75738a = obj;
            this.f75739b = obj2;
            this.f75740c = i;
            this.f75741d = j;
            this.f75742e = j2;
            this.f75743f = c27348a;
            return this;
        }
    }

    /* renamed from: n3.y.b.a.l0$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/l0$c.class */
    public static final class C27099c {

        /* renamed from: a */
        public Object f75744a;

        /* renamed from: b */
        public Object f75745b;

        /* renamed from: c */
        public long f75746c;

        /* renamed from: d */
        public long f75747d;

        /* renamed from: e */
        public boolean f75748e;

        /* renamed from: f */
        public boolean f75749f;

        /* renamed from: g */
        public int f75750g;

        /* renamed from: h */
        public int f75751h;

        /* renamed from: i */
        public long f75752i;

        /* renamed from: j */
        public long f75753j;

        /* renamed from: k */
        public long f75754k;

        /* renamed from: a */
        public C27099c m899a(Object obj, Object obj2, long j, long j2, boolean z, boolean z2, long j3, long j4, int i, int i2, long j5) {
            this.f75744a = obj;
            this.f75745b = obj2;
            this.f75746c = j;
            this.f75747d = j2;
            this.f75748e = z;
            this.f75749f = z2;
            this.f75752i = j3;
            this.f75753j = j4;
            this.f75750g = i;
            this.f75751h = i2;
            this.f75754k = j5;
            return this;
        }
    }

    /* renamed from: a */
    public int mo542a(boolean z) {
        return m908p() ? -1 : 0;
    }

    /* renamed from: b */
    public abstract int mo541b(Object obj);

    /* renamed from: c */
    public int mo540c(boolean z) {
        return m908p() ? -1 : mo906o() - 1;
    }

    /* renamed from: d */
    public final int m913d(int i, C27098b c27098b, C27099c c27099c, int i2, boolean z) {
        int i3 = mo538g(i, c27098b, false).f75740c;
        if (m909m(i3, c27099c).f75751h == i) {
            int mo539e = mo539e(i3, i2, z);
            if (mo539e != -1) {
                return m909m(mo539e, c27099c).f75750g;
            }
            return -1;
        }
        return i + 1;
    }

    /* renamed from: e */
    public int mo539e(int i, int i2, boolean z) {
        if (i2 == 0) {
            return i == mo540c(z) ? -1 : i + 1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException();
            }
            return i == mo540c(z) ? mo542a(z) : i + 1;
        }
    }

    /* renamed from: f */
    public final C27098b m912f(int i, C27098b c27098b) {
        return mo538g(i, c27098b, false);
    }

    /* renamed from: g */
    public abstract C27098b mo538g(int i, C27098b c27098b, boolean z);

    /* renamed from: h */
    public C27098b mo537h(Object obj, C27098b c27098b) {
        return mo538g(mo541b(obj), c27098b, true);
    }

    /* renamed from: i */
    public abstract int mo907i();

    /* renamed from: j */
    public final Pair<Object, Long> m911j(C27099c c27099c, C27098b c27098b, int i, long j) {
        Pair<Object, Long> m910k = m910k(c27099c, c27098b, i, j, 0L);
        Objects.requireNonNull(m910k);
        return m910k;
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
    public final Pair<Object, Long> m910k(C27099c c27099c, C27098b c27098b, int i, long j, long j2) {
        MediaSessionCompat.m43202s(i, 0, mo906o());
        mo535n(i, c27099c, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            ?? r0 = c27099c.f75752i;
            c = r0;
            if (r0 == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = c27099c.f75750g;
        char c2 = c27099c.f75754k + c;
        ?? r02 = mo538g(i2, c27098b, true).f75741d;
        while (true) {
            char c3 = r02;
            if (c3 == -9223372036854775807L || c2 < c3 || i2 >= c27099c.f75751h) {
                break;
            }
            c2 -= c3;
            i2++;
            r02 = mo538g(i2, c27098b, true).f75741d;
        }
        Object obj = c27098b.f75739b;
        Objects.requireNonNull(obj);
        return Pair.create(obj, Long.valueOf(c2));
    }

    /* renamed from: l */
    public abstract Object mo536l(int i);

    /* renamed from: m */
    public final C27099c m909m(int i, C27099c c27099c) {
        return mo535n(i, c27099c, 0L);
    }

    /* renamed from: n */
    public abstract C27099c mo535n(int i, C27099c c27099c, long j);

    /* renamed from: o */
    public abstract int mo906o();

    /* renamed from: p */
    public final boolean m908p() {
        return mo906o() == 0;
    }
}
