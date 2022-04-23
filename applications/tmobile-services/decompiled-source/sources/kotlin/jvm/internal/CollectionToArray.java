package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0010\u001e\n��\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\b\u001a#\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030��H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a5\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030��2\u0010\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0004\u0010\b\u001a\u0080\u0001\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030��2\u0014\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\t2\u001a\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u000b2(\u0010\u000f\u001a$\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u000eH\u0082\b¢\u0006\u0004\b\u0010\u0010\u0011\"\u001e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013\"\u0016\u0010\u0014\u001a\u00020\f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"", "collection", "", "", "toArray", "(Ljava/util/Collection;)[Ljava/lang/Object;", "collectionToArray", "a", "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;", "Lkotlin/Function0;", "empty", "Lkotlin/Function1;", "", "alloc", "Lkotlin/Function2;", "trim", "toArrayImpl", "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;", "EMPTY", "[Ljava/lang/Object;", "MAX_SIZE", "I", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/CollectionToArray.class */
public final class CollectionToArray {

    /* renamed from: a */
    private static final Object[] f20740a = new Object[0];

    @JvmName
    @NotNull
    /* renamed from: a */
    public static final Object[] m1848a(@NotNull Collection<?> collection) {
        Object[] objArr;
        Intrinsics.m1830e(collection, "collection");
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
                            Intrinsics.m1831d(objArr, "Arrays.copyOf(result, size)");
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
                        Intrinsics.m1831d(objArr, "Arrays.copyOf(result, newSize)");
                        i = i2;
                    }
                }
                return objArr;
            }
        }
        objArr = f20740a;
        return objArr;
    }

    @JvmName
    @NotNull
    /* renamed from: b */
    public static final Object[] m1847b(@NotNull Collection<?> collection, @Nullable Object[] objArr) {
        Object[] objArr2;
        Intrinsics.m1830e(collection, "collection");
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
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
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
                                Intrinsics.m1831d(objArr2, "Arrays.copyOf(result, size)");
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
                            Intrinsics.m1831d(objArr2, "Arrays.copyOf(result, newSize)");
                            i = i2;
                        }
                    }
                }
            }
            return objArr2;
        }
        throw null;
    }
}
