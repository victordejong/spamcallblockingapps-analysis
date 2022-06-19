package p193e.p194a.p1080o.p1081a.p1082a.p1083a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.contextcall.p159db.reason.CallReason;
import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.FeatureType;
import com.truecaller.data.entity.MessageType;
import e.m.d.y.n;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.AbstractC18769f;
import p193e.p194a.p1080o.C18771h;
import p193e.p194a.p1080o.p1097b.AbstractC18700b;
import p193e.p194a.p1080o.p1097b.AbstractC18746o;
import p193e.p194a.p1080o.p1103p.p1105b.AbstractC18823d;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.o.a.a.a.h */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/h.class */
public final class C18514h extends AbstractC20574a<AbstractC18512f> implements AbstractC18511e {

    /* renamed from: d */
    public final f f52235d;

    /* renamed from: e */
    public final AbstractC18769f f52236e;

    /* renamed from: f */
    public final AbstractC18700b f52237f;

    /* renamed from: g */
    public final AbstractC18868e f52238g;

    /* renamed from: h */
    public final AbstractC18823d f52239h;

    /* renamed from: i */
    public final AbstractC18746o f52240i;

    /* renamed from: j */
    public final a<AbstractC19462a> f52241j;

    @e(c = "com.truecaller.contextcall.ui.reasonpicker.onboarded.OnBoardedReasonPickerPresenter$onHidePersonClicked$1", f = "OnBoardedReasonPickerPresenter.kt", l = {86}, m = "invokeSuspend")
    /* renamed from: e.a.o.a.a.a.h$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/h$a.class */
    public static final class C18515a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52242e;

        /* renamed from: g */
        public final /* synthetic */ String f52244g;

        /* renamed from: h */
        public final /* synthetic */ InitiateCallHelper.CallOptions f52245h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18515a(String str, InitiateCallHelper.CallOptions callOptions, d dVar) {
            super(2, dVar);
            C18514h.this = r5;
            this.f52244g = str;
            this.f52245h = callOptions;
        }

        /* renamed from: i */
        public final d<s> m14829i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18515a(this.f52244g, this.f52245h, dVar);
        }

        /* renamed from: k */
        public final Object m14828k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18515a(this.f52244g, this.f52245h, dVar).m14827s(s.a);
        }

        /* renamed from: s */
        public final Object m14827s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52242e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18823d abstractC18823d = C18514h.this.f52239h;
                String str = this.f52244g;
                this.f52242e = 1;
                if (abstractC18823d.mo14446d(str, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (!C17891a1.C17902k.m15681F(C18514h.this.f52240i, "HiddenContactInfoIsShown", false, 2, null)) {
                AbstractC18512f abstractC18512f = (AbstractC18512f) C18514h.this.f57683a;
                if (abstractC18512f != null) {
                    abstractC18512f.mo14843gc(this.f52245h);
                }
                AbstractC18512f abstractC18512f2 = (AbstractC18512f) C18514h.this.f57683a;
                if (abstractC18512f2 != null) {
                    abstractC18512f2.mo14841t();
                }
            } else {
                C18514h.this.m14836Ij();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18514h(@Named("UI") f fVar, AbstractC18769f abstractC18769f, AbstractC18700b abstractC18700b, AbstractC18868e abstractC18868e, AbstractC18823d abstractC18823d, AbstractC18746o abstractC18746o, a<AbstractC19462a> aVar) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC18769f, "support");
        l.e(abstractC18700b, "messageFactory");
        l.e(abstractC18868e, "callReasonRepository");
        l.e(abstractC18823d, "hiddenNumberRepository");
        l.e(abstractC18746o, "settings");
        l.e(aVar, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f52235d = fVar;
        this.f52236e = abstractC18769f;
        this.f52237f = abstractC18700b;
        this.f52238g = abstractC18868e;
        this.f52239h = abstractC18823d;
        this.f52240i = abstractC18746o;
        this.f52241j = aVar;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18511e
    /* renamed from: Hi */
    public void mo14837Hi(CallReason callReason) {
        InitiateCallHelper.CallOptions mo14842r;
        String str;
        l.e(callReason, "reason");
        AbstractC18512f abstractC18512f = (AbstractC18512f) this.f57683a;
        if (abstractC18512f == null || (mo14842r = abstractC18512f.mo14842r()) == null || (str = mo14842r.f10714a) == null) {
            return;
        }
        CallContextMessage m15579r = C17891a1.C17902k.m15579r(this.f52237f, null, str, callReason.getReasonText(), FeatureType.ON_BOARDING, MessageType.Custom.f11559b, mo14842r.f10715b, 1, null);
        InitiateCallHelper.CallContextOption set = m15579r == null ? InitiateCallHelper.CallContextOption.Skip.a : new InitiateCallHelper.CallContextOption.Set(m15579r);
        ViewActionEvent m35932f = ViewActionEvent.f9985d.m35932f("OnBoardingReasonPicker", ViewActionEvent.ContextCallAction.ON_BOARDED_REASON_PICKED);
        Object obj = this.f52241j.get();
        l.d(obj, "analytics.get()");
        n.B0(m35932f, (AbstractC19462a) obj);
        InitiateCallHelper.CallOptions.C3621a c3621a = new InitiateCallHelper.CallOptions.C3621a(mo14842r);
        c3621a.m35742b(set);
        ((C18771h) this.f52236e).m14495a(c3621a.m35743a());
        AbstractC18512f abstractC18512f2 = (AbstractC18512f) this.f57683a;
        if (abstractC18512f2 == null) {
            return;
        }
        abstractC18512f2.mo14841t();
    }

    /* renamed from: Ij */
    public final void m14836Ij() {
        InitiateCallHelper.CallOptions mo14842r;
        AbstractC18512f abstractC18512f = (AbstractC18512f) this.f57683a;
        if (abstractC18512f == null || (mo14842r = abstractC18512f.mo14842r()) == null) {
            return;
        }
        InitiateCallHelper.CallOptions.C3621a c3621a = new InitiateCallHelper.CallOptions.C3621a(mo14842r);
        c3621a.m35742b(InitiateCallHelper.CallContextOption.Skip.a);
        ((C18771h) this.f52236e).m14495a(c3621a.m35743a());
        AbstractC18512f abstractC18512f2 = (AbstractC18512f) this.f57683a;
        if (abstractC18512f2 == null) {
            return;
        }
        abstractC18512f2.mo14841t();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18511e
    /* renamed from: O3 */
    public void mo14835O3() {
        m14836Ij();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18511e
    /* renamed from: Vc */
    public void mo14834Vc(CallReason callReason) {
        InitiateCallHelper.CallOptions mo14842r;
        l.e(callReason, "reason");
        AbstractC18512f abstractC18512f = (AbstractC18512f) this.f57683a;
        if (abstractC18512f == null || (mo14842r = abstractC18512f.mo14842r()) == null) {
            return;
        }
        AbstractC18512f abstractC18512f2 = (AbstractC18512f) this.f57683a;
        if (abstractC18512f2 != null) {
            abstractC18512f2.mo14846Lv();
        }
        AbstractC18512f abstractC18512f3 = (AbstractC18512f) this.f57683a;
        if (abstractC18512f3 == null) {
            return;
        }
        abstractC18512f3.mo14845Tz(mo14842r, callReason);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18511e
    /* renamed from: W */
    public void mo14833W() {
        InitiateCallHelper.CallOptions mo14842r;
        AbstractC18512f abstractC18512f = (AbstractC18512f) this.f57683a;
        if (abstractC18512f == null || (mo14842r = abstractC18512f.mo14842r()) == null) {
            return;
        }
        AbstractC18512f abstractC18512f2 = (AbstractC18512f) this.f57683a;
        if (abstractC18512f2 != null) {
            abstractC18512f2.mo14846Lv();
        }
        AbstractC18512f abstractC18512f3 = (AbstractC18512f) this.f57683a;
        if (abstractC18512f3 == null) {
            return;
        }
        abstractC18512f3.mo14845Tz(mo14842r, null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.o.a.a.a.f, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18512f abstractC18512f) {
        AbstractC18512f abstractC18512f2 = abstractC18512f;
        l.e(abstractC18512f2, "presenterView");
        this.f57683a = abstractC18512f2;
        C19597a m8580q1 = C22128a.m8580q1("OnBoardingReasonPicker", "viewId", "OnBoardingReasonPicker", null, null);
        Object obj = this.f52241j.get();
        l.d(obj, "analytics.get()");
        n.B0(m8580q1, (AbstractC19462a) obj);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18513g(this, null), 3, (Object) null);
        abstractC18512f2.mo14848Cm(10000L);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18511e
    /* renamed from: bc */
    public void mo14832bc() {
        InitiateCallHelper.CallOptions mo14842r;
        String str;
        AbstractC18512f abstractC18512f = (AbstractC18512f) this.f57683a;
        if (abstractC18512f == null || (mo14842r = abstractC18512f.mo14842r()) == null || (str = mo14842r.f10714a) == null) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18515a(str, mo14842r, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18511e
    /* renamed from: i4 */
    public void mo14831i4() {
        m14836Ij();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18511e
    /* renamed from: q4 */
    public void mo14830q4() {
        AbstractC18512f abstractC18512f = (AbstractC18512f) this.f57683a;
        if (abstractC18512f != null) {
            abstractC18512f.mo14844Uv();
        }
    }
}
