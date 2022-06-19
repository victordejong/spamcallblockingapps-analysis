package p193e.p194a.p1213s2.p1216h;

import android.content.Intent;
import com.truecaller.premium.data.feature.PremiumFeature;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.p1026d2.AbstractC17052b;
import p193e.p194a.p1213s2.p1214g.AbstractC20201a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.s2.h.d */
/* loaded from: classes5-dex2jar.jar:e/a/s2/h/d.class */
public final class C20214d extends AbstractC20576b<AbstractC20222l> implements AbstractC20221k {

    /* renamed from: b */
    public final AbstractC20215e f56954b;

    /* renamed from: c */
    public final AbstractC17052b f56955c;

    /* renamed from: d */
    public final AbstractC20201a f56956d;

    @Inject
    public C20214d(AbstractC20215e abstractC20215e, AbstractC17052b abstractC17052b, AbstractC20201a abstractC20201a) {
        l.e(abstractC20215e, "announceCallerIdSettings");
        l.e(abstractC17052b, "premiumFeatureManager");
        l.e(abstractC20201a, "announceCallerIdEventLogger");
        this.f56954b = abstractC20215e;
        this.f56955c = abstractC17052b;
        this.f56956d = abstractC20201a;
    }

    /* renamed from: Hj */
    public final void m11347Hj(a<s> aVar) {
        if (this.f56955c.mo16600a(PremiumFeature.ANNOUNCE_CALL, true)) {
            aVar.invoke();
            return;
        }
        AbstractC20222l abstractC20222l = (AbstractC20222l) this.f57683a;
        if (abstractC20222l != null) {
            abstractC20222l.mo11322na(false);
        }
        AbstractC20222l abstractC20222l2 = (AbstractC20222l) this.f57683a;
        if (abstractC20222l2 != null) {
            abstractC20222l2.mo11323P7(false);
        }
        AbstractC20222l abstractC20222l3 = (AbstractC20222l) this.f57683a;
        if (abstractC20222l3 != null) {
            abstractC20222l3.mo11325Cw(false);
        }
        AbstractC20222l abstractC20222l4 = (AbstractC20222l) this.f57683a;
        if (abstractC20222l4 == null) {
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("announce_caller_id_setting_change_status", 100);
        abstractC20222l4.mo11324Ml(-1, intent);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.s2.h.l, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20222l abstractC20222l) {
        AbstractC20222l abstractC20222l2 = abstractC20222l;
        l.e(abstractC20222l2, "presenterView");
        this.f57683a = abstractC20222l2;
        abstractC20222l2.mo11322na(this.f56954b.mo11334g3());
        AbstractC20222l abstractC20222l3 = (AbstractC20222l) this.f57683a;
        if (abstractC20222l3 != null) {
            abstractC20222l3.mo11323P7(this.f56954b.mo11329o2());
        }
        AbstractC20222l abstractC20222l4 = (AbstractC20222l) this.f57683a;
        if (abstractC20222l4 != null) {
            abstractC20222l4.mo11325Cw(this.f56954b.mo11339d1());
        }
    }
}
