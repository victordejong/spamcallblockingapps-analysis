package com.google.a.b;

import com.google.a.a.a;
import com.google.a.a.b;
import com.google.a.a.d;
import com.google.a.b.p;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/a/b/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static final b f3692a = b.a(", ");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(final Collection<?> collection) {
        StringBuilder append = a(collection.size()).append('[');
        b bVar = f3692a;
        final a<Object, Object> aVar = new a<Object, Object>() { // from class: com.google.a.b.e.1
            @Override // com.google.a.a.a
            public final Object a(Object obj) {
                Object obj2 = obj;
                if (obj == collection) {
                    obj2 = "(this Collection)";
                }
                return obj2;
            }
        };
        d.a(collection);
        d.a(aVar);
        bVar.a(append, new p.a<T>() { // from class: com.google.a.b.p.2
            @Override // java.lang.Iterable
            public final Iterator<T> iterator() {
                return q.a(collection.iterator(), aVar);
            }
        });
        return append.append(']').toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder a(int i) {
        if (i >= 0) {
            return new StringBuilder((int) Math.min(i * 8, 1073741824L));
        }
        throw new IllegalArgumentException(String.valueOf("size must be non-negative"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Collection<?> collection, Collection<?> collection2) {
        boolean z;
        d.a(collection);
        Iterator<?> it = collection2.iterator();
        while (true) {
            if (it.hasNext()) {
                if (!collection.contains(it.next())) {
                    z = false;
                    break;
                }
            } else {
                z = true;
                break;
            }
        }
        return z;
    }
}
