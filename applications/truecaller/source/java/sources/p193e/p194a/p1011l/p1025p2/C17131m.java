package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.billing.Receipt;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19128x1;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.l.p2.m */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/m.class */
public final class C17131m implements AbstractC17126l {

    /* renamed from: a */
    public final AbstractC16987e f48093a;

    /* renamed from: b */
    public final AbstractC19022f0 f48094b;

    /* renamed from: c */
    public final AbstractC19128x1 f48095c;

    /* renamed from: d */
    public final a<AbstractC17028a> f48096d;

    @e(c = "com.truecaller.premium.data.GlobalPurchaseUpdatedListenerImpl$onPurchaseUpdated$1", f = "GlobalPurchaseUpdatedListener.kt", l = {38}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.m$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/m$a.class */
    public static final class C17132a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f48097e;

        /* renamed from: g */
        public final /* synthetic */ AbstractC16987e.AbstractC16988a f48099g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17132a(AbstractC16987e.AbstractC16988a abstractC16988a, d dVar) {
            super(2, dVar);
            C17131m.this = r5;
            this.f48099g = abstractC16988a;
        }

        /* renamed from: i */
        public final d<s> m16490i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17132a(this.f48099g, dVar);
        }

        /* renamed from: k */
        public final Object m16489k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17132a(this.f48099g, dVar).m16488s(s.a);
        }

        /* renamed from: s */
        public final Object m16488s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f48097e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC17028a abstractC17028a = (AbstractC17028a) C17131m.this.f48096d.get();
                Receipt receipt = ((AbstractC16987e.AbstractC16988a.C16992d) this.f48099g).f47661a;
                this.f48097e = 1;
                if (abstractC17028a.mo16616a(receipt, this) == aVar) {
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

    @Inject
    public C17131m(AbstractC16987e abstractC16987e, AbstractC19022f0 abstractC19022f0, AbstractC19128x1 abstractC19128x1, a<AbstractC17028a> aVar) {
        l.e(abstractC16987e, "billing");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19128x1, "usageChecker");
        l.e(aVar, "acknowledgePurchaseHelper");
        this.f48093a = abstractC16987e;
        this.f48094b = abstractC19022f0;
        this.f48095c = abstractC19128x1;
        this.f48096d = aVar;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17126l
    /* renamed from: a */
    public void mo16491a(AbstractC16987e.AbstractC16988a abstractC16988a) {
        l.e(abstractC16988a, "result");
        if (!this.f48094b.mo14245a() || this.f48095c.mo14081b()) {
            return;
        }
        if (!(abstractC16988a instanceof AbstractC16987e.AbstractC16988a.C16992d)) {
            if (!(abstractC16988a instanceof AbstractC16987e.AbstractC16988a.C16990b)) {
                return;
            }
            AbstractC16987e.AbstractC16988a.C16990b c16990b = (AbstractC16987e.AbstractC16988a.C16990b) abstractC16988a;
            return;
        }
        Receipt receipt = ((AbstractC16987e.AbstractC16988a.C16992d) abstractC16988a).f47661a;
        if (receipt.f14240g != Receipt.State.PURCHASED || receipt.f14239f) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, (f) null, (j0) null, new C17132a(abstractC16988a, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17126l
    public void init() {
        this.f48093a.mo16669c(this);
    }
}
