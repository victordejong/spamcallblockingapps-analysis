package p193e.p194a.p1080o.p1081a.p1089g.p1090g;

import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17635l2;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18589b;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.o.a.g.g.e */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/g/e.class */
public final class C18605e extends AbstractC18589b<AbstractC18604d> implements AbstractC18603c {

    /* renamed from: e */
    public final AbstractC19223c0 f52385e;

    /* renamed from: f */
    public final AbstractC18868e f52386f;

    /* renamed from: g */
    public final a<AbstractC19854f<AbstractC19463a0>> f52387g;

    /* renamed from: h */
    public final f f52388h;

    @e(c = "com.truecaller.contextcall.ui.custommessage.addcallreason.AddCallReasonPresenter$onDoneClicked$1", f = "AddCallReasonPresenter.kt", l = {36}, m = "invokeSuspend")
    /* renamed from: e.a.o.a.g.g.e$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/g/e$a.class */
    public static final class C18606a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52389e;

        /* renamed from: g */
        public final /* synthetic */ String f52391g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18606a(String str, d dVar) {
            super(2, dVar);
            C18605e.this = r5;
            this.f52391g = str;
        }

        /* renamed from: i */
        public final d<s> m14736i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18606a(this.f52391g, dVar);
        }

        /* renamed from: k */
        public final Object m14735k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18606a(this.f52391g, dVar).m14734s(s.a);
        }

        /* renamed from: s */
        public final Object m14734s(Object obj) {
            ContextCallAnalyticsContext mo14738Q3;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52389e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18868e abstractC18868e = C18605e.this.f52386f;
                String str = this.f52391g;
                this.f52389e = 1;
                if (abstractC18868e.mo14379e(str, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C18605e c18605e = C18605e.this;
            AbstractC18604d abstractC18604d = (AbstractC18604d) c18605e.f57683a;
            if (abstractC18604d != null && (mo14738Q3 = abstractC18604d.mo14738Q3()) != null) {
                AbstractC19463a0 abstractC19463a0 = (AbstractC19463a0) ((AbstractC19854f) c18605e.f52387g.get()).mo11854a();
                C17635l2.C17637b m15906a = C17635l2.m15906a();
                m15906a.m15903c(mo14738Q3.getValue());
                m15906a.m15904b("onBoardingAddReason");
                abstractC19463a0.mo13111a(m15906a.build());
            }
            AbstractC18604d abstractC18604d2 = (AbstractC18604d) C18605e.this.f57683a;
            if (abstractC18604d2 != null) {
                abstractC18604d2.mo14720t7();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18605e(AbstractC19223c0 abstractC19223c0, AbstractC18868e abstractC18868e, a<AbstractC19854f<AbstractC19463a0>> aVar, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC18868e, "reasonRepository");
        l.e(aVar, "eventsTracker");
        l.e(fVar, "uiContext");
        this.f52385e = abstractC19223c0;
        this.f52386f = abstractC18868e;
        this.f52387g = aVar;
        this.f52388h = fVar;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e
    /* renamed from: G0 */
    public void mo14685G0() {
        AbstractC18604d abstractC18604d = (AbstractC18604d) this.f57683a;
        if (abstractC18604d != null) {
            abstractC18604d.mo14741s();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.o.a.g.g.d, PV, java.lang.Object, e.a.o.a.g.f] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC18604d) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r0.mo14742l(r0.mo14737i5());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e
    /* renamed from: w1 */
    public void mo14681w1(String str) {
        if (!(str == null || r.p(str))) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18606a(str, null), 3, (Object) null);
            return;
        }
        AbstractC18604d abstractC18604d = (AbstractC18604d) this.f57683a;
        if (abstractC18604d == null) {
            return;
        }
        String mo13768b = this.f52385e.mo13768b(C3771R.string.call_context_empty_message, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…ll_context_empty_message)");
        abstractC18604d.mo14743a5(mo13768b);
    }
}
