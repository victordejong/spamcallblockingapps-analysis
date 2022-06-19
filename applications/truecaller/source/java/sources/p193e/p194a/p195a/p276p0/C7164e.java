package p193e.p194a.p195a.p276p0;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p552i.p555c.AbstractC10313c;
import p193e.p194a.p437c.p552i.p561i.AbstractC10357a;
import p193e.p194a.p437c.p552i.p569m.AbstractC10419a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.p0.e */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/e.class */
public final class C7164e {

    /* renamed from: a */
    public final AbstractC9691j f22996a;

    /* renamed from: b */
    public final AbstractC10313c f22997b;

    /* renamed from: c */
    public final AbstractC10357a f22998c;

    /* renamed from: d */
    public final AbstractC10419a f22999d;

    /* renamed from: e */
    public final f f23000e;

    @Inject
    public C7164e(AbstractC9691j abstractC9691j, AbstractC10313c abstractC10313c, AbstractC10357a abstractC10357a, AbstractC10419a abstractC10419a, @Named("CPU") f fVar) {
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10313c, "transactionManager");
        l.e(abstractC10357a, "parseManager");
        l.e(abstractC10419a, "insightsSmsSyncManager");
        l.e(fVar, "coroutineContext");
        this.f22996a = abstractC9691j;
        this.f22997b = abstractC10313c;
        this.f22998c = abstractC10357a;
        this.f22999d = abstractC10419a;
        this.f23000e = fVar;
    }
}
