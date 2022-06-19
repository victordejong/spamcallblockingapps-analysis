package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/f.class */
public final class C19421f {

    /* renamed from: a */
    public static final C19421f f65304a = new C19421f();

    /* renamed from: b */
    private static final Map<C18961b, C18966e> f65305b;

    /* renamed from: c */
    private static final Map<C18966e, List<C18966e>> f65306c;

    /* renamed from: d */
    private static final Set<C18961b> f65307d;

    /* renamed from: e */
    private static final Set<C18966e> f65308e;

    static {
        Map<C18961b, C18966e> a = C18247ai.m4251a(C20126t.m1103a(C19422g.m2164a(C18954j.C18955a.f64664s, "name"), C18966e.m2719a("name")), C20126t.m1103a(C19422g.m2164a(C18954j.C18955a.f64664s, "ordinal"), C18966e.m2719a("ordinal")), C20126t.m1103a(C19422g.m2165a(C18954j.C18955a.f64604P, "size"), C18966e.m2719a("size")), C20126t.m1103a(C19422g.m2165a(C18954j.C18955a.f64608T, "size"), C18966e.m2719a("size")), C20126t.m1103a(C19422g.m2164a(C18954j.C18955a.f64652g, "length"), C18966e.m2719a("length")), C20126t.m1103a(C19422g.m2165a(C18954j.C18955a.f64608T, "keys"), C18966e.m2719a("keySet")), C20126t.m1103a(C19422g.m2165a(C18954j.C18955a.f64608T, "values"), C18966e.m2719a("values")), C20126t.m1103a(C19422g.m2165a(C18954j.C18955a.f64608T, "entries"), C18966e.m2719a("entrySet")));
        f65305b = a;
        Set<Map.Entry<C18961b, C18966e>> entrySet = a.entrySet();
        ArrayList arrayList = new ArrayList(C18282n.m4163a(entrySet, 10));
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            arrayList.add(new C18538n(((C18961b) entry.getKey()).m2738e(), entry.getValue()));
        }
        ArrayList<C18538n> arrayList2 = arrayList;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (C18538n c18538n : arrayList2) {
            C18966e c18966e = (C18966e) c18538n.f63625b;
            Object obj = linkedHashMap.get(c18966e);
            ArrayList arrayList3 = obj;
            if (obj == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(c18966e, arrayList3);
            }
            ((List) arrayList3).add((C18966e) c18538n.f63624a);
        }
        f65306c = linkedHashMap;
        Set<C18961b> keySet = f65305b.keySet();
        f65307d = keySet;
        Set<C18961b> set = keySet;
        ArrayList arrayList4 = new ArrayList(C18282n.m4163a(set, 10));
        for (C18961b c18961b : set) {
            arrayList4.add(c18961b.m2738e());
        }
        f65308e = C18282n.m4114j((Iterable) arrayList4);
    }

    private C19421f() {
    }

    /* renamed from: a */
    public static List<C18966e> m2168a(C18966e name1) {
        C18524p.m3840d(name1, "name1");
        List<C18966e> list = f65306c.get(name1);
        C18297z c18297z = list;
        if (list == null) {
            c18297z = C18297z.f63400a;
        }
        return c18297z;
    }

    /* renamed from: a */
    public static Map<C18961b, C18966e> m2169a() {
        return f65305b;
    }

    /* renamed from: b */
    public static Set<C18961b> m2167b() {
        return f65307d;
    }

    /* renamed from: c */
    public static Set<C18966e> m2166c() {
        return f65308e;
    }
}
