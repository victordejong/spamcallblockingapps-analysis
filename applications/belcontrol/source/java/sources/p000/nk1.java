package p000;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
/* renamed from: nk1 */
/* loaded from: classes3-dex2jar.jar:nk1.class */
public final class nk1 {

    /* renamed from: a */
    public static final Object[] f7152a = new Object[0];

    /* renamed from: a */
    public static final Object[] m1161a(Collection<?> collection) {
        Object[] objArr;
        Object[] objArr2;
        qk1.m744c(collection, "collection");
        int size = collection.size();
        if (size != 0) {
            Iterator<?> it = collection.iterator();
            if (it.hasNext()) {
                objArr = new Object[size];
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    objArr[i] = it.next();
                    if (i2 < objArr.length) {
                        objArr2 = objArr;
                        if (!it.hasNext()) {
                            objArr = Arrays.copyOf(objArr, i2);
                            qk1.m745b(objArr, "Arrays.copyOf(result, size)");
                            break;
                        }
                        i = i2;
                        objArr = objArr2;
                    } else if (!it.hasNext()) {
                        break;
                    } else {
                        int i3 = ((i2 * 3) + 1) >>> 1;
                        int i4 = i3;
                        if (i3 <= i2) {
                            if (i2 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                            i4 = 2147483645;
                        }
                        objArr2 = Arrays.copyOf(objArr, i4);
                        qk1.m745b(objArr2, "Arrays.copyOf(result, newSize)");
                        i = i2;
                        objArr = objArr2;
                    }
                }
                return objArr;
            }
        }
        objArr = f7152a;
        return objArr;
    }

    /* renamed from: b */
    public static final Object[] m1160b(Collection<?> collection, Object[] objArr) {
        Object[] objArr2;
        Object[] objArr3;
        Object[] objArr4;
        qk1.m744c(collection, "collection");
        Objects.requireNonNull(objArr);
        int size = collection.size();
        int i = 0;
        if (size == 0) {
            objArr2 = objArr;
            if (objArr.length > 0) {
                objArr[0] = null;
                objArr2 = objArr;
            }
        } else {
            Iterator<?> it = collection.iterator();
            if (!it.hasNext()) {
                objArr2 = objArr;
                if (objArr.length > 0) {
                    objArr[0] = null;
                    objArr2 = objArr;
                }
            } else {
                if (size <= objArr.length) {
                    objArr3 = objArr;
                } else {
                    Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                    if (newInstance == null) {
                        throw new mj1("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                    }
                    objArr3 = (Object[]) newInstance;
                }
                while (true) {
                    objArr2 = objArr3;
                    int i2 = i + 1;
                    objArr2[i] = it.next();
                    if (i2 < objArr2.length) {
                        objArr4 = objArr2;
                        if (it.hasNext()) {
                            i = i2;
                            objArr3 = objArr4;
                        } else if (objArr2 == objArr) {
                            objArr[i2] = null;
                            objArr2 = objArr;
                        } else {
                            objArr2 = Arrays.copyOf(objArr2, i2);
                            qk1.m745b(objArr2, "Arrays.copyOf(result, size)");
                        }
                    } else if (!it.hasNext()) {
                        break;
                    } else {
                        int i3 = ((i2 * 3) + 1) >>> 1;
                        int i4 = i3;
                        if (i3 <= i2) {
                            if (i2 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                            i4 = 2147483645;
                        }
                        objArr4 = Arrays.copyOf(objArr2, i4);
                        qk1.m745b(objArr4, "Arrays.copyOf(result, newSize)");
                        i = i2;
                        objArr3 = objArr4;
                    }
                }
            }
        }
        return objArr2;
    }
}
