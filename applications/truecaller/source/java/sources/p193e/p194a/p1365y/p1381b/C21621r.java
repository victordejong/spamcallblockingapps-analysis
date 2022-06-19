package p193e.p194a.p1365y.p1381b;

import e.m.d.y.n;
import e.m.e.k;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.y.b.r */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/r.class */
public final class C21621r implements AbstractC21620q {

    /* renamed from: a */
    public final k f60284a;

    @Inject
    public C21621r(k kVar) {
        l.e(kVar, "gson");
        this.f60284a = kVar;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21620q
    /* renamed from: a */
    public String mo9352a(Object obj) {
        l.e(obj, "src");
        String m = this.f60284a.m(obj);
        l.d(m, "gson.toJson(src)");
        return m;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21620q
    /* renamed from: b */
    public <T> T mo9351b(String str, Class<T> cls) {
        l.e(str, "json");
        l.e(cls, "classOfT");
        return (T) n.B1(cls).cast(this.f60284a.g(str, cls));
    }
}
