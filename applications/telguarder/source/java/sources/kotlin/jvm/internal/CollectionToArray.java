package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��2\n��\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0007¢\u0006\u0004\b\t\u0010\n\u001a5\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\t\u0010\f\u001a~\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0014\u0010\u000e\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u000f2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u00112(\u0010\u0012\u001a$\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u0013H\u0082\b¢\u0006\u0002\u0010\u0014\"\u0018\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n��¨\u0006\u0015"}, m400d2 = {"EMPTY", "", "", "[Ljava/lang/Object;", "MAX_SIZE", "", "collectionToArray", "collection", "", "toArray", "(Ljava/util/Collection;)[Ljava/lang/Object;", "a", "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;", "toArrayImpl", "empty", "Lkotlin/Function0;", "alloc", "Lkotlin/Function1;", "trim", "Lkotlin/Function2;", "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/jvm/internal/CollectionToArray.class */
public final class CollectionToArray {
    private static final Object[] EMPTY = new Object[0];
    private static final int MAX_SIZE = 2147483645;

    public static final Object[] toArray(Collection<?> collection) {
        Object[] objArr;
        Object[] objArr2;
        Intrinsics.checkNotNullParameter(collection, "collection");
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
                            Intrinsics.checkNotNullExpressionValue(objArr, "Arrays.copyOf(result, size)");
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
                            if (i2 >= MAX_SIZE) {
                                throw new OutOfMemoryError();
                            }
                            i4 = MAX_SIZE;
                        }
                        objArr2 = Arrays.copyOf(objArr, i4);
                        Intrinsics.checkNotNullExpressionValue(objArr2, "Arrays.copyOf(result, newSize)");
                        i = i2;
                        objArr = objArr2;
                    }
                }
                return objArr;
            }
        }
        objArr = EMPTY;
        return objArr;
    }

    public static final Object[] toArray(Collection<?> collection, Object[] objArr) {
        Object[] objArr2;
        Object[] objArr3;
        Object[] objArr4;
        Intrinsics.checkNotNullParameter(collection, "collection");
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
                        objArr3 = objArr;
                    } else {
                        Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                        Objects.requireNonNull(newInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
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
                                Intrinsics.checkNotNullExpressionValue(objArr2, "Arrays.copyOf(result, size)");
                            }
                        } else if (!it.hasNext()) {
                            break;
                        } else {
                            int i3 = ((i2 * 3) + 1) >>> 1;
                            int i4 = i3;
                            if (i3 <= i2) {
                                if (i2 >= MAX_SIZE) {
                                    throw new OutOfMemoryError();
                                }
                                i4 = MAX_SIZE;
                            }
                            objArr4 = Arrays.copyOf(objArr2, i4);
                            Intrinsics.checkNotNullExpressionValue(objArr4, "Arrays.copyOf(result, newSize)");
                            i = i2;
                            objArr3 = objArr4;
                        }
                    }
                }
            }
            return objArr2;
        }
        throw new NullPointerException();
    }

    private static final Object[] toArrayImpl(Collection<?> collection, Function0<Object[]> function0, Function1<? super Integer, Object[]> function1, Function2<? super Object[], ? super Integer, Object[]> function2) {
        Object[] objArr;
        int size = collection.size();
        if (size == 0) {
            return function0.invoke();
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            return function0.invoke();
        }
        Object obj = (Object[]) function1.invoke(Integer.valueOf(size));
        int i = 0;
        while (true) {
            int i2 = i + 1;
            obj[i] = it.next();
            if (i2 < obj.length) {
                objArr = obj;
                if (!it.hasNext()) {
                    return function2.invoke(obj, Integer.valueOf(i2));
                }
            } else if (!it.hasNext()) {
                return obj;
            } else {
                int i3 = ((i2 * 3) + 1) >>> 1;
                int i4 = i3;
                if (i3 <= i2) {
                    if (i2 >= MAX_SIZE) {
                        throw new OutOfMemoryError();
                    }
                    i4 = MAX_SIZE;
                }
                objArr = Arrays.copyOf(obj, i4);
                Intrinsics.checkNotNullExpressionValue(objArr, "Arrays.copyOf(result, newSize)");
            }
            i = i2;
            obj = objArr;
        }
    }
}
