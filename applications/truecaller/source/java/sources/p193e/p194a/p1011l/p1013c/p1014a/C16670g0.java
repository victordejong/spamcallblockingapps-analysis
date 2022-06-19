package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.ghost_call.ScheduleDuration;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1349x.AbstractC21373l;
import p193e.p194a.p1349x.AbstractC21385w;
import p193e.p194a.p1349x.C21345i;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.g0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/g0.class */
public final class C16670g0 {

    /* renamed from: a */
    public final AbstractC21373l f46804a;

    /* renamed from: b */
    public final AbstractC21385w f46805b;

    @Inject
    public C16670g0(AbstractC21373l abstractC21373l, AbstractC21385w abstractC21385w) {
        l.e(abstractC21373l, "ghostCallManager");
        l.e(abstractC21385w, "ghostCallSettings");
        this.f46804a = abstractC21373l;
        this.f46805b = abstractC21385w;
    }

    /* renamed from: a */
    public final AbstractC16736t.C16740d m17138a() {
        AbstractC21385w abstractC21385w = this.f46805b;
        return new AbstractC16736t.C16740d(new C21345i(abstractC21385w.mo9784w(), abstractC21385w.mo9797V0(), abstractC21385w.mo9799S0(), ScheduleDuration.values()[abstractC21385w.mo9795Z1()], abstractC21385w.mo9785k1(), null));
    }
}
