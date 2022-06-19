package p193e.p194a.p1011l.p1025p2;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1011l.p1023n2.AbstractC16994g;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.l.p2.g1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/g1.class */
public final class C17091g1 implements AbstractC17088f1 {

    /* renamed from: a */
    public final AbstractC17246a f47972a;

    /* renamed from: b */
    public final AbstractC16987e f47973b;

    /* renamed from: c */
    public final AbstractC16994g f47974c;

    @e(c = "com.truecaller.premium.data.PremiumSubscriptionsProviderImpl", f = "PremiumSubscriptionsProvider.kt", l = {37}, m = "getPurchasedSubscription")
    /* renamed from: e.a.l.p2.g1$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/g1$a.class */
    public static final class C17092a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47975d;

        /* renamed from: e */
        public int f47976e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17092a(d dVar) {
            super(dVar);
            C17091g1.this = r4;
        }

        /* renamed from: s */
        public final Object m16539s(Object obj) {
            this.f47975d = obj;
            this.f47976e |= Integer.MIN_VALUE;
            return C17091g1.this.mo16542a(this);
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumSubscriptionsProviderImpl", f = "PremiumSubscriptionsProvider.kt", l = {23, 24}, m = "getSubscription")
    /* renamed from: e.a.l.p2.g1$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/g1$b.class */
    public static final class C17093b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47978d;

        /* renamed from: e */
        public int f47979e;

        /* renamed from: g */
        public Object f47981g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17093b(d dVar) {
            super(dVar);
            C17091g1.this = r4;
        }

        /* renamed from: s */
        public final Object m16538s(Object obj) {
            this.f47978d = obj;
            this.f47979e |= Integer.MIN_VALUE;
            return C17091g1.this.mo16540c(null, this);
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumSubscriptionsProviderImpl", f = "PremiumSubscriptionsProvider.kt", l = {29, 30}, m = "getSubscriptions")
    /* renamed from: e.a.l.p2.g1$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/g1$c.class */
    public static final class C17094c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47982d;

        /* renamed from: e */
        public int f47983e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17094c(d dVar) {
            super(dVar);
            C17091g1.this = r4;
        }

        /* renamed from: s */
        public final Object m16537s(Object obj) {
            this.f47982d = obj;
            this.f47983e |= Integer.MIN_VALUE;
            return C17091g1.this.mo16541b(null, this);
        }
    }

    @Inject
    public C17091g1(AbstractC17246a abstractC17246a, AbstractC16987e abstractC16987e, AbstractC16994g abstractC16994g) {
        l.e(abstractC17246a, "premiumProductStoreProvider");
        l.e(abstractC16987e, "billing");
        l.e(abstractC16994g, "webBillingClient");
        this.f47972a = abstractC17246a;
        this.f47973b = abstractC16987e;
        this.f47974c = abstractC16994g;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17088f1
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16542a(s1.w.d<? super p193e.p194a.p1011l.p1023n2.C16993f> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1011l.p1025p2.C17091g1.C17092a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.l.p2.g1$a r0 = (p193e.p194a.p1011l.p1025p2.C17091g1.C17092a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f47976e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f47976e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.l.p2.g1$a r0 = new e.a.l.p2.g1$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f47975d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f47976e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L8b
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.l.u2.a r0 = r0.f47972a
            com.truecaller.premium.provider.Store r0 = r0.mo16331a()
            int r0 = r0.ordinal()
            r1 = 1
            if (r0 == r1) goto L93
            r0 = r5
            e.a.l.n2.e r0 = r0.f47973b
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f47976e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo16662j(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L8b
            r0 = r9
            return r0
        L8b:
            r0 = r6
            e.a.l.n2.f r0 = (p193e.p194a.p1011l.p1023n2.C16993f) r0
            r6 = r0
            goto L95
        L93:
            r0 = 0
            r6 = r0
        L95:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17091g1.mo16542a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006b  */
    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17088f1
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16541b(p193e.p194a.p1011l.p1025p2.C17130l1 r6, s1.w.d<? super java.util.List<p193e.p194a.p1011l.p1023n2.C16993f>> r7) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17091g1.mo16541b(e.a.l.p2.l1, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x012d  */
    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17088f1
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16540c(p193e.p194a.p1011l.p1025p2.C17125k1 r20, s1.w.d<? super p193e.p194a.p1011l.p1023n2.C16993f> r21) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17091g1.mo16540c(e.a.l.p2.k1, s1.w.d):java.lang.Object");
    }
}
