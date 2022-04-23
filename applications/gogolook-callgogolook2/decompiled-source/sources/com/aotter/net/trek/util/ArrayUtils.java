package com.aotter.net.trek.util;

import android.util.ArraySet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/util/ArrayUtils.class */
public class ArrayUtils {

    /* renamed from: a */
    public static final int f1590a = 73;

    /* renamed from: b */
    public static Object[] f1591b = new Object[73];

    @NonNull
    public static <T> ArrayList<T> add(@Nullable ArrayList<T> arrayList, T t) {
        ArrayList<T> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
        }
        arrayList2.add(t);
        return arrayList2;
    }

    @NonNull
    public static int[] appendInt(@Nullable int[] iArr, int i) {
        if (iArr == null) {
            return new int[]{i};
        }
        int length = iArr.length;
        for (int i2 : iArr) {
            if (i2 == i) {
                return iArr;
            }
        }
        int[] iArr2 = new int[length + 1];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        iArr2[length] = i;
        return iArr2;
    }

    @NonNull
    public static long[] appendLong(@Nullable long[] jArr, long j) {
        if (jArr == null) {
            return new long[]{j};
        }
        int length = jArr.length;
        for (long j2 : jArr) {
            if (j2 == j) {
                return jArr;
            }
        }
        long[] jArr2 = new long[length + 1];
        System.arraycopy(jArr, 0, jArr2, 0, length);
        jArr2[length] = j;
        return jArr2;
    }

    @Nullable
    public static long[] cloneOrNull(@Nullable long[] jArr) {
        return jArr != null ? (long[]) jArr.clone() : null;
    }

    public static <T> boolean contains(@Nullable ArraySet<T> arraySet, T t) {
        return arraySet != null ? arraySet.contains(t) : false;
    }

    public static <T> boolean contains(@Nullable Collection<T> collection, T t) {
        return collection != null ? collection.contains(t) : false;
    }

    public static boolean contains(@Nullable int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean contains(@Nullable long[] jArr, long j) {
        if (jArr == null) {
            return false;
        }
        for (long j2 : jArr) {
            if (j2 == j) {
                return true;
            }
        }
        return false;
    }

    public static int[] convertToIntArray(List<Integer> list) {
        int[] iArr = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            iArr[i] = list.get(i).intValue();
        }
        return iArr;
    }

    public static boolean equals(byte[] bArr, byte[] bArr2, int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        } else if (bArr == bArr2) {
            return true;
        } else {
            if (bArr == null || bArr2 == null || bArr.length < i || bArr2.length < i) {
                return false;
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (bArr[i2] != bArr2[i2]) {
                    return false;
                }
            }
            return true;
        }
    }

    public static boolean isEmpty(@Nullable Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean isEmpty(@Nullable byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    public static boolean isEmpty(@Nullable int[] iArr) {
        return iArr == null || iArr.length == 0;
    }

    public static boolean isEmpty(@Nullable long[] jArr) {
        return jArr == null || jArr.length == 0;
    }

    public static <T> boolean isEmpty(@Nullable T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static boolean isEmpty(@Nullable boolean[] zArr) {
        return zArr == null || zArr.length == 0;
    }

    public static <T> boolean referenceEquals(ArrayList<T> arrayList, ArrayList<T> arrayList2) {
        if (arrayList == arrayList2) {
            return true;
        }
        int size = arrayList.size();
        int size2 = arrayList2.size();
        if (arrayList == null || arrayList2 == null || size != size2) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < size && !z; i++) {
            z |= arrayList.get(i) != arrayList2.get(i);
        }
        return !z;
    }

    @Nullable
    public static <T> ArraySet<T> remove(@Nullable ArraySet<T> arraySet, T t) {
        if (arraySet == null) {
            return null;
        }
        arraySet.remove(t);
        if (arraySet.isEmpty()) {
            return null;
        }
        return arraySet;
    }

    @Nullable
    public static <T> ArrayList<T> remove(@Nullable ArrayList<T> arrayList, T t) {
        if (arrayList == null) {
            return null;
        }
        arrayList.remove(t);
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    @Nullable
    public static int[] removeInt(@Nullable int[] iArr, int i) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (iArr[i2] == i) {
                int i3 = length - 1;
                int[] iArr2 = new int[i3];
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, i2);
                }
                if (i2 < i3) {
                    System.arraycopy(iArr, i2 + 1, iArr2, i2, (length - i2) - 1);
                }
                return iArr2;
            }
        }
        return iArr;
    }

    @Nullable
    public static long[] removeLong(@Nullable long[] jArr, long j) {
        if (jArr == null) {
            return null;
        }
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (jArr[i] == j) {
                int i2 = length - 1;
                long[] jArr2 = new long[i2];
                if (i > 0) {
                    System.arraycopy(jArr, 0, jArr2, 0, i);
                }
                if (i < i2) {
                    System.arraycopy(jArr, i + 1, jArr2, i, (length - i) - 1);
                }
                return jArr2;
            }
        }
        return jArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long total(@androidx.annotation.Nullable long[] r5) {
        /*
            r0 = 0
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0025
            r0 = r5
            int r0 = r0.length
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x000f:
            r0 = r6
            r8 = r0
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x0025
            r0 = r6
            r1 = r5
            r2 = r11
            r1 = r1[r2]
            long r0 = r0 + r1
            r6 = r0
            int r11 = r11 + 1
            goto L_0x000f
        L_0x0025:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.trek.util.ArrayUtils.total(long[]):long");
    }

    @Nullable
    public static <T> T[] trimToSize(@Nullable T[] tArr, int i) {
        if (tArr == null || i == 0) {
            return null;
        }
        return tArr.length == i ? tArr : (T[]) Arrays.copyOf(tArr, i);
    }
}
