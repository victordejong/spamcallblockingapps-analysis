package p193e.p194a.p195a.p258m;

import com.mopub.mobileads.resource.DrawableConstants;
import com.truecaller.C2752R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.a0;
import s1.z.c.l;
import w3.b.a.b;
@e(c = "com.truecaller.messaging.promo.InboxCleanerPromotionalTabPresenter$onBindItem$1", f = "PromoPresenter.kt", l = {149, DrawableConstants.CtaButton.WIDTH_DIPS}, m = "invokeSuspend")
/* renamed from: e.a.a.m.m */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/m.class */
public final class C6915m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f22515e;

    /* renamed from: f */
    public Object f22516f;

    /* renamed from: g */
    public int f22517g;

    /* renamed from: h */
    public final /* synthetic */ C6921n f22518h;

    /* renamed from: i */
    public final /* synthetic */ AbstractC6923n1 f22519i;

    @e(c = "com.truecaller.messaging.promo.InboxCleanerPromotionalTabPresenter$onBindItem$1$1", f = "PromoPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.m.m$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/m$a.class */
    public static final class C6916a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ a0 f22521f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6916a(a0 a0Var, d dVar) {
            super(2, dVar);
            C6915m.this = r5;
            this.f22521f = a0Var;
        }

        /* renamed from: i */
        public final d<s> m30386i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6916a(this.f22521f, dVar);
        }

        /* renamed from: k */
        public final Object m30385k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6915m c6915m = C6915m.this;
            a0 a0Var = this.f22521f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC6923n1 abstractC6923n1 = c6915m.f22519i;
            String mo13768b = c6915m.f22518h.f22525e.mo13768b(C2752R.string.PromotionalTabBannerTitle, new Integer(a0Var.a));
            l.d(mo13768b, "resourceProvider.getStri…rTitle, promotionalCount)");
            abstractC6923n1.setTitle(mo13768b);
            return sVar;
        }

        /* renamed from: s */
        public final Object m30384s(Object obj) {
            C25225a.m3932a3(obj);
            C6915m c6915m = C6915m.this;
            AbstractC6923n1 abstractC6923n1 = c6915m.f22519i;
            String mo13768b = c6915m.f22518h.f22525e.mo13768b(C2752R.string.PromotionalTabBannerTitle, new Integer(this.f22521f.a));
            l.d(mo13768b, "resourceProvider.getStri…rTitle, promotionalCount)");
            abstractC6923n1.setTitle(mo13768b);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6915m(C6921n c6921n, AbstractC6923n1 abstractC6923n1, d dVar) {
        super(2, dVar);
        this.f22518h = c6921n;
        this.f22519i = abstractC6923n1;
    }

    /* renamed from: i */
    public final d<s> m30389i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6915m(this.f22518h, this.f22519i, dVar);
    }

    /* renamed from: k */
    public final Object m30388k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6915m(this.f22518h, this.f22519i, dVar).m30387s(s.a);
    }

    /* renamed from: s */
    public final Object m30387s(Object obj) {
        Object obj2;
        a0 a0Var;
        a0 a0Var2;
        a aVar = a.a;
        int i = this.f22517g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            a0 a0Var3 = new a0();
            AbstractC6005m abstractC6005m = this.f22518h.f22526f;
            b y = new b().y(30);
            l.d(y, "DateTime.now().minusDays(INBOX_CLEANUP_DAYS_30)");
            long j = ((w3.b.a.e0.e) y).a;
            this.f22515e = a0Var3;
            this.f22516f = a0Var3;
            this.f22517g = 1;
            obj2 = abstractC6005m.mo32042o(j, this);
            if (obj2 == aVar) {
                return aVar;
            }
            a0Var = a0Var3;
            a0Var2 = a0Var3;
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            a0Var2 = (a0) this.f22516f;
            a0Var = (a0) this.f22515e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        a0Var2.a = ((Number) obj2).intValue();
        f fVar = this.f22518h.f22528h;
        C6916a c6916a = new C6916a(a0Var, null);
        this.f22515e = null;
        this.f22516f = null;
        this.f22517g = 2;
        if (s1.a.a.a.v0.f.d.a4(fVar, c6916a, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
