package p193e.p1577m.p1578a.p1580b.p1583j;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.k.c;
import e.m.d.r.k.f;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a.C24038e;
/* renamed from: e.m.a.b.j.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/g.class */
public final class C24139g implements e<C24038e> {

    /* renamed from: a */
    public static final C24139g f66842a = new C24139g();

    /* renamed from: b */
    public static final d f66843b;

    /* renamed from: c */
    public static final d f66844c;

    static {
        f.a aVar = f.a.a;
        c cVar = new c(1, aVar);
        HashMap hashMap = new HashMap();
        hashMap.put(cVar.annotationType(), cVar);
        f66843b = new d("currentCacheSizeBytes", hashMap == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap), (d.a) null);
        c cVar2 = new c(2, aVar);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(cVar2.annotationType(), cVar2);
        f66844c = new d("maxCacheSizeBytes", hashMap2 == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap2), (d.a) null);
    }

    public void encode(Object obj, Object obj2) throws IOException {
        C24038e c24038e = (C24038e) obj;
        e.m.d.r.f fVar = (e.m.d.r.f) obj2;
        fVar.add(f66843b, c24038e.f66652a);
        fVar.add(f66844c, c24038e.f66653b);
    }
}
