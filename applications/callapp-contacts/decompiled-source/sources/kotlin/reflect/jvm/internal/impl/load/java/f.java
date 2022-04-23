package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f37769a = new f();

    /* renamed from: b  reason: collision with root package name */
    private static final Map<b, e> f37770b;

    /* renamed from: c  reason: collision with root package name */
    private static final Map<e, List<e>> f37771c;

    /* renamed from: d  reason: collision with root package name */
    private static final Set<b> f37772d;
    private static final Set<e> e;

    static {
        Map<b, e> a2 = ai.a(t.a(g.a(j.a.s, "name"), e.a("name")), t.a(g.a(j.a.s, "ordinal"), e.a("ordinal")), t.a(g.a(j.a.P, "size"), e.a("size")), t.a(g.a(j.a.T, "size"), e.a("size")), t.a(g.a(j.a.g, "length"), e.a("length")), t.a(g.a(j.a.T, "keys"), e.a("keySet")), t.a(g.a(j.a.T, "values"), e.a("values")), t.a(g.a(j.a.T, "entries"), e.a("entrySet")));
        f37770b = a2;
        Set<Map.Entry<b, e>> entrySet = a2.entrySet();
        ArrayList arrayList = new ArrayList(n.a(entrySet, 10));
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            arrayList.add(new kotlin.n(((b) entry.getKey()).e(), entry.getValue()));
        }
        ArrayList<kotlin.n> arrayList2 = arrayList;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (kotlin.n nVar : arrayList2) {
            e eVar = (e) nVar.f36811b;
            Object obj = linkedHashMap.get(eVar);
            ArrayList arrayList3 = obj;
            if (obj == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(eVar, arrayList3);
            }
            ((List) arrayList3).add((e) nVar.f36810a);
        }
        f37771c = linkedHashMap;
        Set<b> keySet = f37770b.keySet();
        f37772d = keySet;
        Set<b> set = keySet;
        ArrayList arrayList4 = new ArrayList(n.a(set, 10));
        for (b bVar : set) {
            arrayList4.add(bVar.e());
        }
        e = n.j((Iterable) arrayList4);
    }

    private f() {
    }

    public static List<e> a(e name1) {
        p.d(name1, "name1");
        List<e> list = f37771c.get(name1);
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        return zVar;
    }

    public static Map<b, e> a() {
        return f37770b;
    }

    public static Set<b> b() {
        return f37772d;
    }

    public static Set<e> c() {
        return e;
    }
}
