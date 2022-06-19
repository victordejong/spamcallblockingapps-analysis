package p193e.p194a.p1011l.p1025p2;

import io.agora.rtc.Constants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1012a.C16576g;
import p193e.p194a.p1011l.p1025p2.AbstractC17120k0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.l.p2.l0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/l0.class */
public final class C17127l0 implements AbstractC17120k0 {

    /* renamed from: a */
    public final AbstractC17140o0 f48069a;

    /* renamed from: b */
    public final AbstractC16832c2 f48070b;

    /* renamed from: c */
    public final C16576g f48071c;

    /* renamed from: d */
    public final f f48072d;

    @e(c = "com.truecaller.premium.data.PremiumProductIdsFetcherImpl$fetchProductIds$2", f = "PremiumProductIdsFetcher.kt", l = {Constants.ERR_PUBLISH_STREAM_CDN_ERROR}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.l0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/l0$a.class */
    public static final class C17128a extends i implements p<i0, d<? super AbstractC17120k0.AbstractC17121a>, Object> {

        /* renamed from: e */
        public int f48073e;

        /* renamed from: g */
        public final /* synthetic */ boolean f48075g;

        /* renamed from: h */
        public final /* synthetic */ boolean f48076h;

        /* renamed from: i */
        public final /* synthetic */ boolean f48077i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17128a(boolean z, boolean z2, boolean z3, d dVar) {
            super(2, dVar);
            C17127l0.this = r5;
            this.f48075g = z;
            this.f48076h = z2;
            this.f48077i = z3;
        }

        /* renamed from: i */
        public final d<s> m16499i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17128a(this.f48075g, this.f48076h, this.f48077i, dVar);
        }

        /* renamed from: k */
        public final Object m16498k(Object obj, Object obj2) {
            return m16499i(obj, (d) obj2).m16497s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:158:0x04ff  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x0544  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16497s(java.lang.Object r18) {
            /*
                Method dump skipped, instructions count: 1398
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17127l0.C17128a.m16497s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumProductIdsFetcherImpl", f = "PremiumProductIdsFetcher.kt", l = {147}, m = "verifyProduct")
    /* renamed from: e.a.l.p2.l0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/l0$b.class */
    public static final class C17129b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f48078d;

        /* renamed from: e */
        public int f48079e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17129b(d dVar) {
            super(dVar);
            C17127l0.this = r4;
        }

        /* renamed from: s */
        public final Object m16496s(Object obj) {
            this.f48078d = obj;
            this.f48079e |= Integer.MIN_VALUE;
            return C17127l0.this.mo16502a(null, this);
        }
    }

    @Inject
    public C17127l0(AbstractC17140o0 abstractC17140o0, AbstractC16832c2 abstractC16832c2, C16576g c16576g, @Named("IO") f fVar) {
        l.e(abstractC17140o0, "premiumProductsRepository");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(c16576g, "debugSubscriptionResultWrapper");
        l.e(fVar, "asyncContext");
        this.f48069a = abstractC17140o0;
        this.f48070b = abstractC16832c2;
        this.f48071c = c16576g;
        this.f48072d = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17120k0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16502a(java.lang.String r6, s1.w.d<? super p193e.p194a.p1011l.p1025p2.C17125k1> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p1011l.p1025p2.C17127l0.C17129b
            if (r0 == 0) goto L28
            r0 = r7
            e.a.l.p2.l0$b r0 = (p193e.p194a.p1011l.p1025p2.C17127l0.C17129b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f48079e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f48079e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.l.p2.l0$b r0 = new e.a.l.p2.l0$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f48078d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f48079e
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
            goto L86
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            if (r0 == 0) goto L8e
            r0 = r5
            e.a.l.p2.o0 r0 = r0.f48069a
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f48079e = r1
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.mo16477a(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L86
            r0 = r10
            return r0
        L86:
            r0 = r6
            e.a.l.p2.k1 r0 = (p193e.p194a.p1011l.p1025p2.C17125k1) r0
            r6 = r0
            goto L90
        L8e:
            r0 = 0
            r6 = r0
        L90:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17127l0.mo16502a(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17120k0
    /* renamed from: b */
    public Object mo16501b(boolean z, boolean z2, boolean z3, d<? super AbstractC17120k0.AbstractC17121a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f48072d, new C17128a(z, z2, z3, null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p194a.p1011l.p1025p2.C17125k1 m16500c(p193e.p194a.p1011l.p1025p2.C17125k1 r16) {
        /*
            r15 = this;
            r0 = r16
            e.a.l.p2.n1 r0 = r0.m16505f()
            r17 = r0
            r0 = r17
            if (r0 == 0) goto L79
            r0 = r16
            java.lang.String r0 = r0.m16508c()
            r18 = r0
            r0 = r18
            if (r0 != 0) goto L15
            goto L54
        L15:
            r0 = r18
            int r0 = r0.hashCode()
            r19 = r0
            r0 = r19
            r1 = 3178592(0x308060, float:4.454156E-39)
            if (r0 == r1) goto L40
            r0 = r19
            r1 = 1086463900(0x40c21f9c, float:6.0663586)
            if (r0 == r1) goto L2c
            goto L54
        L2c:
            r0 = r18
            java.lang.String r1 = "regular"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L54
            r0 = r15
            e.a.l.a.g r0 = r0.f48071c
            java.lang.String r0 = r0.m17229b()
            r18 = r0
            goto L56
        L40:
            r0 = r18
            java.lang.String r1 = "gold"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L54
            r0 = r15
            e.a.l.a.g r0 = r0.f48071c
            java.lang.String r0 = r0.m17230a()
            r18 = r0
            goto L56
        L54:
            r0 = 0
            r18 = r0
        L56:
            r0 = r18
            if (r0 == 0) goto L77
            r0 = r16
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = r17
            r10 = r18
            r11 = 0
            r12 = 0
            r13 = 6
            e.a.l.p2.n1 r9 = p193e.p194a.p1011l.p1025p2.C17138n1.m16485a(r9, r10, r11, r12, r13)
            r10 = 0
            r11 = 767(0x2ff, float:1.075E-42)
            e.a.l.p2.k1 r0 = p193e.p194a.p1011l.p1025p2.C17125k1.m16510a(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r16 = r0
            goto L77
        L77:
            r0 = r16
            return r0
        L79:
            r0 = r16
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17127l0.m16500c(e.a.l.p2.k1):e.a.l.p2.k1");
    }
}
