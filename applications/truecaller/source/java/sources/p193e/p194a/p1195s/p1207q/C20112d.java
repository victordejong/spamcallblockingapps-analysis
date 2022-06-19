package p193e.p194a.p1195s.p1207q;

import com.truecaller.callhero_assistant.onboarding.OnboardingStep;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.s.q.d */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/d.class */
public final class C20112d extends AbstractC20574a<AbstractC20110b> implements AbstractC20109a {

    /* renamed from: d */
    public final f f56727d;

    /* renamed from: e */
    public final AbstractC20168a f56728e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20112d(@Named("UI") f fVar, AbstractC20168a abstractC20168a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC20168a, "accountManager");
        this.f56727d = fVar;
        this.f56728e = abstractC20168a;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.s.q.b, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20110b abstractC20110b) {
        AbstractC20110b abstractC20110b2 = abstractC20110b;
        l.e(abstractC20110b2, "presenterView");
        this.f57683a = abstractC20110b2;
        abstractC20110b2.mo11529i3(OnboardingStep.VOICE);
        d.w2(this, (f) null, (j0) null, new C20111c(this, null), 3, (Object) null);
    }
}
