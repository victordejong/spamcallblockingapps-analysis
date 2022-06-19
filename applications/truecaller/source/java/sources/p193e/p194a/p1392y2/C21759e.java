package p193e.p194a.p1392y2;

import com.truecaller.background_work.persistence.WorkActionDatabase;
import o3.a;
import p1727n3.p1834m0.C26829f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1392y2.p1393p.AbstractC21776c;
import s1.z.c.l;
/* renamed from: e.a.y2.e */
/* loaded from: classes5-dex2jar.jar:e/a/y2/e.class */
public final class C21759e {

    /* renamed from: a */
    public final C26829f f60588a;

    /* renamed from: b */
    public final int f60589b;

    /* renamed from: c */
    public final AbstractC19462a f60590c;

    /* renamed from: d */
    public final AbstractC21766l f60591d;

    /* renamed from: e */
    public final a<WorkActionDatabase> f60592e;

    public C21759e(C26829f c26829f, int i, AbstractC19462a abstractC19462a, AbstractC21766l abstractC21766l, a<WorkActionDatabase> aVar) {
        l.e(c26829f, "inputData");
        l.e(abstractC21766l, "factory");
        l.e(aVar, "resultsDatabase");
        this.f60588a = c26829f;
        this.f60589b = i;
        this.f60590c = abstractC19462a;
        this.f60591d = abstractC21766l;
        this.f60592e = aVar;
    }

    /* renamed from: a */
    public final AbstractC21776c m9114a() {
        return ((WorkActionDatabase) this.f60592e.get()).mo35889a();
    }
}
