package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n��\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0007¢\u0006\u0004\b\t\u0010\n\u001a5\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\t\u0010\f\u001a~\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0014\u0010\u000e\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u000f2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u00112(\u0010\u0012\u001a$\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u0013H\u0082\b¢\u0006\u0002\u0010\u0014\"\u0018\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"EMPTY", "", "", "[Ljava/lang/Object;", "MAX_SIZE", "", "collectionToArray", "collection", "", "toArray", "(Ljava/util/Collection;)[Ljava/lang/Object;", "a", "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;", "toArrayImpl", "empty", "Lkotlin/Function0;", "alloc", "Lkotlin/Function1;", "trim", "Lkotlin/Function2;", "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.jvm.internal.i */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/i.class */
public final class C18517i {

    /* renamed from: a */
    private static final Object[] f63618a = new Object[0];

    /* renamed from: a */
    public static final Object[] m3857a(Collection<?> collection) {
        Object[] objArr;
        C18524p.m3840d(collection, "collection");
        int size = collection.size();
        if (size == 0) {
            return f63618a;
        }
        Iterator<?> it2 = collection.iterator();
        if (!it2.hasNext()) {
            return f63618a;
        }
        Object[] objArr2 = new Object[size];
        int i = 0;
        while (true) {
            int i2 = i + 1;
            objArr2[i] = it2.next();
            if (i2 < objArr2.length) {
                objArr = objArr2;
                if (!it2.hasNext()) {
                    Object[] copyOf = Arrays.copyOf(objArr2, i2);
                    C18524p.m3843b(copyOf, "Arrays.copyOf(result, size)");
                    return copyOf;
                }
            } else if (!it2.hasNext()) {
                return objArr2;
            } else {
                int i3 = ((i2 * 3) + 1) >>> 1;
                int i4 = i3;
                if (i3 <= i2) {
                    if (i2 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                    i4 = 2147483645;
                }
                objArr = Arrays.copyOf(objArr2, i4);
                C18524p.m3843b(objArr, "Arrays.copyOf(result, newSize)");
            }
            i = i2;
            objArr2 = objArr;
        }
    }

    /* renamed from: a */
    public static final Object[] m3856a(Collection<?> collection, Object[] objArr) {
        Object[] objArr2;
        Object[] objArr3;
        C18524p.m3840d(collection, "collection");
        if (objArr != null) {
            int size = collection.size();
            int i = 0;
            if (size == 0) {
                if (objArr.length > 0) {
                    objArr[0] = null;
                }
                return objArr;
            }
            Iterator<?> it2 = collection.iterator();
            if (!it2.hasNext()) {
                if (objArr.length > 0) {
                    objArr[0] = null;
                }
                return objArr;
            }
            if (size <= objArr.length) {
                objArr2 = objArr;
            } else {
                Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                Objects.requireNonNull(newInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                objArr2 = (Object[]) newInstance;
            }
            while (true) {
                Object[] objArr4 = objArr2;
                int i2 = i + 1;
                objArr4[i] = it2.next();
                if (i2 < objArr4.length) {
                    objArr3 = objArr4;
                    if (!it2.hasNext()) {
                        if (objArr4 == objArr) {
                            objArr[i2] = null;
                            return objArr;
                        }
                        Object[] copyOf = Arrays.copyOf(objArr4, i2);
                        C18524p.m3843b(copyOf, "Arrays.copyOf(result, size)");
                        return copyOf;
                    }
                } else if (!it2.hasNext()) {
                    return objArr4;
                } else {
                    int i3 = ((i2 * 3) + 1) >>> 1;
                    int i4 = i3;
                    if (i3 <= i2) {
                        if (i2 >= 2147483645) {
                            throw new OutOfMemoryError();
                        }
                        i4 = 2147483645;
                    }
                    objArr3 = Arrays.copyOf(objArr4, i4);
                    C18524p.m3843b(objArr3, "Arrays.copyOf(result, newSize)");
                }
                i = i2;
                objArr2 = objArr3;
            }
        } else {
            throw new NullPointerException();
        }
    }
}
