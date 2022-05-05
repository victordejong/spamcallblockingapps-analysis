package p626l.p632u;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p626l.C14978j;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.e0 */
/* loaded from: classes3-dex2jar.jar:l/u/e0.class */
public class C15005e0 extends C15003d0 {
    /* renamed from: a */
    public static final <K, V> Map<K, V> m629a() {
        C15033x xVar = C15033x.f33067a;
        if (xVar != null) {
            return xVar;
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.collections.Map<K, V>");
    }

    /* renamed from: a */
    public static final <K, V> Map<K, V> m628a(Iterable<? extends C14978j<? extends K, ? extends V>> iterable) {
        Map<K, V> map;
        C15149k.m377b(iterable, "$this$toMap");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                map = m629a();
            } else if (size != 1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(C15003d0.m633a(collection.size()));
                m627a(iterable, linkedHashMap);
                map = linkedHashMap;
            } else {
                map = C15003d0.m631a((C14978j) (iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next()));
            }
            return map;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        m627a(iterable, linkedHashMap2);
        return m622b(linkedHashMap2);
    }

    /* renamed from: a */
    public static final <K, V, M extends Map<? super K, ? super V>> M m627a(Iterable<? extends C14978j<? extends K, ? extends V>> iterable, M m) {
        C15149k.m377b(iterable, "$this$toMap");
        C15149k.m377b(m, "destination");
        m626a(m, iterable);
        return m;
    }

    /* renamed from: a */
    public static final <K, V> Map<K, V> m624a(C14978j<? extends K, ? extends V>... jVarArr) {
        Map<K, V> map;
        C15149k.m377b(jVarArr, "pairs");
        if (jVarArr.length > 0) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(C15003d0.m633a(jVarArr.length));
            m623a(jVarArr, linkedHashMap);
            map = linkedHashMap;
        } else {
            map = m629a();
        }
        return map;
    }

    /* renamed from: a */
    public static final <K, V, M extends Map<? super K, ? super V>> M m623a(C14978j<? extends K, ? extends V>[] jVarArr, M m) {
        C15149k.m377b(jVarArr, "$this$toMap");
        C15149k.m377b(m, "destination");
        m625a(m, jVarArr);
        return m;
    }

    /* renamed from: a */
    public static final <K, V> void m626a(Map<? super K, ? super V> map, Iterable<? extends C14978j<? extends K, ? extends V>> iterable) {
        C15149k.m377b(map, "$this$putAll");
        C15149k.m377b(iterable, "pairs");
        Iterator<? extends C14978j<? extends K, ? extends V>> it = iterable.iterator();
        while (it.hasNext()) {
            C14978j jVar = (C14978j) it.next();
            map.put((Object) jVar.m661a(), (Object) jVar.m660b());
        }
    }

    /* renamed from: a */
    public static final <K, V> void m625a(Map<? super K, ? super V> map, C14978j<? extends K, ? extends V>[] jVarArr) {
        C15149k.m377b(map, "$this$putAll");
        C15149k.m377b(jVarArr, "pairs");
        for (C14978j<? extends K, ? extends V> jVar : jVarArr) {
            map.put((Object) jVar.m661a(), (Object) jVar.m660b());
        }
    }

    /* renamed from: b */
    public static final <K, V> Map<K, V> m622b(Map<K, ? extends V> map) {
        Object obj;
        C15149k.m377b(map, "$this$optimizeReadOnlyMap");
        int size = map.size();
        if (size != 0) {
            obj = map;
            if (size == 1) {
                obj = (Map<K, V>) C15003d0.m632a(map);
            }
        } else {
            obj = (Map<K, V>) m629a();
        }
        return (Map<K, V>) obj;
    }

    /* renamed from: b */
    public static final <K, V> Map<K, V> m621b(C14978j<? extends K, ? extends V>... jVarArr) {
        C15149k.m377b(jVarArr, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(C15003d0.m633a(jVarArr.length));
        m625a(linkedHashMap, jVarArr);
        return linkedHashMap;
    }
}
