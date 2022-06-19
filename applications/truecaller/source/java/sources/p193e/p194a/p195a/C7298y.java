package p193e.p194a.p195a;

import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20590f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.a.y */
/* loaded from: classes10-dex2jar.jar:e/a/a/y.class */
public final class C7298y implements C20590f.AbstractC20591a {

    /* renamed from: a */
    public final String f23292a = "featureNormalizeShortCodes";

    /* renamed from: b */
    public final a<AbstractC19854f<AbstractC6233m>> f23293b;

    /* renamed from: c */
    public final AbstractC8541a f23294c;

    @Inject
    public C7298y(a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC8541a abstractC8541a) {
        l.e(aVar, "messagesStorage");
        l.e(abstractC8541a, "coreSettings");
        this.f23293b = aVar;
        this.f23294c = abstractC8541a;
    }

    @Override // p193e.p194a.p1272u3.C20590f.AbstractC20591a
    /* renamed from: Q1 */
    public void mo11006Q1() {
        m29818c();
    }

    @Override // p193e.p194a.p1272u3.C20590f.AbstractC20591a
    /* renamed from: a */
    public void mo11005a() {
        m29818c();
    }

    /* renamed from: b */
    public String m29819b() {
        return this.f23292a;
    }

    /* renamed from: c */
    public final void m29818c() {
        this.f23294c.putBoolean("deleteBackupDuplicates", true);
        ((AbstractC6233m) ((AbstractC19854f) this.f23293b.get()).mo11854a()).mo31698b(false);
    }
}
