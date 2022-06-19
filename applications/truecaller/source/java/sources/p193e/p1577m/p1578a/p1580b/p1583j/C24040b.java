package p193e.p1577m.p1578a.p1580b.p1583j;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.k.c;
import e.m.d.r.k.f;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a.C24032a;
/* renamed from: e.m.a.b.j.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/b.class */
public final class C24040b implements e<C24032a> {

    /* renamed from: a */
    public static final C24040b f66657a = new C24040b();

    /* renamed from: b */
    public static final d f66658b;

    /* renamed from: c */
    public static final d f66659c;

    /* renamed from: d */
    public static final d f66660d;

    /* renamed from: e */
    public static final d f66661e;

    static {
        f.a aVar = f.a.a;
        c cVar = new c(1, aVar);
        HashMap hashMap = new HashMap();
        hashMap.put(cVar.annotationType(), cVar);
        f66658b = new d("window", hashMap == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap), (d.a) null);
        c cVar2 = new c(2, aVar);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(cVar2.annotationType(), cVar2);
        f66659c = new d("logSourceMetrics", hashMap2 == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap2), (d.a) null);
        c cVar3 = new c(3, aVar);
        HashMap hashMap3 = new HashMap();
        hashMap3.put(cVar3.annotationType(), cVar3);
        f66660d = new d("globalMetrics", hashMap3 == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap3), (d.a) null);
        c cVar4 = new c(4, aVar);
        HashMap hashMap4 = new HashMap();
        hashMap4.put(cVar4.annotationType(), cVar4);
        f66661e = new d("appNamespace", hashMap4 == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap4), (d.a) null);
    }

    public void encode(Object obj, Object obj2) throws IOException {
        C24032a c24032a = (C24032a) obj;
        e.m.d.r.f fVar = (e.m.d.r.f) obj2;
        fVar.add(f66658b, c24032a.f66626a);
        fVar.add(f66659c, c24032a.f66627b);
        fVar.add(f66660d, c24032a.f66628c);
        fVar.add(f66661e, c24032a.f66629d);
    }
}
