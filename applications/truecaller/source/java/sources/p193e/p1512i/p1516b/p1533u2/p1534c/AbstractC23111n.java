package p193e.p1512i.p1516b.p1533u2.p1534c;

import e.m.e.d0.b;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* renamed from: e.i.b.u2.c.n */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/n.class */
public abstract class AbstractC23111n {
    /* renamed from: a */
    public abstract AbstractC23110m mo7547a();

    /* renamed from: b */
    public URL m7546b() {
        return mo7547a().mo7549c().mo7539a();
    }

    /* renamed from: c */
    public List<URL> m7545c() {
        ArrayList arrayList = new ArrayList();
        for (AbstractC23113p abstractC23113p : mo7543e()) {
            arrayList.add(abstractC23113p.mo7538a());
        }
        return arrayList;
    }

    @b("products")
    /* renamed from: d */
    public abstract List<AbstractC23115r> mo7544d();

    @b("impressionPixels")
    /* renamed from: e */
    public abstract List<AbstractC23113p> mo7543e();

    /* renamed from: f */
    public abstract AbstractC23114q mo7542f();

    /* renamed from: g */
    public URL m7541g() {
        return mo7542f().mo7536b();
    }

    /* renamed from: h */
    public AbstractC23115r m7540h() {
        return mo7544d().iterator().next();
    }
}
