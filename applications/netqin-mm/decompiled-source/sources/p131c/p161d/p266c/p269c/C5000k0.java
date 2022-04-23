package p131c.p161d.p266c.p269c;

import java.util.Collection;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.k0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/k0.class */
public final class C5000k0 {
    /* renamed from: a */
    public static Object m24709a(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i);
    }

    /* renamed from: a */
    public static Object[] m24710a(Iterable<?> iterable, Object[] objArr) {
        Iterator<?> it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return objArr;
    }

    /* renamed from: a */
    public static Object[] m24708a(Collection<?> collection) {
        Object[] objArr = new Object[collection.size()];
        m24710a((Iterable<?>) collection, objArr);
        return objArr;
    }

    /* renamed from: a */
    public static <T> T[] m24707a(Collection<?> collection, T[] tArr) {
        int size = collection.size();
        T[] tArr2 = tArr;
        if (tArr.length < size) {
            tArr2 = (T[]) m24703b(tArr, size);
        }
        m24710a((Iterable<?>) collection, (Object[]) tArr2);
        if (tArr2.length > size) {
            tArr2[size] = null;
        }
        return tArr2;
    }

    /* renamed from: a */
    public static Object[] m24706a(Object... objArr) {
        m24705a(objArr, objArr.length);
        return objArr;
    }

    /* renamed from: a */
    public static Object[] m24705a(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m24709a(objArr[i2], i2);
        }
        return objArr;
    }

    /* renamed from: a */
    public static <T> T[] m24704a(Object[] objArr, int i, int i2, T[] tArr) {
        T[] tArr2;
        C4933n.m24778b(i, i + i2, objArr.length);
        if (tArr.length < i2) {
            tArr2 = (T[]) m24703b(tArr, i2);
        } else {
            tArr2 = tArr;
            if (tArr.length > i2) {
                tArr[i2] = null;
                tArr2 = tArr;
            }
        }
        System.arraycopy(objArr, i, tArr2, 0, i2);
        return tArr2;
    }

    /* renamed from: b */
    public static <T> T[] m24703b(T[] tArr, int i) {
        return (T[]) C5009o0.m24649a(tArr, i);
    }
}
