package p131c.p161d.p170b.p173b.p176i;

import android.content.Context;
import java.util.Collections;
import java.util.Set;
import p131c.p161d.p170b.p173b.AbstractC2497f;
import p131c.p161d.p170b.p173b.AbstractC2498g;
import p131c.p161d.p170b.p173b.C2493b;
import p131c.p161d.p170b.p173b.p176i.AbstractC2562h;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.AbstractC2578s;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p184y.AbstractC2609e;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.C2627l;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.C2631p;
/* renamed from: c.d.b.b.i.r */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/r.class */
public class C2577r implements AbstractC2576q {

    /* renamed from: e */
    public static volatile AbstractC2578s f9629e;

    /* renamed from: a */
    public final AbstractC2541a f9630a;

    /* renamed from: b */
    public final AbstractC2541a f9631b;

    /* renamed from: c */
    public final AbstractC2609e f9632c;

    /* renamed from: d */
    public final C2627l f9633d;

    public C2577r(AbstractC2541a aVar, AbstractC2541a aVar2, AbstractC2609e eVar, C2627l lVar, C2631p pVar) {
        this.f9630a = aVar;
        this.f9631b = aVar2;
        this.f9632c = eVar;
        this.f9633d = lVar;
        pVar.m29408a();
    }

    /* renamed from: a */
    public static void m29490a(Context context) {
        if (f9629e == null) {
            synchronized (C2577r.class) {
                try {
                    if (f9629e == null) {
                        AbstractC2578s.AbstractC2579a c = C2556d.m29550c();
                        c.mo29481a(context);
                        f9629e = c.mo29482a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: b */
    public static C2577r m29486b() {
        AbstractC2578s sVar = f9629e;
        if (sVar != null) {
            return sVar.mo29483b();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: b */
    public static Set<C2493b> m29485b(AbstractC2559e eVar) {
        return eVar instanceof AbstractC2560f ? Collections.unmodifiableSet(((AbstractC2560f) eVar).mo29549a()) : Collections.singleton(C2493b.m29661a("proto"));
    }

    /* renamed from: a */
    public AbstractC2497f m29489a(AbstractC2559e eVar) {
        Set<C2493b> b = m29485b(eVar);
        AbstractC2571m.AbstractC2572a d = AbstractC2571m.m29502d();
        d.mo29499a(eVar.getName());
        d.mo29498a(eVar.getExtras());
        return new C2573n(b, d.mo29501a(), this);
    }

    /* renamed from: a */
    public final AbstractC2562h m29488a(AbstractC2569l lVar) {
        AbstractC2562h.AbstractC2563a i = AbstractC2562h.m29535i();
        i.mo29533a(this.f9630a.mo29554a());
        i.mo29524b(this.f9631b.mo29554a());
        i.mo29530a(lVar.mo29514f());
        i.mo29532a(new C2561g(lVar.mo29519a(), lVar.m29517c()));
        i.mo29531a(lVar.mo29518b().mo29660a());
        return i.mo29534a();
    }

    /* renamed from: a */
    public C2627l m29491a() {
        return this.f9633d;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2576q
    /* renamed from: a */
    public void mo29487a(AbstractC2569l lVar, AbstractC2498g gVar) {
        this.f9632c.mo29436a(lVar.mo29515e().m29505a(lVar.mo29518b().mo29656c()), m29488a(lVar), gVar);
    }
}
