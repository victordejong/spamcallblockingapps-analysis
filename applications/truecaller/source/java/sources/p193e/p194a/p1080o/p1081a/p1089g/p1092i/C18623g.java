package p193e.p194a.p1080o.p1081a.p1089g.p1092i;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p159db.reason.CallReason;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1080o.AbstractC18769f;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18589b;
import p193e.p194a.p1080o.p1097b.AbstractC18700b;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.f0.v;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.o.a.g.i.g */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/i/g.class */
public final class C18623g extends AbstractC18589b<AbstractC18621e> implements AbstractC18620d {

    /* renamed from: e */
    public final AbstractC19223c0 f52421e;

    /* renamed from: f */
    public final AbstractC18700b f52422f;

    /* renamed from: g */
    public final AbstractC18769f f52423g;

    /* renamed from: h */
    public final AbstractC18868e f52424h;

    /* renamed from: i */
    public final a<AbstractC19462a> f52425i;

    /* renamed from: j */
    public final f f52426j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18623g(AbstractC19223c0 abstractC19223c0, AbstractC18700b abstractC18700b, AbstractC18769f abstractC18769f, AbstractC18868e abstractC18868e, a<AbstractC19462a> aVar, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC18700b, "messageFactory");
        l.e(abstractC18769f, "support");
        l.e(abstractC18868e, "callReasonRepository");
        l.e(aVar, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(fVar, "uiContext");
        this.f52421e = abstractC19223c0;
        this.f52422f = abstractC18700b;
        this.f52423g = abstractC18769f;
        this.f52424h = abstractC18868e;
        this.f52425i = aVar;
        this.f52426j = fVar;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e
    /* renamed from: G0 */
    public void mo14685G0() {
        AbstractC18621e abstractC18621e = (AbstractC18621e) this.f57683a;
        if (abstractC18621e != null) {
            abstractC18621e.mo14741s();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.o.a.g.i.e, PV, java.lang.Object, e.a.o.a.g.f] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC18621e) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        CallReason mo14719T3 = r0.mo14719T3();
        if (mo14719T3 != null) {
            r0.mo14742l(mo14719T3.getReasonText());
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e
    /* renamed from: w1 */
    public void mo14681w1(String str) {
        if (!(str == null || r.p(str))) {
            Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
            d.w2(this, (f) null, (j0) null, new C18622f(this, v.g0(str).toString(), null), 3, (Object) null);
            return;
        }
        AbstractC18621e abstractC18621e = (AbstractC18621e) this.f57683a;
        if (abstractC18621e == null) {
            return;
        }
        String mo13768b = this.f52421e.mo13768b(C3771R.string.call_context_empty_message, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…ll_context_empty_message)");
        abstractC18621e.mo14743a5(mo13768b);
    }
}
