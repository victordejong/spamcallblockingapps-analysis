package p193e.p1577m.p1578a.p1580b.p1583j;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.k.c;
import e.m.d.r.k.f;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a.C24035c;
/* renamed from: e.m.a.b.j.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/d.class */
public final class C24125d implements e<C24035c> {

    /* renamed from: a */
    public static final C24125d f66830a = new C24125d();

    /* renamed from: b */
    public static final d f66831b;

    /* renamed from: c */
    public static final d f66832c;

    static {
        f.a aVar = f.a.a;
        c cVar = new c(1, aVar);
        HashMap hashMap = new HashMap();
        hashMap.put(cVar.annotationType(), cVar);
        f66831b = new d("eventsDroppedCount", hashMap == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap), (d.a) null);
        c cVar2 = new c(3, aVar);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(cVar2.annotationType(), cVar2);
        f66832c = new d("reason", hashMap2 == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap2), (d.a) null);
    }

    public void encode(Object obj, Object obj2) throws IOException {
        C24035c c24035c = (C24035c) obj;
        e.m.d.r.f fVar = (e.m.d.r.f) obj2;
        fVar.add(f66831b, c24035c.f66637a);
        fVar.add(f66832c, c24035c.f66638b);
    }
}
