package p193e.p1577m.p1578a.p1580b.p1583j;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.k.c;
import e.m.d.r.k.f;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a.C24037d;
/* renamed from: e.m.a.b.j.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/e.class */
public final class C24129e implements e<C24037d> {

    /* renamed from: a */
    public static final C24129e f66833a = new C24129e();

    /* renamed from: b */
    public static final d f66834b;

    /* renamed from: c */
    public static final d f66835c;

    static {
        f.a aVar = f.a.a;
        c cVar = new c(1, aVar);
        HashMap hashMap = new HashMap();
        hashMap.put(cVar.annotationType(), cVar);
        f66834b = new d("logSource", hashMap == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap), (d.a) null);
        c cVar2 = new c(2, aVar);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(cVar2.annotationType(), cVar2);
        f66835c = new d("logEventDropped", hashMap2 == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap2), (d.a) null);
    }

    public void encode(Object obj, Object obj2) throws IOException {
        C24037d c24037d = (C24037d) obj;
        e.m.d.r.f fVar = (e.m.d.r.f) obj2;
        fVar.add(f66834b, c24037d.f66649a);
        fVar.add(f66835c, c24037d.f66650b);
    }
}
