package p193e.p194a.p1080o.p1081a.p1082a.p1084b;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
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
import p193e.p194a.p1080o.p1097b.AbstractC18705d;
import p193e.p194a.p1080o.p1101n.C18787a;
import p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.k;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.o.a.a.b.g */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/a/b/g.class */
public final class C18526g extends AbstractC20574a<AbstractC18524e> implements AbstractC18523d {

    /* renamed from: d */
    public final f f52263d;

    /* renamed from: e */
    public final AbstractC18769f f52264e;

    /* renamed from: f */
    public final AbstractC18700b f52265f;

    /* renamed from: g */
    public final AbstractC18882c f52266g;

    /* renamed from: h */
    public final a<AbstractC18705d> f52267h;

    /* renamed from: i */
    public final a<AbstractC19462a> f52268i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18526g(@Named("UI") f fVar, AbstractC18769f abstractC18769f, AbstractC18700b abstractC18700b, AbstractC18882c abstractC18882c, a<AbstractC18705d> aVar, a<AbstractC19462a> aVar2) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC18769f, "support");
        l.e(abstractC18700b, "messageFactory");
        l.e(abstractC18882c, "predefinedCallReasonRepository");
        l.e(aVar, "contextCallAnalytics");
        l.e(aVar2, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f52263d = fVar;
        this.f52264e = abstractC18769f;
        this.f52265f = abstractC18700b;
        this.f52266g = abstractC18882c;
        this.f52267h = aVar;
        this.f52268i = aVar2;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18523d
    /* renamed from: W */
    public void mo14812W() {
        AbstractC18524e abstractC18524e;
        AbstractC18524e abstractC18524e2 = (AbstractC18524e) this.f57683a;
        if ((abstractC18524e2 != null ? abstractC18524e2.mo14820R7() : false) || (abstractC18524e = (AbstractC18524e) this.f57683a) == null) {
            return;
        }
        abstractC18524e.mo14816uv();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.o.a.a.b.e, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18524e abstractC18524e) {
        AbstractC18524e abstractC18524e2 = abstractC18524e;
        l.e(abstractC18524e2, "presenterView");
        this.f57683a = abstractC18524e2;
        C19597a m8580q1 = C22128a.m8580q1("OnDemandReasonPicker", "viewId", "OnDemandReasonPicker", null, null);
        Object obj = this.f52268i.get();
        l.d(obj, "analytics.get()");
        n.B0(m8580q1, (AbstractC19462a) obj);
        d.w2(this, (f) null, (j0) null, new C18525f(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18523d
    /* renamed from: c1 */
    public void mo14811c1(boolean z) {
        AbstractC18524e abstractC18524e;
        if (!z || (abstractC18524e = (AbstractC18524e) this.f57683a) == null) {
            return;
        }
        abstractC18524e.mo14816uv();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18523d
    /* renamed from: oh */
    public void mo14810oh() {
        AbstractC18524e abstractC18524e = (AbstractC18524e) this.f57683a;
        if (abstractC18524e != null) {
            abstractC18524e.mo14817s();
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1084b.AbstractC18523d
    /* renamed from: p1 */
    public void mo14809p1(C18787a c18787a) {
        InitiateCallHelper.CallOptions mo14819r;
        String str;
        l.e(c18787a, "reason");
        AbstractC18524e abstractC18524e = (AbstractC18524e) this.f57683a;
        if (abstractC18524e == null || (mo14819r = abstractC18524e.mo14819r()) == null || (str = mo14819r.f10714a) == null) {
            return;
        }
        CallContextMessage m15579r = C17891a1.C17902k.m15579r(this.f52265f, null, str, c18787a.f52776c, FeatureType.ON_DEMAND, new MessageType.Preset(c18787a.f52774a), mo14819r.f10715b, 1, null);
        InitiateCallHelper.CallContextOption set = m15579r == null ? InitiateCallHelper.CallContextOption.Skip.a : new InitiateCallHelper.CallContextOption.Set(m15579r);
        ((AbstractC18705d) this.f52267h.get()).mo14616a("OnDemandReasonPicked", C25225a.m3938Z1(new k("ContextId", String.valueOf(c18787a.f52774a))));
        InitiateCallHelper.CallOptions.C3621a c3621a = new InitiateCallHelper.CallOptions.C3621a(mo14819r);
        c3621a.m35742b(set);
        ((C18771h) this.f52264e).m14495a(c3621a.m35743a());
        AbstractC18524e abstractC18524e2 = (AbstractC18524e) this.f57683a;
        if (abstractC18524e2 == null) {
            return;
        }
        abstractC18524e2.mo14817s();
    }
}
