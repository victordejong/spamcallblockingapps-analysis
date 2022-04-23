package p081h.p203i.p204a.p206b.p209j.p217y;

import java.util.concurrent.Executor;
import java.util.logging.Logger;
import javax.inject.Inject;
import p081h.p203i.p204a.p206b.AbstractC6499h;
import p081h.p203i.p204a.p206b.p209j.AbstractC6571h;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.C6586r;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6596e;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6607m;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6650s;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
import p081h.p203i.p204a.p206b.p209j.p220z.AbstractC6698b;
/* renamed from: h.i.a.b.j.y.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/c.class */
public class C6619c implements AbstractC6621e {

    /* renamed from: f */
    public static final Logger f16434f = Logger.getLogger(C6586r.class.getName());

    /* renamed from: a */
    public final AbstractC6650s f16435a;

    /* renamed from: b */
    public final Executor f16436b;

    /* renamed from: c */
    public final AbstractC6596e f16437c;

    /* renamed from: d */
    public final AbstractC6661c f16438d;

    /* renamed from: e */
    public final AbstractC6698b f16439e;

    @Inject
    public C6619c(Executor executor, AbstractC6596e eVar, AbstractC6650s sVar, AbstractC6661c cVar, AbstractC6698b bVar) {
        this.f16436b = executor;
        this.f16437c = eVar;
        this.f16435a = sVar;
        this.f16438d = cVar;
        this.f16439e = bVar;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22226a(C6619c cVar, AbstractC6580m mVar, AbstractC6571h hVar) {
        cVar.f16438d.mo22130a(mVar, hVar);
        cVar.f16435a.mo22169a(mVar, 1);
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ void m22227a(C6619c cVar, AbstractC6580m mVar, AbstractC6499h hVar, AbstractC6571h hVar2) {
        try {
            AbstractC6607m mVar2 = cVar.f16437c.get(mVar.mo22296a());
            if (mVar2 == null) {
                String format = String.format("Transport backend '%s' is not registered", mVar.mo22296a());
                f16434f.warning(format);
                hVar.mo14179a(new IllegalArgumentException(format));
                return;
            }
            cVar.f16439e.mo22063a(C6618b.m22228a(cVar, mVar, mVar2.mo22245a(hVar2)));
            hVar.mo14179a(null);
        } catch (Exception e) {
            Logger logger = f16434f;
            logger.warning("Error scheduling event " + e.getMessage());
            hVar.mo14179a(e);
        }
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.AbstractC6621e
    /* renamed from: a */
    public void mo22223a(AbstractC6580m mVar, AbstractC6571h hVar, AbstractC6499h hVar2) {
        this.f16436b.execute(RunnableC6617a.m22229a(this, mVar, hVar2, hVar));
    }
}
