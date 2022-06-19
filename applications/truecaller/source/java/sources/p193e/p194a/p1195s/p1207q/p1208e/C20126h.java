package p193e.p194a.p1195s.p1207q.p1208e;

import com.truecaller.callhero_assistant.data.Carrier;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.u.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.s.q.e.h */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/e/h.class */
public final class C20126h extends AbstractC20574a<AbstractC20124f> implements AbstractC20123e {

    /* renamed from: d */
    public List<Carrier> f56746d = s.a;

    /* renamed from: e */
    public Carrier f56747e;

    /* renamed from: f */
    public String f56748f;

    /* renamed from: g */
    public final f f56749g;

    /* renamed from: h */
    public final AbstractC20113a f56750h;

    /* renamed from: i */
    public final AbstractC19237j0 f56751i;

    /* renamed from: j */
    public final AbstractC20168a f56752j;

    /* renamed from: k */
    public final AbstractC20177c f56753k;

    @e(c = "com.truecaller.callhero_assistant.onboarding.forward.OnboardingStepForwardPresenter$onCarrierSelected$1", f = "OnboardingStepForwardPresenter.kt", l = {53}, m = "invokeSuspend")
    /* renamed from: e.a.s.q.e.h$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/e/h$a.class */
    public static final class C20127a extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f56754e;

        /* renamed from: g */
        public final /* synthetic */ Carrier f56756g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20127a(Carrier carrier, d dVar) {
            super(2, dVar);
            C20126h.this = r5;
            this.f56756g = carrier;
        }

        /* renamed from: i */
        public final d<s1.s> m11510i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20127a(this.f56756g, dVar);
        }

        /* renamed from: k */
        public final Object m11509k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20127a(this.f56756g, dVar).m11508s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m11508s(Object obj) {
            s1.s sVar = s1.s.a;
            a aVar = a.a;
            int i = this.f56754e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC20168a abstractC20168a = C20126h.this.f56752j;
                String id = this.f56756g.getId();
                this.f56754e = 1;
                Object mo11446e = abstractC20168a.mo11446e(id, this);
                obj = mo11446e;
                if (mo11446e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            String str = (String) obj;
            Carrier carrier = C20126h.this.f56747e;
            if (!l.a(carrier != null ? carrier.getId() : null, this.f56756g.getId())) {
                return sVar;
            }
            if (str == null) {
                C12864a2.m22554g0(C20126h.this.f56751i, 2131886719, null, 0, 6, null);
            } else {
                String t = r.t(this.f56756g.getEnableCode(), "[NUMBER]", str, false, 4);
                C20126h c20126h = C20126h.this;
                c20126h.f56748f = t;
                AbstractC20124f abstractC20124f = (AbstractC20124f) c20126h.f57683a;
                if (abstractC20124f != null) {
                    abstractC20124f.mo11521Da(t);
                }
                AbstractC20124f abstractC20124f2 = (AbstractC20124f) C20126h.this.f57683a;
                if (abstractC20124f2 != null) {
                    abstractC20124f2.mo11516vz(true);
                }
                C20126h.this.f56753k.mo11431D0(this.f56756g.getDisableCode());
                C20126h.this.f56753k.mo11432C0(this.f56756g.getSupportLink());
            }
            return sVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20126h(@Named("UI") f fVar, AbstractC20113a abstractC20113a, AbstractC19237j0 abstractC19237j0, AbstractC20168a abstractC20168a, AbstractC20177c abstractC20177c) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC20113a, "carrierRepository");
        l.e(abstractC19237j0, "toastUtil");
        l.e(abstractC20168a, "accountManager");
        l.e(abstractC20177c, "callAssistantSettings");
        this.f56749g = fVar;
        this.f56750h = abstractC20113a;
        this.f56751i = abstractC19237j0;
        this.f56752j = abstractC20168a;
        this.f56753k = abstractC20177c;
    }

    @Override // p193e.p194a.p1195s.p1207q.p1208e.AbstractC20123e
    /* renamed from: Wb */
    public void mo11512Wb() {
        String str = this.f56748f;
        if (str != null) {
            AbstractC20124f abstractC20124f = (AbstractC20124f) this.f57683a;
            if (abstractC20124f != null) {
                abstractC20124f.mo11517mg(str);
            }
            AbstractC20124f abstractC20124f2 = (AbstractC20124f) this.f57683a;
            if (abstractC20124f2 == null) {
                return;
            }
            abstractC20124f2.mo11519T();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.s.q.e.f, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20124f abstractC20124f) {
        AbstractC20124f abstractC20124f2 = abstractC20124f;
        l.e(abstractC20124f2, "presenterView");
        this.f57683a = abstractC20124f2;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20125g(this, abstractC20124f2, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1208e.AbstractC20123e
    /* renamed from: l9 */
    public void mo11511l9(int i) {
        Carrier carrier = this.f56746d.get(i);
        this.f56747e = carrier;
        AbstractC20124f abstractC20124f = (AbstractC20124f) this.f57683a;
        if (abstractC20124f != null) {
            abstractC20124f.mo11516vz(false);
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20127a(carrier, null), 3, (Object) null);
    }
}
