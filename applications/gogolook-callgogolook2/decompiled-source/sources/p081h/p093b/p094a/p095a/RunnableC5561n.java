package p081h.p093b.p094a.p095a;

import p081h.p093b.p094a.p095a.C5542e;
import p081h.p093b.p094a.p095a.C5552i;
/* renamed from: h.b.a.a.n */
/* loaded from: classes-dex2jar.jar:h/b/a/a/n.class */
public final class RunnableC5561n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C5552i.C5553a f13889a;

    /* renamed from: b */
    public final /* synthetic */ CallableC5562o f13890b;

    public RunnableC5561n(CallableC5562o oVar, C5552i.C5553a aVar) {
        this.f13890b = oVar;
        this.f13889a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC5558k kVar = this.f13890b.f13894d;
        C5542e.C5543a c = C5542e.m25167c();
        c.m25165a(this.f13889a.m25138b());
        c.m25164a(this.f13889a.m25137c());
        kVar.mo3550a(c.m25166a(), this.f13889a.m25139a());
    }
}
