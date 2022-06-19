package p193e.p194a.p1349x.p1350a;

import com.truecaller.ghost_call.analytics.events.GhostCallInCallUIAction;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1349x.p1351h0.C21337a;
import p193e.p194a.p1349x.p1351h0.p1352b.C21339b;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ghost_call.incoming.GhostCallIncomingPresenter$acceptCall$1", f = "GhostCallIncomingPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.x.a.e */
/* loaded from: classes9-dex2jar.jar:e/a/x/a/e.class */
public final class C21318e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C21319f f59707e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21318e(C21319f c21319f, d dVar) {
        super(2, dVar);
        this.f59707e = c21319f;
    }

    /* renamed from: i */
    public final d<s> m9903i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21318e(this.f59707e, dVar);
    }

    /* renamed from: k */
    public final Object m9902k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21319f c21319f = this.f59707e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        AbstractC21321h abstractC21321h = (AbstractC21321h) c21319f.f57683a;
        if (abstractC21321h != null) {
            abstractC21321h.mo9898L();
        }
        c21319f.f59709g.mo9826z();
        C21337a c21337a = c21319f.f59710h;
        GhostCallInCallUIAction ghostCallInCallUIAction = GhostCallInCallUIAction.CallPicked;
        Objects.requireNonNull(c21337a);
        l.e(ghostCallInCallUIAction, "ghostCallInCallUIAction");
        C10480a.m26037O1(new C21339b(ghostCallInCallUIAction, c21337a.f59734d.m17200a()), c21337a);
        return sVar;
    }

    /* renamed from: s */
    public final Object m9901s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC21321h abstractC21321h = (AbstractC21321h) this.f59707e.f57683a;
        if (abstractC21321h != null) {
            abstractC21321h.mo9898L();
        }
        this.f59707e.f59709g.mo9826z();
        C21337a c21337a = this.f59707e.f59710h;
        GhostCallInCallUIAction ghostCallInCallUIAction = GhostCallInCallUIAction.CallPicked;
        Objects.requireNonNull(c21337a);
        l.e(ghostCallInCallUIAction, "ghostCallInCallUIAction");
        C10480a.m26037O1(new C21339b(ghostCallInCallUIAction, c21337a.f59734d.m17200a()), c21337a);
        return s.a;
    }
}
