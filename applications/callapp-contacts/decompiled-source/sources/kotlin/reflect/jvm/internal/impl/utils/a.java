package kotlin.reflect.jvm.internal.impl.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/a.class */
public final class a {
    public static final <K, V> HashMap<K, V> a(int i) {
        return new HashMap<>(c(i));
    }

    public static final <T> List<T> a(ArrayList<T> arrayList) {
        p.d(arrayList, "<this>");
        int size = arrayList.size();
        if (size == 0) {
            return z.f36608a;
        }
        if (size == 1) {
            return n.a(n.e((List<? extends Object>) arrayList));
        }
        arrayList.trimToSize();
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K> Map<K, Integer> a(Iterable<? extends K> iterable) {
        p.d(iterable, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<? extends K> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            linkedHashMap.put(it2.next(), Integer.valueOf(i));
            i++;
        }
        return linkedHashMap;
    }

    public static final <T> void a(Collection<T> collection, T t) {
        p.d(collection, "<this>");
        if (t != null) {
            collection.add(t);
        }
    }

    public static final <E> HashSet<E> b(int i) {
        return new HashSet<>(c(i));
    }

    public static final int c(int i) {
        if (i < 3) {
            return 3;
        }
        return i + (i / 3) + 1;
    }
}
