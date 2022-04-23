package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.w;
import androidx.media2.exoplayer.external.util.ac;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/r.class */
public final class r extends d<Void> {

    /* renamed from: a  reason: collision with root package name */
    b f3741a;

    /* renamed from: b  reason: collision with root package name */
    private final t f3742b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f3743c;

    /* renamed from: d  reason: collision with root package name */
    private final al.b f3744d = new al.b();
    private final al.a e = new al.a();
    private q f;
    private u.a g;
    private boolean h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/r$a.class */
    public static final class a extends al {

        /* renamed from: b  reason: collision with root package name */
        private final Object f3745b;

        public a(Object obj) {
            this.f3745b = obj;
        }

        @Override // androidx.media2.exoplayer.external.al
        public final int a(Object obj) {
            return obj == b.f3746c ? 0 : -1;
        }

        @Override // androidx.media2.exoplayer.external.al
        public final al.a a(int i, al.a aVar, boolean z) {
            return aVar.a(0, b.f3746c, -9223372036854775807L, 0L);
        }

        @Override // androidx.media2.exoplayer.external.al
        public final al.b a(int i, al.b bVar, long j) {
            return bVar.a(this.f3745b, null, -9223372036854775807L, -9223372036854775807L, false, true, 0L, -9223372036854775807L, 0L);
        }

        @Override // androidx.media2.exoplayer.external.al
        public final Object a(int i) {
            return b.f3746c;
        }

        @Override // androidx.media2.exoplayer.external.al
        public final int b() {
            return 1;
        }

        @Override // androidx.media2.exoplayer.external.al
        public final int c() {
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/r$b.class */
    public static final class b extends o {

        /* renamed from: c  reason: collision with root package name */
        public static final Object f3746c = new Object();

        /* renamed from: d  reason: collision with root package name */
        final Object f3747d;

        b(al alVar, Object obj) {
            super(alVar);
            this.f3747d = obj;
        }

        public static b a(al alVar, Object obj) {
            return new b(alVar, obj);
        }

        public static b b(Object obj) {
            return new b(new a(obj), f3746c);
        }

        @Override // androidx.media2.exoplayer.external.source.o, androidx.media2.exoplayer.external.al
        public final int a(Object obj) {
            al alVar = this.f3732b;
            Object obj2 = obj;
            if (f3746c.equals(obj)) {
                obj2 = this.f3747d;
            }
            return alVar.a(obj2);
        }

        @Override // androidx.media2.exoplayer.external.source.o, androidx.media2.exoplayer.external.al
        public final al.a a(int i, al.a aVar, boolean z) {
            this.f3732b.a(i, aVar, z);
            if (ac.a(aVar.f2831b, this.f3747d)) {
                aVar.f2831b = f3746c;
            }
            return aVar;
        }

        @Override // androidx.media2.exoplayer.external.source.o, androidx.media2.exoplayer.external.al
        public final Object a(int i) {
            Object a2 = this.f3732b.a(i);
            Object obj = a2;
            if (ac.a(a2, this.f3747d)) {
                obj = f3746c;
            }
            return obj;
        }
    }

    public r(t tVar, boolean z) {
        this.f3742b = tVar;
        this.f3743c = z;
        this.f3741a = b.b(tVar.e());
    }

    private Object d(Object obj) {
        Object obj2 = obj;
        if (obj.equals(b.f3746c)) {
            obj2 = this.f3741a.f3747d;
        }
        return obj2;
    }

    @Override // androidx.media2.exoplayer.external.source.d
    protected final /* synthetic */ t.a a(Void r4, t.a aVar) {
        Object obj = aVar.f3748a;
        Object obj2 = obj;
        if (this.f3741a.f3747d.equals(obj)) {
            obj2 = b.f3746c;
        }
        return aVar.a(obj2);
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(s sVar) {
        ((q) sVar).f();
        if (sVar == this.f) {
            ((u.a) androidx.media2.exoplayer.external.util.a.a(this.g)).b();
            this.g = null;
            this.f = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void a(w wVar) {
        super.a(wVar);
        if (!this.f3743c) {
            this.h = true;
            a((r) null, this.f3742b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0059, code lost:
        if (r13 != 0) goto L_0x0063;
     */
    @Override // androidx.media2.exoplayer.external.source.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ void a(java.lang.Void r8, androidx.media2.exoplayer.external.source.t r9, androidx.media2.exoplayer.external.al r10) {
        /*
            r7 = this;
            r0 = r7
            boolean r0 = r0.i
            if (r0 == 0) goto L_0x001d
            r0 = r7
            androidx.media2.exoplayer.external.source.r$b r1 = new androidx.media2.exoplayer.external.source.r$b
            r2 = r1
            r3 = r10
            r4 = r7
            androidx.media2.exoplayer.external.source.r$b r4 = r4.f3741a
            java.lang.Object r4 = r4.f3747d
            r2.<init>(r3, r4)
            r0.f3741a = r1
            goto L_0x00b2
        L_0x001d:
            r0 = r10
            boolean r0 = r0.a()
            if (r0 == 0) goto L_0x0032
            r0 = r7
            r1 = r10
            java.lang.Object r2 = androidx.media2.exoplayer.external.source.r.b.f3746c
            androidx.media2.exoplayer.external.source.r$b r1 = androidx.media2.exoplayer.external.source.r.b.a(r1, r2)
            r0.f3741a = r1
            goto L_0x00b2
        L_0x0032:
            r0 = r10
            r1 = 0
            r2 = r7
            androidx.media2.exoplayer.external.al$b r2 = r2.f3744d
            r3 = 0
            androidx.media2.exoplayer.external.al$b r0 = r0.a(r1, r2, r3)
            r0 = r7
            androidx.media2.exoplayer.external.al$b r0 = r0.f3744d
            long r0 = r0.i
            r11 = r0
            r0 = r7
            androidx.media2.exoplayer.external.source.q r0 = r0.f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x005f
            r0 = r8
            long r0 = r0.f3739c
            r13 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005f
            goto L_0x0063
        L_0x005f:
            r0 = r11
            r13 = r0
        L_0x0063:
            r0 = r10
            r1 = r7
            androidx.media2.exoplayer.external.al$b r1 = r1.f3744d
            r2 = r7
            androidx.media2.exoplayer.external.al$a r2 = r2.e
            r3 = 0
            r4 = r13
            android.util.Pair r0 = r0.a(r1, r2, r3, r4)
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
            androidx.media2.exoplayer.external.source.r$b r1 = androidx.media2.exoplayer.external.source.r.b.a(r1, r2)
            r0.f3741a = r1
            r0 = r7
            androidx.media2.exoplayer.external.source.q r0 = r0.f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00b2
            r0 = r8
            r1 = r13
            r0.e = r1
            r0 = r8
            r1 = r8
            androidx.media2.exoplayer.external.source.t$a r1 = r1.f3738b
            r2 = r7
            r3 = r8
            androidx.media2.exoplayer.external.source.t$a r3 = r3.f3738b
            java.lang.Object r3 = r3.f3748a
            java.lang.Object r2 = r2.d(r3)
            androidx.media2.exoplayer.external.source.t$a r1 = r1.a(r2)
            r0.a(r1)
        L_0x00b2:
            r0 = r7
            r1 = 1
            r0.i = r1
            r0 = r7
            r1 = r7
            androidx.media2.exoplayer.external.source.r$b r1 = r1.f3741a
            r0.a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.r.a(java.lang.Object, androidx.media2.exoplayer.external.source.t, androidx.media2.exoplayer.external.al):void");
    }

    /* renamed from: b */
    public final q a(t.a aVar, androidx.media2.exoplayer.external.upstream.b bVar, long j) {
        q qVar = new q(this.f3742b, aVar, bVar, j);
        if (this.i) {
            qVar.a(aVar.a(d(aVar.f3748a)));
        } else {
            this.f = qVar;
            u.a a2 = a(0, aVar);
            this.g = a2;
            a2.a();
            if (!this.h) {
                this.h = true;
                a((r) null, this.f3742b);
            }
        }
        return qVar;
    }

    @Override // androidx.media2.exoplayer.external.source.d
    protected final boolean b(t.a aVar) {
        q qVar = this.f;
        return qVar == null || !aVar.equals(qVar.f3738b);
    }

    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void c() {
        this.i = false;
        this.h = false;
        super.c();
    }

    @Override // androidx.media2.exoplayer.external.source.b, androidx.media2.exoplayer.external.source.t
    public final Object e() {
        return this.f3742b.e();
    }

    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.t
    public final void f() throws IOException {
    }
}
