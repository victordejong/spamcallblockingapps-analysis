package p131c.p161d.p266c.p269c;

import java.util.Collection;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.o */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/o.class */
public final class C5008o {
    /* renamed from: a */
    public static String m24656a(Collection<?> collection) {
        StringBuilder a = m24658a(collection.size());
        a.append('[');
        boolean z = true;
        for (Object obj : collection) {
            if (!z) {
                a.append(", ");
            }
            z = false;
            if (obj == collection) {
                a.append("(this Collection)");
            } else {
                a.append(obj);
            }
        }
        a.append(']');
        return a.toString();
    }

    /* renamed from: a */
    public static StringBuilder m24658a(int i) {
        C5006n.m24663a(i, "size");
        return new StringBuilder((int) Math.min(i * 8, 1073741824L));
    }

    /* renamed from: a */
    public static <T> Collection<T> m24657a(Iterable<T> iterable) {
        return (Collection) iterable;
    }

    /* renamed from: a */
    public static boolean m24655a(Collection<?> collection, Object obj) {
        C4933n.m24795a(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m24654a(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static boolean m24653b(Collection<?> collection, Object obj) {
        C4933n.m24795a(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }
}
