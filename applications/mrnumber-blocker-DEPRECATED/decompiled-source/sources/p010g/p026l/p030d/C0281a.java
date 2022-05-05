package p010g.p026l.p030d;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p010g.p026l.p027a.AbstractC0264a;
import p010g.p026l.p027a.AbstractC0265b;
/* renamed from: g.l.d.a */
/* loaded from: classes2-dex2jar.jar:g/l/d/a.class */
public class C0281a {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <Type> List<Type> m503a(Collection<Type> collection, Type type, AbstractC0265b<Type, Type, Boolean> bVar) {
        if (collection == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(collection);
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            if (((Boolean) bVar.apply(arrayList.get(i), type)).booleanValue()) {
                arrayList.set(i, type);
                z = true;
            }
        }
        if (!z) {
            arrayList.add(type);
        }
        return arrayList;
    }

    @SafeVarargs
    /* renamed from: b */
    public static <Type> List<Type> m502b(List<Type>... listArr) {
        if (listArr == null || listArr.length == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = new CopyOnWriteArrayList(listArr).iterator();
        while (it.hasNext()) {
            List list = (List) it.next();
            if (m495i(list)) {
                Iterator it2 = new CopyOnWriteArrayList(list).iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static <Type> List<Type> m501c(List<Type> list) {
        if (list == null) {
            return new ArrayList();
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(list);
        ArrayList arrayList = new ArrayList(copyOnWriteArrayList.size());
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    /* renamed from: d */
    public static <Key, Value> Map<Key, Value> m500d(Map<Key, Value> map) {
        if (map == null) {
            return new HashMap();
        }
        Map synchronizedMap = Collections.synchronizedMap(map);
        HashMap hashMap = new HashMap();
        hashMap.putAll(synchronizedMap);
        return hashMap;
    }

    /* renamed from: e */
    public static <Type> List<Type> m499e(List<Type> list) {
        List<Type> list2 = list;
        if (m497g(list)) {
            list2 = new ArrayList<>();
        }
        return list2;
    }

    /* renamed from: f */
    public static <Type> List<Type> m498f(Collection<Type> collection, AbstractC0264a<Type, Boolean> aVar) {
        if (collection == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (Type type : collection) {
            if (aVar.apply(type).booleanValue()) {
                arrayList.add(type);
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public static <Type> boolean m497g(Collection<Type> collection) {
        return collection == null || collection.isEmpty();
    }

    /* renamed from: h */
    public static <Type> boolean m496h(Type[] typeArr) {
        return typeArr == null || typeArr.length == 0;
    }

    /* renamed from: i */
    public static <Type> boolean m495i(Collection<Type> collection) {
        return !m497g(collection);
    }

    /* renamed from: j */
    public static <Type> boolean m494j(Type[] typeArr) {
        return !m496h(typeArr);
    }

    /* renamed from: k */
    public static <Type, Return> List<Return> m493k(Collection<Type> collection, AbstractC0264a<Type, Return> aVar) {
        if (collection == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (Type type : collection) {
            arrayList.add(aVar.apply(type));
        }
        return arrayList;
    }

    /* renamed from: l */
    public static <Type> List<Type> m492l(List<Type> list) {
        return Collections.unmodifiableList(m499e(list));
    }
}
