package p626l.p641z.p643d;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import p626l.C14986p;
/* renamed from: l.z.d.f */
/* loaded from: classes3-dex2jar.jar:l/z/d/f.class */
public final class C15144f {

    /* renamed from: a */
    public static final Object[] f33139a = new Object[0];

    /* renamed from: a */
    public static final Object[] m392a(Collection<?> collection) {
        Object[] objArr;
        C15149k.m377b(collection, "collection");
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
                        objArr = objArr;
                        if (!it.hasNext()) {
                            objArr = Arrays.copyOf(objArr, i2);
                            C15149k.m383a((Object) objArr, "Arrays.copyOf(result, size)");
                            break;
                        }
                        i = i2;
                    } else if (!it.hasNext()) {
                        break;
                    } else {
                        int i3 = ((i2 * 3) + 1) >>> 1;
                        int i4 = i3;
                        if (i3 <= i2) {
                            if (i2 < 2147483645) {
                                i4 = 2147483645;
                            } else {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArr = Arrays.copyOf(objArr, i4);
                        C15149k.m383a((Object) objArr, "Arrays.copyOf(result, newSize)");
                        i = i2;
                    }
                }
                return objArr;
            }
        }
        objArr = f33139a;
        return objArr;
    }

    /* renamed from: a */
    public static final Object[] m391a(Collection<?> collection, Object[] objArr) {
        Object[] objArr2;
        C15149k.m377b(collection, "collection");
        if (objArr != null) {
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
                        objArr2 = objArr;
                    } else {
                        Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                        if (newInstance != null) {
                            objArr2 = (Object[]) newInstance;
                        } else {
                            throw new C14986p("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                        }
                    }
                    while (true) {
                        int i2 = i + 1;
                        objArr2[i] = it.next();
                        if (i2 < objArr2.length) {
                            objArr2 = objArr2;
                            if (it.hasNext()) {
                                i = i2;
                            } else if (objArr2 == objArr) {
                                objArr[i2] = null;
                                objArr2 = objArr;
                            } else {
                                objArr2 = Arrays.copyOf(objArr2, i2);
                                C15149k.m383a((Object) objArr2, "Arrays.copyOf(result, size)");
                            }
                        } else if (!it.hasNext()) {
                            break;
                        } else {
                            int i3 = ((i2 * 3) + 1) >>> 1;
                            int i4 = i3;
                            if (i3 <= i2) {
                                if (i2 < 2147483645) {
                                    i4 = 2147483645;
                                } else {
                                    throw new OutOfMemoryError();
                                }
                            }
                            objArr2 = Arrays.copyOf(objArr2, i4);
                            C15149k.m383a((Object) objArr2, "Arrays.copyOf(result, newSize)");
                            i = i2;
                        }
                    }
                }
            }
            return objArr2;
        }
        throw new NullPointerException();
    }
}
