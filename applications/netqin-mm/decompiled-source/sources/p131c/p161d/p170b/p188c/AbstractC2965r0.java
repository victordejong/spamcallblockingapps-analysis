package p131c.p161d.p170b.p188c;

import android.util.Pair;
import p131c.p161d.p170b.p188c.p190b1.p191c0.C2699a;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.r0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/r0.class */
public abstract class AbstractC2965r0 {

    /* renamed from: a */
    public static final AbstractC2965r0 f10677a = new C2966a();

    /* renamed from: c.d.b.c.r0$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/r0$a.class */
    public static final class C2966a extends AbstractC2965r0 {
        @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
        /* renamed from: a */
        public int mo28343a() {
            return 0;
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
        /* renamed from: a */
        public int mo28339a(Object obj) {
            return -1;
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
        /* renamed from: a */
        public C2967b mo28341a(int i, C2967b bVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
        /* renamed from: a */
        public C2968c mo28340a(int i, C2968c cVar, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
        /* renamed from: a */
        public Object mo28342a(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
        /* renamed from: b */
        public int mo28338b() {
            return 0;
        }
    }

    /* renamed from: c.d.b.c.r0$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/r0$b.class */
    public static final class C2967b {

        /* renamed from: a */
        public Object f10678a;

        /* renamed from: b */
        public Object f10679b;

        /* renamed from: c */
        public int f10680c;

        /* renamed from: d */
        public long f10681d;

        /* renamed from: e */
        public long f10682e;

        /* renamed from: f */
        public C2699a f10683f = C2699a.f9854f;

        /* renamed from: a */
        public int m28337a() {
            return this.f10683f.f9855a;
        }

        /* renamed from: a */
        public int m28336a(int i) {
            return this.f10683f.f9857c[i].f9860a;
        }

        /* renamed from: a */
        public int m28334a(long j) {
            return this.f10683f.m29279a(j, this.f10681d);
        }

        /* renamed from: a */
        public long m28335a(int i, int i2) {
            C2699a.C2700a aVar = this.f10683f.f9857c[i];
            return aVar.f9860a != -1 ? aVar.f9863d[i2] : -9223372036854775807L;
        }

        /* renamed from: a */
        public C2967b m28333a(Object obj, Object obj2, int i, long j, long j2) {
            m28332a(obj, obj2, i, j, j2, C2699a.f9854f);
            return this;
        }

        /* renamed from: a */
        public C2967b m28332a(Object obj, Object obj2, int i, long j, long j2, C2699a aVar) {
            this.f10678a = obj;
            this.f10679b = obj2;
            this.f10680c = i;
            this.f10681d = j;
            this.f10682e = j2;
            this.f10683f = aVar;
            return this;
        }

        /* renamed from: b */
        public int m28329b(int i, int i2) {
            return this.f10683f.f9857c[i].m29277a(i2);
        }

        /* renamed from: b */
        public int m28328b(long j) {
            return this.f10683f.m29281a(j);
        }

        /* renamed from: b */
        public long m28331b() {
            return this.f10683f.f9858d;
        }

        /* renamed from: b */
        public long m28330b(int i) {
            return this.f10683f.f9856b[i];
        }

        /* renamed from: c */
        public int m28326c(int i) {
            return this.f10683f.f9857c[i].m29278a();
        }

        /* renamed from: c */
        public long m28327c() {
            return this.f10681d;
        }

        /* renamed from: c */
        public boolean m28325c(int i, int i2) {
            C2699a.C2700a aVar = this.f10683f.f9857c[i];
            return (aVar.f9860a == -1 || aVar.f9862c[i2] == 0) ? false : true;
        }

        /* renamed from: d */
        public long m28324d() {
            return C2964r.m28356b(this.f10682e);
        }

        /* renamed from: d */
        public boolean m28323d(int i) {
            return !this.f10683f.f9857c[i].m29276b();
        }

        /* renamed from: e */
        public long m28322e() {
            return this.f10682e;
        }
    }

    /* renamed from: c.d.b.c.r0$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/r0$c.class */
    public static final class C2968c {

        /* renamed from: k */
        public static final Object f10684k = new Object();

        /* renamed from: a */
        public Object f10685a = f10684k;

        /* renamed from: b */
        public Object f10686b;

        /* renamed from: c */
        public Object f10687c;

        /* renamed from: d */
        public boolean f10688d;

        /* renamed from: e */
        public boolean f10689e;

        /* renamed from: f */
        public int f10690f;

        /* renamed from: g */
        public int f10691g;

        /* renamed from: h */
        public long f10692h;

        /* renamed from: i */
        public long f10693i;

        /* renamed from: j */
        public long f10694j;

        /* renamed from: a */
        public long m28321a() {
            return C2964r.m28356b(this.f10692h);
        }

        /* renamed from: a */
        public C2968c m28320a(Object obj, Object obj2, Object obj3, long j, long j2, boolean z, boolean z2, boolean z3, long j3, long j4, int i, int i2, long j5) {
            this.f10685a = obj;
            this.f10686b = obj2;
            this.f10687c = obj3;
            this.f10688d = z;
            this.f10689e = z2;
            this.f10692h = j3;
            this.f10693i = j4;
            this.f10690f = i;
            this.f10691g = i2;
            this.f10694j = j5;
            return this;
        }

        /* renamed from: b */
        public long m28319b() {
            return this.f10692h;
        }

        /* renamed from: c */
        public long m28318c() {
            return C2964r.m28356b(this.f10693i);
        }

        /* renamed from: d */
        public long m28317d() {
            return this.f10694j;
        }
    }

    /* renamed from: a */
    public abstract int mo28343a();

    /* renamed from: a */
    public int m28355a(int i, int i2, boolean z) {
        if (i2 == 0) {
            return i == m28345b(z) ? -1 : i + 1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 == 2) {
                return i == m28345b(z) ? m28348a(z) : i + 1;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final int m28353a(int i, C2967b bVar, C2968c cVar, int i2, boolean z) {
        int i3 = m28354a(i, bVar).f10680c;
        if (m28352a(i3, cVar).f10691g != i) {
            return i + 1;
        }
        int a = m28355a(i3, i2, z);
        if (a == -1) {
            return -1;
        }
        return m28352a(a, cVar).f10690f;
    }

    /* renamed from: a */
    public abstract int mo28339a(Object obj);

    /* renamed from: a */
    public int m28348a(boolean z) {
        return m28344c() ? -1 : 0;
    }

    /* renamed from: a */
    public final Pair<Object, Long> m28351a(C2968c cVar, C2967b bVar, int i, long j) {
        Pair<Object, Long> a = m28350a(cVar, bVar, i, j, 0L);
        C2877e.m28737a(a);
        return a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<java.lang.Object, java.lang.Long> m28350a(p131c.p161d.p170b.p188c.AbstractC2965r0.C2968c r7, p131c.p161d.p170b.p188c.AbstractC2965r0.C2967b r8, int r9, long r10, long r12) {
        /*
            r6 = this;
            r0 = r9
            r1 = 0
            r2 = r6
            int r2 = r2.mo28338b()
            int r0 = p131c.p161d.p170b.p188c.p203g1.C2877e.m28738a(r0, r1, r2)
            r0 = r6
            r1 = r9
            r2 = r7
            r3 = r12
            c.d.b.c.r0$c r0 = r0.mo28340a(r1, r2, r3)
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0035
            r0 = r7
            long r0 = r0.m28319b()
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0035
            r0 = 0
            return r0
        L_0x0035:
            r0 = r7
            int r0 = r0.f10690f
            r9 = r0
            r0 = r7
            long r0 = r0.m28317d()
            r1 = r12
            long r0 = r0 + r1
            r12 = r0
            r0 = r6
            r1 = r9
            r2 = r8
            r3 = 1
            c.d.b.c.r0$b r0 = r0.mo28341a(r1, r2, r3)
            long r0 = r0.m28327c()
            r10 = r0
        L_0x004f:
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0081
            r0 = r12
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0081
            r0 = r9
            r1 = r7
            int r1 = r1.f10691g
            if (r0 >= r1) goto L_0x0081
            r0 = r12
            r1 = r10
            long r0 = r0 - r1
            r12 = r0
            int r9 = r9 + 1
            r0 = r6
            r1 = r9
            r2 = r8
            r3 = 1
            c.d.b.c.r0$b r0 = r0.mo28341a(r1, r2, r3)
            long r0 = r0.m28327c()
            r10 = r0
            goto L_0x004f
        L_0x0081:
            r0 = r8
            java.lang.Object r0 = r0.f10679b
            r7 = r0
            r0 = r7
            java.lang.Object r0 = p131c.p161d.p170b.p188c.p203g1.C2877e.m28737a(r0)
            r0 = r7
            r1 = r12
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.AbstractC2965r0.m28350a(c.d.b.c.r0$c, c.d.b.c.r0$b, int, long, long):android.util.Pair");
    }

    /* renamed from: a */
    public final C2967b m28354a(int i, C2967b bVar) {
        return mo28341a(i, bVar, false);
    }

    /* renamed from: a */
    public abstract C2967b mo28341a(int i, C2967b bVar, boolean z);

    /* renamed from: a */
    public C2967b m28349a(Object obj, C2967b bVar) {
        return mo28341a(mo28339a(obj), bVar, true);
    }

    /* renamed from: a */
    public final C2968c m28352a(int i, C2968c cVar) {
        return mo28340a(i, cVar, 0L);
    }

    /* renamed from: a */
    public abstract C2968c mo28340a(int i, C2968c cVar, long j);

    /* renamed from: a */
    public abstract Object mo28342a(int i);

    /* renamed from: b */
    public abstract int mo28338b();

    /* renamed from: b */
    public int m28347b(int i, int i2, boolean z) {
        if (i2 == 0) {
            return i == m28348a(z) ? -1 : i - 1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 == 2) {
                return i == m28348a(z) ? m28345b(z) : i - 1;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: b */
    public int m28345b(boolean z) {
        return m28344c() ? -1 : mo28338b() - 1;
    }

    /* renamed from: b */
    public final boolean m28346b(int i, C2967b bVar, C2968c cVar, int i2, boolean z) {
        return m28353a(i, bVar, cVar, i2, z) == -1;
    }

    /* renamed from: c */
    public final boolean m28344c() {
        return mo28338b() == 0;
    }
}
