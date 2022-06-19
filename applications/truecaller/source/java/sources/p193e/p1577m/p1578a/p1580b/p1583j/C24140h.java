package p193e.p1577m.p1578a.p1580b.p1583j;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.k.c;
import e.m.d.r.k.f;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a.C24039f;
/* renamed from: e.m.a.b.j.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/h.class */
public final class C24140h implements e<C24039f> {

    /* renamed from: a */
    public static final C24140h f66845a = new C24140h();

    /* renamed from: b */
    public static final d f66846b;

    /* renamed from: c */
    public static final d f66847c;

    static {
        f.a aVar = f.a.a;
        c cVar = new c(1, aVar);
        HashMap hashMap = new HashMap();
        hashMap.put(cVar.annotationType(), cVar);
        f66846b = new d("startMs", hashMap == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap), (d.a) null);
        c cVar2 = new c(2, aVar);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(cVar2.annotationType(), cVar2);
        f66847c = new d("endMs", hashMap2 == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap2), (d.a) null);
    }

    public void encode(Object obj, Object obj2) throws IOException {
        C24039f c24039f = (C24039f) obj;
        e.m.d.r.f fVar = (e.m.d.r.f) obj2;
        fVar.add(f66846b, c24039f.f66655a);
        fVar.add(f66847c, c24039f.f66656b);
    }
}
