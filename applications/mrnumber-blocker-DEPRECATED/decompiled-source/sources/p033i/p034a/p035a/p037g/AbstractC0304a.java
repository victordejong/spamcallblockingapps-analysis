package p033i.p034a.p035a.p037g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: i.a.a.g.a */
/* loaded from: classes2-dex2jar.jar:i/a/a/g/a.class */
public abstract class AbstractC0304a<K, V> {
    /* renamed from: b */
    private static <K> int m449b(K k, K k2, Comparator<K> comparator) {
        if (k == null) {
            return k2 == null ? 0 : -1;
        } else if (k2 == null) {
            return 1;
        } else {
            return comparator.compare(k, k2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    private static <K> List<Object> m447d(Object[] objArr, boolean z, Comparator<K> comparator) {
        ArrayList arrayList = new ArrayList(objArr.length);
        Object obj = null;
        for (int length = objArr.length - 2; length >= 0; length -= 2) {
            Object obj2 = objArr[length];
            Object obj3 = objArr[length + 1];
            if (obj2 != null && (obj == null || comparator.compare(obj2, obj) != 0)) {
                if (!z || obj3 != null) {
                    arrayList.add(obj3);
                    arrayList.add(obj2);
                }
                obj = obj2;
            }
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    /* renamed from: f */
    private static <K> void m445f(Object[] objArr, int i, int i2, int i3, Object[] objArr2, Comparator<K> comparator) {
        int i4 = i;
        int i5 = i2;
        while (i < i3) {
            if (i4 >= i2 - 1 || (i5 < i3 - 1 && m449b(objArr[i4], objArr[i5], comparator) > 0)) {
                objArr2[i] = objArr[i5];
                objArr2[i + 1] = objArr[i5 + 1];
                i5 += 2;
            } else {
                objArr2[i] = objArr[i4];
                objArr2[i + 1] = objArr[i4 + 1];
                i4 += 2;
            }
            i += 2;
        }
    }

    /* renamed from: g */
    private static void m444g(Object[] objArr, Comparator<?> comparator) {
        m443h(objArr, new Object[objArr.length], objArr.length, comparator);
    }

    /* renamed from: h */
    private static void m443h(Object[] objArr, Object[] objArr2, int i, Comparator<?> comparator) {
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        m440k(objArr2, 0, i, objArr, comparator);
    }

    /* renamed from: i */
    public static List<Object> m442i(Object[] objArr, boolean z) {
        return m441j(objArr, z, Comparator.naturalOrder());
    }

    /* renamed from: j */
    public static List<Object> m441j(Object[] objArr, boolean z, Comparator<?> comparator) {
        C0306c.m436a(objArr.length % 2 == 0, "You must provide an even number of key/value pair arguments.");
        m444g(objArr, comparator);
        return m447d(objArr, z, comparator);
    }

    /* renamed from: k */
    private static void m440k(Object[] objArr, int i, int i2, Object[] objArr2, Comparator<?> comparator) {
        if (i2 - i > 2) {
            int i3 = ((i2 + i) / 4) * 2;
            m440k(objArr2, i, i3, objArr, comparator);
            m440k(objArr2, i3, i2, objArr, comparator);
            m445f(objArr, i, i3, i2, objArr2, comparator);
        }
    }

    /* renamed from: c */
    protected abstract List<Object> m448c();

    /* renamed from: e */
    public V m446e(K k) {
        for (int i = 0; i < m448c().size(); i += 2) {
            if (k.equals(m448c().get(i))) {
                return (V) m448c().get(i + 1);
            }
        }
        return null;
    }

    public boolean isEmpty() {
        return m448c().isEmpty();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{");
        List<Object> c = m448c();
        for (int i = 0; i < c.size(); i += 2) {
            Object obj = c.get(i + 1);
            String obj2 = obj instanceof String ? '\"' + ((String) obj) + '\"' : obj.toString();
            sb.append(c.get(i));
            sb.append("=");
            sb.append(obj2);
            sb.append(", ");
        }
        if (sb.length() > 1) {
            sb.setLength(sb.length() - 2);
        }
        sb.append("}");
        return sb.toString();
    }
}
