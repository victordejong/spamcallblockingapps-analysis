package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import java.util.concurrent.Executor;
import javax.inject.Inject;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
import p081h.p203i.p204a.p206b.p209j.p220z.AbstractC6698b;
/* renamed from: h.i.a.b.j.y.j.q */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/q.class */
public class C6648q {

    /* renamed from: a */
    public final Executor f16506a;

    /* renamed from: b */
    public final AbstractC6661c f16507b;

    /* renamed from: c */
    public final AbstractC6650s f16508c;

    /* renamed from: d */
    public final AbstractC6698b f16509d;

    @Inject
    public C6648q(Executor executor, AbstractC6661c cVar, AbstractC6650s sVar, AbstractC6698b bVar) {
        this.f16506a = executor;
        this.f16507b = cVar;
        this.f16508c = sVar;
        this.f16509d = bVar;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22173a(C6648q qVar) {
        for (AbstractC6580m mVar : qVar.f16507b.mo22133E()) {
            qVar.f16508c.mo22169a(mVar, 1);
        }
        return null;
    }

    /* renamed from: a */
    public void m22174a() {
        this.f16506a.execute(RunnableC6646o.m22176a(this));
    }
}
