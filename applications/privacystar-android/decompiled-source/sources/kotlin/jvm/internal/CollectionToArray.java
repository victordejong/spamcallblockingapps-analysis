package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��2\n��\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH\u0007¢\u0006\u0004\b\t\u0010\n\u001a5\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\t\u0010\f\u001a~\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0014\u0010\u000e\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u000f2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u00112(\u0010\u0012\u001a$\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u0013H\u0082\b¢\u0006\u0002\u0010\u0014\"\u0018\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n��¨\u0006\u0015"}, m254d2 = {"EMPTY", "", "", "[Ljava/lang/Object;", "MAX_SIZE", "", "collectionToArray", "collection", "", "toArray", "(Ljava/util/Collection;)[Ljava/lang/Object;", "a", "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;", "toArrayImpl", "empty", "Lkotlin/Function0;", "alloc", "Lkotlin/Function1;", "trim", "Lkotlin/Function2;", "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "CollectionToArray")
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/CollectionToArray.class */
public final class CollectionToArray {
    private static final Object[] EMPTY = new Object[0];
    private static final int MAX_SIZE = 2147483645;

    @JvmName(name = "toArray")
    @NotNull
    public static final Object[] toArray(@NotNull Collection<?> collection) {
        Object[] objArr;
        Intrinsics.checkParameterIsNotNull(collection, "collection");
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
                            Intrinsics.checkExpressionValueIsNotNull(objArr, "Arrays.copyOf(result, size)");
                            break;
                        }
                        i = i2;
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
                        objArr = Arrays.copyOf(objArr, i4);
                        Intrinsics.checkExpressionValueIsNotNull(objArr, "Arrays.copyOf(result, newSize)");
                        i = i2;
                    }
                }
                return objArr;
            }
        }
        objArr = EMPTY;
        return objArr;
    }

    @JvmName(name = "toArray")
    @NotNull
    public static final Object[] toArray(@NotNull Collection<?> collection, @Nullable Object[] objArr) {
        Object[] objArr2;
        Intrinsics.checkParameterIsNotNull(collection, "collection");
        if (objArr == null) {
            throw new NullPointerException();
        }
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
                    if (newInstance == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                    }
                    objArr2 = (Object[]) newInstance;
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
                            Intrinsics.checkExpressionValueIsNotNull(objArr2, "Arrays.copyOf(result, size)");
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
                        objArr2 = Arrays.copyOf(objArr2, i4);
                        Intrinsics.checkExpressionValueIsNotNull(objArr2, "Arrays.copyOf(result, newSize)");
                        i = i2;
                    }
                }
            }
        }
        return objArr2;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object[], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.Object[] toArrayImpl(java.util.Collection<?> r4, kotlin.jvm.functions.Function0<java.lang.Object[]> r5, kotlin.jvm.functions.Function1<? super java.lang.Integer, java.lang.Object[]> r6, kotlin.jvm.functions.Function2<? super java.lang.Object[], ? super java.lang.Integer, java.lang.Object[]> r7) {
        /*
            r0 = r4
            int r0 = r0.size()
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0017
            r0 = r5
            java.lang.Object r0 = r0.invoke()
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            return r0
        L_0x0017:
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x0033
            r0 = r5
            java.lang.Object r0 = r0.invoke()
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            return r0
        L_0x0033:
            r0 = r6
            r1 = r8
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r0 = r0.invoke(r1)
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            r4 = r0
            r0 = 0
            r8 = r0
        L_0x0045:
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
            r0 = r4
            r1 = r8
            r2 = r9
            java.lang.Object r2 = r2.next()
            r0[r1] = r2
            r0 = r10
            r1 = r4
            int r1 = r1.length
            if (r0 < r1) goto L_0x00a4
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x0069
            r0 = r4
            return r0
        L_0x0069:
            r0 = r10
            r1 = 3
            int r0 = r0 * r1
            r1 = 1
            int r0 = r0 + r1
            r1 = 1
            int r0 = r0 >>> r1
            r11 = r0
            r0 = r11
            r8 = r0
            r0 = r11
            r1 = r10
            if (r0 > r1) goto L_0x0094
            r0 = r10
            r1 = 2147483645(0x7ffffffd, float:NaN)
            if (r0 < r1) goto L_0x0090
            java.lang.OutOfMemoryError r0 = new java.lang.OutOfMemoryError
            r1 = r0
            r1.<init>()
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L_0x0090:
            r0 = 2147483645(0x7ffffffd, float:NaN)
            r8 = r0
        L_0x0094:
            r0 = r4
            r1 = r8
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "Arrays.copyOf(result, newSize)"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            goto L_0x00c0
        L_0x00a4:
            r0 = r4
            r5 = r0
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x00c0
            r0 = r7
            r1 = r4
            r2 = r10
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.invoke(r1, r2)
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            return r0
        L_0x00c0:
            r0 = r10
            r8 = r0
            r0 = r5
            r4 = r0
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.CollectionToArray.toArrayImpl(java.util.Collection, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2):java.lang.Object[]");
    }
}
