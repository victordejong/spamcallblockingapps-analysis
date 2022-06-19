package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.source.r */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/r.class */
public final class C1837r extends AbstractC1765d<Void> {

    /* renamed from: a */
    C1839b f7344a;

    /* renamed from: b */
    private final AbstractC1842t f7345b;

    /* renamed from: c */
    private final boolean f7346c;

    /* renamed from: d */
    private final AbstractC1383al.C1386b f7347d = new AbstractC1383al.C1386b();

    /* renamed from: e */
    private final AbstractC1383al.C1385a f7348e = new AbstractC1383al.C1385a();

    /* renamed from: f */
    private C1835q f7349f;

    /* renamed from: g */
    private AbstractC1845u.C1846a f7350g;

    /* renamed from: h */
    private boolean f7351h;

    /* renamed from: i */
    private boolean f7352i;

    /* renamed from: androidx.media2.exoplayer.external.source.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/r$a.class */
    public static final class C1838a extends AbstractC1383al {

        /* renamed from: b */
        private final Object f7353b;

        public C1838a(Object obj) {
            this.f7353b = obj;
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final int mo42088a(Object obj) {
            return obj == C1839b.f7354c ? 0 : -1;
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final AbstractC1383al.C1385a mo42091a(int i, AbstractC1383al.C1385a c1385a, boolean z) {
            return c1385a.m43085a(0, C1839b.f7354c, -9223372036854775807L, 0L);
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final AbstractC1383al.C1386b mo42095a(int i, AbstractC1383al.C1386b c1386b, long j) {
            return c1386b.m43079a(this.f7353b, null, -9223372036854775807L, -9223372036854775807L, false, true, 0L, -9223372036854775807L, 0L);
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final Object mo42092a(int i) {
            return C1839b.f7354c;
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: b */
        public final int mo42094b() {
            return 1;
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: c */
        public final int mo42093c() {
            return 1;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.r$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/r$b.class */
    public static final class C1839b extends AbstractC1832o {

        /* renamed from: c */
        public static final Object f7354c = new Object();

        /* renamed from: d */
        final Object f7355d;

        C1839b(AbstractC1383al abstractC1383al, Object obj) {
            super(abstractC1383al);
            this.f7355d = obj;
        }

        /* renamed from: a */
        public static C1839b m42090a(AbstractC1383al abstractC1383al, Object obj) {
            return new C1839b(abstractC1383al, obj);
        }

        /* renamed from: b */
        public static C1839b m42087b(Object obj) {
            return new C1839b(new C1838a(obj), f7354c);
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1832o, androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final int mo42088a(Object obj) {
            AbstractC1383al abstractC1383al = this.f7329b;
            Object obj2 = obj;
            if (f7354c.equals(obj)) {
                obj2 = this.f7355d;
            }
            return abstractC1383al.mo42088a(obj2);
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1832o, androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final AbstractC1383al.C1385a mo42091a(int i, AbstractC1383al.C1385a c1385a, boolean z) {
            this.f7329b.mo42091a(i, c1385a, z);
            if (C1996ac.m41658a(c1385a.f5205b, this.f7355d)) {
                c1385a.f5205b = f7354c;
            }
            return c1385a;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1832o, androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final Object mo42092a(int i) {
            Object mo42092a = this.f7329b.mo42092a(i);
            Object obj = mo42092a;
            if (C1996ac.m41658a(mo42092a, this.f7355d)) {
                obj = f7354c;
            }
            return obj;
        }
    }

    public C1837r(AbstractC1842t abstractC1842t, boolean z) {
        this.f7345b = abstractC1842t;
        this.f7346c = z;
        this.f7344a = C1839b.m42087b(abstractC1842t.mo42066e());
    }

    /* renamed from: d */
    private Object m42096d(Object obj) {
        Object obj2 = obj;
        if (obj.equals(C1839b.f7354c)) {
            obj2 = this.f7344a.f7355d;
        }
        return obj2;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    protected final /* synthetic */ AbstractC1842t.C1843a mo42101a(Void r4, AbstractC1842t.C1843a c1843a) {
        Object obj = c1843a.f7356a;
        Object obj2 = obj;
        if (this.f7344a.f7355d.equals(obj)) {
            obj2 = C1839b.f7354c;
        }
        return c1843a.m42063a(obj2);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42073a(AbstractC1840s abstractC1840s) {
        ((C1835q) abstractC1840s).m42104f();
        if (abstractC1840s == this.f7349f) {
            ((AbstractC1845u.C1846a) C1993a.m41690a(this.f7350g)).m42040b();
            this.f7350g = null;
            this.f7349f = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    public final void mo42102a(AbstractC1990w abstractC1990w) {
        super.mo42102a(abstractC1990w);
        if (!this.f7346c) {
            this.f7351h = true;
            m42278a((C1837r) null, this.f7345b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0059, code lost:
        if (r13 != 0) goto L13;
     */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ void mo42100a(java.lang.Void r8, androidx.media2.exoplayer.external.source.AbstractC1842t r9, androidx.media2.exoplayer.external.AbstractC1383al r10) {
        /*
            r7 = this;
            r0 = r7
            boolean r0 = r0.f7352i
            if (r0 == 0) goto L1d
            r0 = r7
            androidx.media2.exoplayer.external.source.r$b r1 = new androidx.media2.exoplayer.external.source.r$b
            r2 = r1
            r3 = r10
            r4 = r7
            androidx.media2.exoplayer.external.source.r$b r4 = r4.f7344a
            java.lang.Object r4 = r4.f7355d
            r2.<init>(r3, r4)
            r0.f7344a = r1
            goto Lb2
        L1d:
            r0 = r10
            boolean r0 = r0.m43094a()
            if (r0 == 0) goto L32
            r0 = r7
            r1 = r10
            java.lang.Object r2 = androidx.media2.exoplayer.external.source.C1837r.C1839b.f7354c
            androidx.media2.exoplayer.external.source.r$b r1 = androidx.media2.exoplayer.external.source.C1837r.C1839b.m42090a(r1, r2)
            r0.f7344a = r1
            goto Lb2
        L32:
            r0 = r10
            r1 = 0
            r2 = r7
            androidx.media2.exoplayer.external.al$b r2 = r2.f7347d
            r3 = 0
            androidx.media2.exoplayer.external.al$b r0 = r0.mo42095a(r1, r2, r3)
            r0 = r7
            androidx.media2.exoplayer.external.al$b r0 = r0.f7347d
            long r0 = r0.f5218i
            r11 = r0
            r0 = r7
            androidx.media2.exoplayer.external.source.q r0 = r0.f7349f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5f
            r0 = r8
            long r0 = r0.f7337c
            r13 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L5f
            goto L63
        L5f:
            r0 = r11
            r13 = r0
        L63:
            r0 = r10
            r1 = r7
            androidx.media2.exoplayer.external.al$b r1 = r1.f7347d
            r2 = r7
            androidx.media2.exoplayer.external.al$a r2 = r2.f7348e
            r3 = 0
            r4 = r13
            android.util.Pair r0 = r0.m43092a(r1, r2, r3, r4)
            r9 = r0
            r0 = r9
            java.lang.Object r0 = r0.first
            r8 = r0
            r0 = r9
            java.lang.Object r0 = r0.second
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r13 = r0
            r0 = r7
            r1 = r10
            r2 = r8
            androidx.media2.exoplayer.external.source.r$b r1 = androidx.media2.exoplayer.external.source.C1837r.C1839b.m42090a(r1, r2)
            r0.f7344a = r1
            r0 = r7
            androidx.media2.exoplayer.external.source.q r0 = r0.f7349f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Lb2
            r0 = r8
            r1 = r13
            r0.f7339e = r1
            r0 = r8
            r1 = r8
            androidx.media2.exoplayer.external.source.t$a r1 = r1.f7336b
            r2 = r7
            r3 = r8
            androidx.media2.exoplayer.external.source.t$a r3 = r3.f7336b
            java.lang.Object r3 = r3.f7356a
            java.lang.Object r2 = r2.m42096d(r3)
            androidx.media2.exoplayer.external.source.t$a r1 = r1.m42063a(r2)
            r0.m42106a(r1)
        Lb2:
            r0 = r7
            r1 = 1
            r0.f7352i = r1
            r0 = r7
            r1 = r7
            androidx.media2.exoplayer.external.source.r$b r1 = r1.f7344a
            r0.m42285a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.C1837r.mo42100a(java.lang.Object, androidx.media2.exoplayer.external.source.t, androidx.media2.exoplayer.external.al):void");
    }

    /* renamed from: b */
    public final C1835q mo42072a(AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
        C1835q c1835q = new C1835q(this.f7345b, c1843a, abstractC1963b, j);
        if (this.f7352i) {
            c1835q.m42106a(c1843a.m42063a(m42096d(c1843a.f7356a)));
        } else {
            this.f7349f = c1835q;
            AbstractC1845u.C1846a a = m42286a(0, c1843a);
            this.f7350g = a;
            a.m42054a();
            if (!this.f7351h) {
                this.f7351h = true;
                m42278a((C1837r) null, this.f7345b);
            }
        }
        return c1835q;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: b */
    protected final boolean mo42099b(AbstractC1842t.C1843a c1843a) {
        C1835q c1835q = this.f7349f;
        return c1835q == null || !c1843a.equals(c1835q.f7336b);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: c */
    public final void mo42097c() {
        this.f7352i = false;
        this.f7351h = false;
        super.mo42097c();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: e */
    public final Object mo42066e() {
        return this.f7345b.mo42066e();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: f */
    public final void mo42065f() throws IOException {
    }
}
