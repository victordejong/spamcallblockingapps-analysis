package p193e.p194a.p1011l.p1025p2;

import javax.inject.Inject;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.l.p2.b2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/b2.class */
public final class C17038b2 implements AbstractC17031a2 {

    /* renamed from: a */
    public final AbstractC17100i0 f47793a;

    @e(c = "com.truecaller.premium.data.WebPurchaseRepositoryImpl", f = "WebPurchaseRepositoryImpl.kt", l = {24}, m = "createWebPurchaseOrder")
    /* renamed from: e.a.l.p2.b2$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/b2$a.class */
    public static final class C17039a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47794d;

        /* renamed from: e */
        public int f47795e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17039a(d dVar) {
            super(dVar);
            C17038b2.this = r4;
        }

        /* renamed from: s */
        public final Object m16609s(Object obj) {
            this.f47794d = obj;
            this.f47795e |= Integer.MIN_VALUE;
            return C17038b2.this.m16611a(null, this);
        }
    }

    @e(c = "com.truecaller.premium.data.WebPurchaseRepositoryImpl", f = "WebPurchaseRepositoryImpl.kt", l = {16}, m = "fetchProductPrices")
    /* renamed from: e.a.l.p2.b2$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/b2$b.class */
    public static final class C17040b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47797d;

        /* renamed from: e */
        public int f47798e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17040b(d dVar) {
            super(dVar);
            C17038b2.this = r4;
        }

        /* renamed from: s */
        public final Object m16608s(Object obj) {
            this.f47797d = obj;
            this.f47798e |= Integer.MIN_VALUE;
            return C17038b2.this.m16610b(null, this);
        }
    }

    @Inject
    public C17038b2(AbstractC17100i0 abstractC17100i0) {
        l.e(abstractC17100i0, "premiumNetworkHelper");
        this.f47793a = abstractC17100i0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m16611a(p193e.p194a.p1011l.p1025p2.C17198v1 r6, s1.w.d<? super p193e.p194a.p1011l.p1025p2.AbstractC17044c2<p193e.p194a.p1011l.p1025p2.C17208y1>> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p1011l.p1025p2.C17038b2.C17039a
            if (r0 == 0) goto L28
            r0 = r7
            e.a.l.p2.b2$a r0 = (p193e.p194a.p1011l.p1025p2.C17038b2.C17039a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f47795e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f47795e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.l.p2.b2$a r0 = new e.a.l.p2.b2$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f47794d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f47795e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L83
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.l.p2.i0 r0 = r0.f47793a
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f47795e = r1
            r0 = r8
            e.a.l.p2.j0 r0 = (p193e.p194a.p1011l.p1025p2.C17108j0) r0
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.m16525a(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L83
            r0 = r10
            return r0
        L83:
            r0 = r6
            e.a.l.r2.a r0 = (p193e.p194a.p1011l.p1029r2.AbstractC17221a) r0
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17224c
            if (r0 == 0) goto La7
            e.a.l.p2.c2$c r0 = new e.a.l.p2.c2$c
            r1 = r0
            r2 = r6
            e.a.l.r2.a$c r2 = (p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17224c) r2
            T r2 = r2.f48347a
            e.a.l.p2.z1 r2 = (p193e.p194a.p1011l.p1025p2.C17211z1) r2
            e.a.l.p2.y1 r2 = r2.m16369a()
            r1.<init>(r2)
            r6 = r0
            goto Lb9
        La7:
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a
            if (r0 == 0) goto Lb5
            e.a.l.p2.c2$b r0 = p193e.p194a.p1011l.p1025p2.AbstractC17044c2.C17046b.f47804a
            r6 = r0
            goto Lb9
        Lb5:
            e.a.l.p2.c2$a r0 = p193e.p194a.p1011l.p1025p2.AbstractC17044c2.C17045a.f47803a
            r6 = r0
        Lb9:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17038b2.m16611a(e.a.l.p2.v1, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a1  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m16610b(p193e.p194a.p1011l.p1025p2.AbstractC17031a2.C17033b r6, s1.w.d<? super p193e.p194a.p1011l.p1025p2.AbstractC17044c2<? extends java.util.List<p193e.p194a.p1011l.p1025p2.AbstractC17031a2.C17032a>>> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p1011l.p1025p2.C17038b2.C17040b
            if (r0 == 0) goto L28
            r0 = r7
            e.a.l.p2.b2$b r0 = (p193e.p194a.p1011l.p1025p2.C17038b2.C17040b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f47798e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f47798e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.l.p2.b2$b r0 = new e.a.l.p2.b2$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f47797d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f47798e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L83
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.l.p2.i0 r0 = r0.f47793a
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f47798e = r1
            r0 = r8
            e.a.l.p2.j0 r0 = (p193e.p194a.p1011l.p1025p2.C17108j0) r0
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.m16524b(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L83
            r0 = r10
            return r0
        L83:
            r0 = r6
            e.a.l.r2.a r0 = (p193e.p194a.p1011l.p1029r2.AbstractC17221a) r0
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17224c
            if (r0 == 0) goto La1
            e.a.l.p2.c2$c r0 = new e.a.l.p2.c2$c
            r1 = r0
            r2 = r6
            e.a.l.r2.a$c r2 = (p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17224c) r2
            T r2 = r2.f48347a
            r1.<init>(r2)
            r6 = r0
            goto Lb3
        La1:
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a
            if (r0 == 0) goto Laf
            e.a.l.p2.c2$b r0 = p193e.p194a.p1011l.p1025p2.AbstractC17044c2.C17046b.f47804a
            r6 = r0
            goto Lb3
        Laf:
            e.a.l.p2.c2$a r0 = p193e.p194a.p1011l.p1025p2.AbstractC17044c2.C17045a.f47803a
            r6 = r0
        Lb3:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17038b2.m16610b(e.a.l.p2.a2$b, s1.w.d):java.lang.Object");
    }
}
