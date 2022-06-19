package p193e.p194a.p1011l;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1011l.p1024o2.C17014d;
import p193e.p194a.p1011l.p1025p2.AbstractC17120k0;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17086f;
import p193e.p194a.p1011l.p1025p2.C17203x;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19128x1;
import p193e.p194a.p1392y2.AbstractC21765k;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.y;
/* renamed from: e.a.l.e2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/e2.class */
public final class C16869e2 extends AbstractC21765k {

    /* renamed from: b */
    public final String f47351b = "PremiumStatusWorkAction";

    /* renamed from: c */
    public final AbstractC19022f0 f47352c;

    /* renamed from: d */
    public final AbstractC17168r0 f47353d;

    /* renamed from: e */
    public final AbstractC17120k0 f47354e;

    /* renamed from: f */
    public final AbstractC16987e f47355f;

    /* renamed from: g */
    public final AbstractC19128x1 f47356g;

    /* renamed from: h */
    public final C17014d f47357h;

    /* renamed from: i */
    public final C17086f f47358i;

    /* renamed from: j */
    public final AbstractC17197v0 f47359j;

    @e(c = "com.truecaller.premium.PremiumStatusWorkAction$execute$1", f = "PremiumStatusWorkAction.kt", l = {37}, m = "invokeSuspend")
    /* renamed from: e.a.l.e2$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e2$a.class */
    public static final class C16870a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f47360e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16870a(d dVar) {
            super(2, dVar);
            C16869e2.this = r5;
        }

        /* renamed from: i */
        public final d<s> m16824i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16870a(dVar);
        }

        /* renamed from: k */
        public final Object m16823k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16870a(dVar).m16822s(s.a);
        }

        /* renamed from: s */
        public final Object m16822s(Object obj) {
            a aVar = a.a;
            int i = this.f47360e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C17014d c17014d = C16869e2.this.f47357h;
                this.f47360e = 1;
                if (c17014d.m16635b(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.premium.PremiumStatusWorkAction$execute$2", f = "PremiumStatusWorkAction.kt", l = {46, 48, 53, 57}, m = "invokeSuspend")
    /* renamed from: e.a.l.e2$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e2$b.class */
    public static final class C16871b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f47362e;

        /* renamed from: f */
        public int f47363f;

        /* renamed from: h */
        public final /* synthetic */ y f47365h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16871b(y yVar, d dVar) {
            super(2, dVar);
            C16869e2.this = r5;
            this.f47365h = yVar;
        }

        /* renamed from: i */
        public final d<s> m16821i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16871b(this.f47365h, dVar);
        }

        /* renamed from: k */
        public final Object m16820k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16871b(this.f47365h, dVar).m16819s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x00f2, code lost:
            if ((r0 instanceof p193e.p194a.p1011l.p1025p2.AbstractC17120k0.AbstractC17121a.C17123b) == false) goto L36;
         */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x013e  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16819s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 348
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.C16869e2.C16871b.m16819s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.premium.PremiumStatusWorkAction$execute$statusResult$1", f = "PremiumStatusWorkAction.kt", l = {39}, m = "invokeSuspend")
    /* renamed from: e.a.l.e2$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/e2$c.class */
    public static final class C16872c extends i implements p<i0, d<? super k<? extends Integer, ? extends C17203x>>, Object> {

        /* renamed from: e */
        public int f47366e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16872c(d dVar) {
            super(2, dVar);
            C16869e2.this = r5;
        }

        /* renamed from: i */
        public final d<s> m16818i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16872c(dVar);
        }

        /* renamed from: k */
        public final Object m16817k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16872c(dVar).m16816s(s.a);
        }

        /* renamed from: s */
        public final Object m16816s(Object obj) {
            a aVar = a.a;
            int i = this.f47366e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC17168r0 abstractC17168r0 = C16869e2.this.f47353d;
                this.f47366e = 1;
                Object mo16453b = abstractC17168r0.mo16453b(this);
                obj = mo16453b;
                if (mo16453b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @Inject
    public C16869e2(AbstractC19022f0 abstractC19022f0, AbstractC17168r0 abstractC17168r0, AbstractC17120k0 abstractC17120k0, AbstractC16987e abstractC16987e, AbstractC19128x1 abstractC19128x1, C17014d c17014d, C17086f c17086f, AbstractC17197v0 abstractC17197v0) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC17168r0, "premiumRepository");
        l.e(abstractC17120k0, "premiumProductIdsFetcher");
        l.e(abstractC16987e, "inAppBilling");
        l.e(abstractC19128x1, "usageChecker");
        l.e(c17014d, "consumablePurchaseManager");
        l.e(c17086f, "freePremiumPromo");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f47352c = abstractC19022f0;
        this.f47353d = abstractC17168r0;
        this.f47354e = abstractC17120k0;
        this.f47355f = abstractC16987e;
        this.f47356g = abstractC19128x1;
        this.f47357h = c17014d;
        this.f47358i = c17086f;
        this.f47359j = abstractC17197v0;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        y yVar = new y();
        boolean z = false;
        yVar.a = false;
        s1.a.a.a.v0.f.d.c3((f) null, new C16870a(null), 1, (Object) null);
        if (this.f47359j.mo16408H() || this.f47359j.mo16412C()) {
            if (((Number) ((k) s1.a.a.a.v0.f.d.c3((f) null, new C16872c(null), 1, (Object) null)).a).intValue() != 0) {
                z = true;
            }
            yVar.a = z;
        }
        if (!this.f47359j.mo16408H()) {
            this.f47358i.m16548b();
            s1.a.a.a.v0.f.d.c3((f) null, new C16871b(yVar, null), 1, (Object) null);
        }
        if (yVar.a) {
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "ListenableWorker.Result.success()");
        } else {
            c0417c = new ListenableWorker.AbstractC0414a.C0416b();
            l.d(c0417c, "ListenableWorker.Result.retry()");
        }
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f47351b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f47352c.mo14245a();
    }
}
