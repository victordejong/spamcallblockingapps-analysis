package p193e.p194a.p1011l.p1013c.p1014a;

import e.m.e.f0.a;
import e.m.e.k;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.n */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/n.class */
public final class C16708n {

    /* renamed from: a */
    public final k f46859a;

    /* renamed from: b */
    public final Map<String, C16713o> f46860b;

    /* renamed from: c */
    public final AbstractC16832c2 f46861c;

    /* renamed from: e.a.l.c.a.n$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/n$a.class */
    public static final class C16709a extends a<Map<String, C16713o>> {
    }

    @Inject
    public C16708n(AbstractC16832c2 abstractC16832c2) {
        LinkedHashMap linkedHashMap;
        l.e(abstractC16832c2, "premiumSettings");
        this.f46861c = abstractC16832c2;
        k kVar = new k();
        this.f46859a = kVar;
        String mo16870y2 = abstractC16832c2.mo16870y2();
        if (mo16870y2.length() == 0) {
            linkedHashMap = new LinkedHashMap();
        } else {
            Type type = new C16709a().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g(mo16870y2, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            linkedHashMap = (Map) g;
        }
        this.f46860b = linkedHashMap;
        String m = kVar.m(linkedHashMap);
        l.d(m, "gson.toJson(data)");
        abstractC16832c2.mo16878t(m);
    }
}
