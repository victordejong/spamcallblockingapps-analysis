package com.google.android.gms.common.util;

import com.google.android.gms.common.internal.Objects;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ArrayUtils.class */
public final class ArrayUtils {
    private ArrayUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object[]] */
    public static <T> T[] appendToArray(T[] tArr, T t) {
        if (tArr == null && t == null) {
            throw new IllegalArgumentException("Cannot generate array of generic type w/o class info");
        }
        T[] copyOf = tArr == null ? (Object[]) Array.newInstance(t.getClass(), 1) : Arrays.copyOf(tArr, tArr.length + 1);
        copyOf[copyOf.length - 1] = t;
        return copyOf;
    }

    public static <T> T[] concat(T[]... tArr) {
        if (tArr.length != 0) {
            int i = 0;
            for (T[] tArr2 : tArr) {
                i += tArr2.length;
            }
            T[] tArr3 = (T[]) Arrays.copyOf(tArr[0], i);
            int length = tArr[0].length;
            for (int i2 = 1; i2 < tArr.length; i2++) {
                T[] tArr4 = tArr[i2];
                int length2 = tArr4.length;
                System.arraycopy(tArr4, 0, tArr3, length, length2);
                length += length2;
            }
            return tArr3;
        }
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass(), 0));
    }

    public static byte[] concatByteArrays(byte[]... bArr) {
        if (bArr.length != 0) {
            int i = 0;
            for (byte[] bArr2 : bArr) {
                i += bArr2.length;
            }
            byte[] copyOf = Arrays.copyOf(bArr[0], i);
            int length = bArr[0].length;
            for (int i2 = 1; i2 < bArr.length; i2++) {
                byte[] bArr3 = bArr[i2];
                int length2 = bArr3.length;
                System.arraycopy(bArr3, 0, copyOf, length, length2);
                length += length2;
            }
            return copyOf;
        }
        return new byte[0];
    }

    public static boolean contains(int[] iArr, int i) {
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

    public static <T> boolean contains(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (i < length) {
            if (Objects.equal(tArr[i], t)) {
                return i >= 0;
            }
            i++;
        }
        return false;
    }

    public static <T> ArrayList<T> newArrayList() {
        return new ArrayList<>();
    }

    public static <T> T[] removeAll(T[] tArr, T... tArr2) {
        int length;
        int i;
        Object[] objArr;
        int i2;
        if (tArr == null) {
            return null;
        }
        if (tArr2 == null || (length = tArr2.length) == 0) {
            return (T[]) Arrays.copyOf(tArr, tArr.length);
        }
        Class<?> componentType = tArr2.getClass().getComponentType();
        int length2 = tArr.length;
        Object[] objArr2 = (Object[]) Array.newInstance(componentType, length2);
        int i3 = 0;
        if (length == 1) {
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int i6 = i5;
                i = i6;
                if (i4 >= length2) {
                    break;
                }
                T t = tArr[i4];
                int i7 = i6;
                if (!Objects.equal(tArr2[0], t)) {
                    objArr2[i6] = t;
                    i7 = i6 + 1;
                }
                i4++;
                i5 = i7;
            }
        } else {
            int i8 = 0;
            while (true) {
                i2 = i8;
                if (i3 >= length2) {
                    break;
                }
                T t2 = tArr[i3];
                int i9 = i2;
                if (!contains(tArr2, t2)) {
                    objArr2[i2] = t2;
                    i9 = i2 + 1;
                }
                i3++;
                i8 = i9;
            }
            i = i2;
        }
        if (objArr2 == null) {
            objArr = null;
        } else if (i != objArr2.length) {
            return (T[]) Arrays.copyOf(objArr2, i);
        } else {
            objArr = objArr2;
        }
        return (T[]) objArr;
    }

    public static <T> ArrayList<T> toArrayList(T[] tArr) {
        ArrayList<T> arrayList = new ArrayList<>(tArr.length);
        for (T t : tArr) {
            arrayList.add(t);
        }
        return arrayList;
    }

    public static int[] toPrimitiveArray(Collection<Integer> collection) {
        int i = 0;
        if (collection == null || collection.size() == 0) {
            return new int[0];
        }
        int[] iArr = new int[collection.size()];
        for (Integer num : collection) {
            iArr[i] = num.intValue();
            i++;
        }
        return iArr;
    }

    public static Integer[] toWrapperArray(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        Integer[] numArr = new Integer[length];
        for (int i = 0; i < length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    public static void writeArray(StringBuilder sb, double[] dArr) {
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Double.toString(dArr[i]));
        }
    }

    public static void writeArray(StringBuilder sb, float[] fArr) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Float.toString(fArr[i]));
        }
    }

    public static void writeArray(StringBuilder sb, int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Integer.toString(iArr[i]));
        }
    }

    public static void writeArray(StringBuilder sb, long[] jArr) {
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(jArr[i]));
        }
    }

    public static <T> void writeArray(StringBuilder sb, T[] tArr) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(tArr[i]);
        }
    }

    public static void writeArray(StringBuilder sb, boolean[] zArr) {
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Boolean.toString(zArr[i]));
        }
    }

    public static void writeStringArray(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append("\"");
            sb.append(strArr[i]);
            sb.append("\"");
        }
    }
}
