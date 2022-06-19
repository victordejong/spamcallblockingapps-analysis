package p193e.p194a.p1193r5;

import com.truecaller.abtest.ThreeVariants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p613c0.C10912h;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.r5.n0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/n0.class */
public final class C19966n0 {

    /* renamed from: a */
    public final C10912h f56464a;

    /* renamed from: b */
    public final AbstractC19954i0 f56465b;

    /* renamed from: c */
    public final AbstractC17197v0 f56466c;

    /* renamed from: d */
    public final f f56467d;

    @e(c = "com.truecaller.whoviewedme.WhoViewedMeRevealProfileViewAbTestManager", f = "WhoViewedMeRevealProfileViewAbTestManager.kt", l = {27}, m = "maybeLogSeen")
    /* renamed from: e.a.r5.n0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/n0$a.class */
    public static final class C19967a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f56468d;

        /* renamed from: e */
        public int f56469e;

        /* renamed from: g */
        public Object f56471g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19967a(d dVar) {
            super(dVar);
            C19966n0.this = r4;
        }

        /* renamed from: s */
        public final Object m11723s(Object obj) {
            this.f56468d = obj;
            this.f56469e |= Integer.MIN_VALUE;
            return C19966n0.this.m11724b(this);
        }
    }

    /* renamed from: e.a.r5.n0$b */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/n0$b.class */
    public static final class C19968b extends m implements a<Boolean> {

        /* renamed from: c */
        public final /* synthetic */ boolean f56473c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19968b(boolean z) {
            super(0);
            C19966n0.this = r4;
            this.f56473c = z;
        }

        public Object invoke() {
            return Boolean.valueOf(!C19966n0.this.f56466c.mo16408H() && this.f56473c);
        }
    }

    @Inject
    public C19966n0(C10912h c10912h, AbstractC19954i0 abstractC19954i0, AbstractC17197v0 abstractC17197v0, @Named("IO") f fVar) {
        l.e(c10912h, "experimentRegistry");
        l.e(abstractC19954i0, "whoViewedMeManager");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(fVar, "asyncContext");
        this.f56464a = c10912h;
        this.f56465b = abstractC19954i0;
        this.f56466c = abstractC17197v0;
        this.f56467d = fVar;
    }

    /* renamed from: a */
    public final boolean m11725a() {
        return this.f56464a.f32404f.m25513f() == ThreeVariants.VariantA;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m11724b(s1.w.d<? super s1.s> r8) {
        /*
            r7 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p1193r5.C19966n0.C19967a
            if (r0 == 0) goto L25
            r0 = r8
            e.a.r5.n0$a r0 = (p193e.p194a.p1193r5.C19966n0.C19967a) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f56469e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f56469e = r1
            r0 = r9
            r8 = r0
            goto L2f
        L25:
            e.a.r5.n0$a r0 = new e.a.r5.n0$a
            r1 = r0
            r2 = r7
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L2f:
            r0 = r8
            java.lang.Object r0 = r0.f56468d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f56469e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            java.lang.Object r0 = r0.f56471g
            e.a.r5.n0 r0 = (p193e.p194a.p1193r5.C19966n0) r0
            r8 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L86
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            e.a.r5.i0 r0 = r0.f56465b
            r9 = r0
            r0 = r8
            r1 = r7
            r0.f56471g = r1
            r0 = r8
            r1 = 1
            r0.f56469e = r1
            r0 = r9
            r1 = r8
            java.lang.Object r0 = r0.mo11756g(r1)
            r9 = r0
            r0 = r9
            r1 = r11
            if (r0 != r1) goto L84
            r0 = r11
            return r0
        L84:
            r0 = r7
            r8 = r0
        L86:
            r0 = r9
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r12 = r0
            r0 = r8
            e.a.c0.h r0 = r0.f56464a
            e.a.c0.c<com.truecaller.abtest.ThreeVariants> r0 = r0.f32404f
            r1 = 0
            e.a.r5.n0$b r2 = new e.a.r5.n0$b
            r3 = r2
            r4 = r8
            r5 = r12
            r3.<init>(r5)
            r3 = 1
            r4 = 0
            p193e.p194a.p613c0.AbstractC10908f.m25507e(r0, r1, r2, r3, r4)
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1193r5.C19966n0.m11724b(s1.w.d):java.lang.Object");
    }
}
