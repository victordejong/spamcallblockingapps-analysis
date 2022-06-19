package kotlin.reflect.jvm.internal.impl.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
/* renamed from: kotlin.reflect.jvm.internal.impl.utils.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/a.class */
public final class C19999a {
    /* renamed from: a */
    public static final <K, V> HashMap<K, V> m1211a(int i) {
        return new HashMap<>(m1206c(i));
    }

    /* renamed from: a */
    public static final <T> List<T> m1209a(ArrayList<T> arrayList) {
        C18524p.m3840d(arrayList, "<this>");
        int size = arrayList.size();
        if (size != 0) {
            if (size == 1) {
                return C18282n.m4176a(C18282n.m4123e((List<? extends Object>) arrayList));
            }
            arrayList.trimToSize();
            return arrayList;
        }
        return C18297z.f63400a;
    }

    /* renamed from: a */
    public static final <K> Map<K, Integer> m1210a(Iterable<? extends K> iterable) {
        C18524p.m3840d(iterable, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 0;
        for (K k : iterable) {
            linkedHashMap.put(k, Integer.valueOf(i));
            i++;
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    public static final <T> void m1208a(Collection<T> collection, T t) {
        C18524p.m3840d(collection, "<this>");
        if (t != null) {
            collection.add(t);
        }
    }

    /* renamed from: b */
    public static final <E> HashSet<E> m1207b(int i) {
        return new HashSet<>(m1206c(i));
    }

    /* renamed from: c */
    public static final int m1206c(int i) {
        if (i < 3) {
            return 3;
        }
        return i + (i / 3) + 1;
    }
}
