package org.apache.commons.lang3;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.apache.commons.lang3.builder.C20733b;
import org.apache.commons.lang3.builder.C20735d;
import org.apache.commons.lang3.builder.C20737f;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.commons.lang3.p583a.C20723a;
import org.apache.commons.lang3.p584b.C20725a;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/ArrayUtils.class */
public class ArrayUtils {
    public static final int INDEX_NOT_FOUND = -1;
    public static final boolean[] EMPTY_BOOLEAN_ARRAY = new boolean[0];
    public static final Boolean[] EMPTY_BOOLEAN_OBJECT_ARRAY = new Boolean[0];
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final Byte[] EMPTY_BYTE_OBJECT_ARRAY = new Byte[0];
    public static final char[] EMPTY_CHAR_ARRAY = new char[0];
    public static final Character[] EMPTY_CHARACTER_OBJECT_ARRAY = new Character[0];
    public static final Class<?>[] EMPTY_CLASS_ARRAY = new Class[0];
    public static final double[] EMPTY_DOUBLE_ARRAY = new double[0];
    public static final Double[] EMPTY_DOUBLE_OBJECT_ARRAY = new Double[0];
    public static final Field[] EMPTY_FIELD_ARRAY = new Field[0];
    public static final float[] EMPTY_FLOAT_ARRAY = new float[0];
    public static final Float[] EMPTY_FLOAT_OBJECT_ARRAY = new Float[0];
    public static final int[] EMPTY_INT_ARRAY = new int[0];
    public static final Integer[] EMPTY_INTEGER_OBJECT_ARRAY = new Integer[0];
    public static final long[] EMPTY_LONG_ARRAY = new long[0];
    public static final Long[] EMPTY_LONG_OBJECT_ARRAY = new Long[0];
    public static final Method[] EMPTY_METHOD_ARRAY = new Method[0];
    public static final Object[] EMPTY_OBJECT_ARRAY = new Object[0];
    public static final short[] EMPTY_SHORT_ARRAY = new short[0];
    public static final Short[] EMPTY_SHORT_OBJECT_ARRAY = new Short[0];
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final Throwable[] EMPTY_THROWABLE_ARRAY = new Throwable[0];
    public static final Type[] EMPTY_TYPE_ARRAY = new Type[0];

    private static Object add(Object obj, int i, Object obj2, Class<?> cls) {
        if (obj == null) {
            if (i == 0) {
                Object newInstance = Array.newInstance(cls, 1);
                Array.set(newInstance, 0, obj2);
                return newInstance;
            }
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: 0");
        }
        int length = Array.getLength(obj);
        if (i > length || i < 0) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + length);
        }
        Object newInstance2 = Array.newInstance(cls, length + 1);
        System.arraycopy(obj, 0, newInstance2, 0, i);
        Array.set(newInstance2, i, obj2);
        if (i < length) {
            System.arraycopy(obj, i, newInstance2, i + 1, length - i);
        }
        return newInstance2;
    }

    public static byte[] add(byte[] bArr, byte b) {
        byte[] bArr2 = (byte[]) copyArrayGrow1(bArr, Byte.TYPE);
        bArr2[bArr2.length - 1] = b;
        return bArr2;
    }

    @Deprecated
    public static byte[] add(byte[] bArr, int i, byte b) {
        return (byte[]) add(bArr, i, Byte.valueOf(b), Byte.TYPE);
    }

    public static char[] add(char[] cArr, char c) {
        char[] cArr2 = (char[]) copyArrayGrow1(cArr, Character.TYPE);
        cArr2[cArr2.length - 1] = c;
        return cArr2;
    }

    @Deprecated
    public static char[] add(char[] cArr, int i, char c) {
        return (char[]) add(cArr, i, Character.valueOf(c), Character.TYPE);
    }

    public static double[] add(double[] dArr, double d) {
        double[] dArr2 = (double[]) copyArrayGrow1(dArr, Double.TYPE);
        dArr2[dArr2.length - 1] = d;
        return dArr2;
    }

    @Deprecated
    public static double[] add(double[] dArr, int i, double d) {
        return (double[]) add(dArr, i, Double.valueOf(d), Double.TYPE);
    }

    public static float[] add(float[] fArr, float f) {
        float[] fArr2 = (float[]) copyArrayGrow1(fArr, Float.TYPE);
        fArr2[fArr2.length - 1] = f;
        return fArr2;
    }

    @Deprecated
    public static float[] add(float[] fArr, int i, float f) {
        return (float[]) add(fArr, i, Float.valueOf(f), Float.TYPE);
    }

    public static int[] add(int[] iArr, int i) {
        int[] iArr2 = (int[]) copyArrayGrow1(iArr, Integer.TYPE);
        iArr2[iArr2.length - 1] = i;
        return iArr2;
    }

    @Deprecated
    public static int[] add(int[] iArr, int i, int i2) {
        return (int[]) add(iArr, i, Integer.valueOf(i2), Integer.TYPE);
    }

    @Deprecated
    public static long[] add(long[] jArr, int i, long j) {
        return (long[]) add(jArr, i, Long.valueOf(j), Long.TYPE);
    }

    public static long[] add(long[] jArr, long j) {
        long[] jArr2 = (long[]) copyArrayGrow1(jArr, Long.TYPE);
        jArr2[jArr2.length - 1] = j;
        return jArr2;
    }

    @Deprecated
    public static <T> T[] add(T[] tArr, int i, T t) {
        Class<?> cls;
        if (tArr != null) {
            cls = tArr.getClass().getComponentType();
        } else if (t == null) {
            throw new IllegalArgumentException("Array and element cannot both be null");
        } else {
            cls = t.getClass();
        }
        return (T[]) ((Object[]) add(tArr, i, t, cls));
    }

    public static <T> T[] add(T[] tArr, T t) {
        Class<?> cls;
        if (tArr != null) {
            cls = tArr.getClass().getComponentType();
        } else if (t == null) {
            throw new IllegalArgumentException("Arguments cannot both be null");
        } else {
            cls = t.getClass();
        }
        T[] tArr2 = (T[]) ((Object[]) copyArrayGrow1(tArr, cls));
        tArr2[tArr2.length - 1] = t;
        return tArr2;
    }

    @Deprecated
    public static short[] add(short[] sArr, int i, short s) {
        return (short[]) add(sArr, i, Short.valueOf(s), Short.TYPE);
    }

    public static short[] add(short[] sArr, short s) {
        short[] sArr2 = (short[]) copyArrayGrow1(sArr, Short.TYPE);
        sArr2[sArr2.length - 1] = s;
        return sArr2;
    }

    @Deprecated
    public static boolean[] add(boolean[] zArr, int i, boolean z) {
        return (boolean[]) add(zArr, i, Boolean.valueOf(z), Boolean.TYPE);
    }

    public static boolean[] add(boolean[] zArr, boolean z) {
        boolean[] zArr2 = (boolean[]) copyArrayGrow1(zArr, Boolean.TYPE);
        zArr2[zArr2.length - 1] = z;
        return zArr2;
    }

    public static byte[] addAll(byte[] bArr, byte... bArr2) {
        if (bArr == null) {
            return clone(bArr2);
        }
        if (bArr2 == null) {
            return clone(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static char[] addAll(char[] cArr, char... cArr2) {
        if (cArr == null) {
            return clone(cArr2);
        }
        if (cArr2 == null) {
            return clone(cArr);
        }
        char[] cArr3 = new char[cArr.length + cArr2.length];
        System.arraycopy(cArr, 0, cArr3, 0, cArr.length);
        System.arraycopy(cArr2, 0, cArr3, cArr.length, cArr2.length);
        return cArr3;
    }

    public static double[] addAll(double[] dArr, double... dArr2) {
        if (dArr == null) {
            return clone(dArr2);
        }
        if (dArr2 == null) {
            return clone(dArr);
        }
        double[] dArr3 = new double[dArr.length + dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr3, dArr.length, dArr2.length);
        return dArr3;
    }

    public static float[] addAll(float[] fArr, float... fArr2) {
        if (fArr == null) {
            return clone(fArr2);
        }
        if (fArr2 == null) {
            return clone(fArr);
        }
        float[] fArr3 = new float[fArr.length + fArr2.length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        return fArr3;
    }

    public static int[] addAll(int[] iArr, int... iArr2) {
        if (iArr == null) {
            return clone(iArr2);
        }
        if (iArr2 == null) {
            return clone(iArr);
        }
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }

    public static long[] addAll(long[] jArr, long... jArr2) {
        if (jArr == null) {
            return clone(jArr2);
        }
        if (jArr2 == null) {
            return clone(jArr);
        }
        long[] jArr3 = new long[jArr.length + jArr2.length];
        System.arraycopy(jArr, 0, jArr3, 0, jArr.length);
        System.arraycopy(jArr2, 0, jArr3, jArr.length, jArr2.length);
        return jArr3;
    }

    public static <T> T[] addAll(T[] tArr, T... tArr2) {
        if (tArr == null) {
            return (T[]) clone(tArr2);
        }
        if (tArr2 == null) {
            return (T[]) clone(tArr);
        }
        Class<?> componentType = tArr.getClass().getComponentType();
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(componentType, tArr.length + tArr2.length));
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        try {
            System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
            return tArr3;
        } catch (ArrayStoreException e) {
            Class<?> componentType2 = tArr2.getClass().getComponentType();
            if (componentType.isAssignableFrom(componentType2)) {
                throw e;
            }
            throw new IllegalArgumentException("Cannot store " + componentType2.getName() + " in an array of " + componentType.getName(), e);
        }
    }

    public static short[] addAll(short[] sArr, short... sArr2) {
        if (sArr == null) {
            return clone(sArr2);
        }
        if (sArr2 == null) {
            return clone(sArr);
        }
        short[] sArr3 = new short[sArr.length + sArr2.length];
        System.arraycopy(sArr, 0, sArr3, 0, sArr.length);
        System.arraycopy(sArr2, 0, sArr3, sArr.length, sArr2.length);
        return sArr3;
    }

    public static boolean[] addAll(boolean[] zArr, boolean... zArr2) {
        if (zArr == null) {
            return clone(zArr2);
        }
        if (zArr2 == null) {
            return clone(zArr);
        }
        boolean[] zArr3 = new boolean[zArr.length + zArr2.length];
        System.arraycopy(zArr, 0, zArr3, 0, zArr.length);
        System.arraycopy(zArr2, 0, zArr3, zArr.length, zArr2.length);
        return zArr3;
    }

    public static byte[] addFirst(byte[] bArr, byte b) {
        return bArr == null ? add(bArr, b) : insert(0, bArr, b);
    }

    public static char[] addFirst(char[] cArr, char c) {
        return cArr == null ? add(cArr, c) : insert(0, cArr, c);
    }

    public static double[] addFirst(double[] dArr, double d) {
        return dArr == null ? add(dArr, d) : insert(0, dArr, d);
    }

    public static float[] addFirst(float[] fArr, float f) {
        return fArr == null ? add(fArr, f) : insert(0, fArr, f);
    }

    public static int[] addFirst(int[] iArr, int i) {
        return iArr == null ? add(iArr, i) : insert(0, iArr, i);
    }

    public static long[] addFirst(long[] jArr, long j) {
        return jArr == null ? add(jArr, j) : insert(0, jArr, j);
    }

    public static <T> T[] addFirst(T[] tArr, T t) {
        return tArr == null ? (T[]) add(tArr, t) : (T[]) insert(0, tArr, t);
    }

    public static short[] addFirst(short[] sArr, short s) {
        return sArr == null ? add(sArr, s) : insert(0, sArr, s);
    }

    public static boolean[] addFirst(boolean[] zArr, boolean z) {
        return zArr == null ? add(zArr, z) : insert(0, zArr, z);
    }

    public static byte[] clone(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static char[] clone(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return (char[]) cArr.clone();
    }

    public static double[] clone(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public static float[] clone(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        return (float[]) fArr.clone();
    }

    public static int[] clone(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    public static long[] clone(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public static <T> T[] clone(T[] tArr) {
        if (tArr == null) {
            return null;
        }
        return (T[]) ((Object[]) tArr.clone());
    }

    public static short[] clone(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    public static boolean[] clone(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        return (boolean[]) zArr.clone();
    }

    public static boolean contains(byte[] bArr, byte b) {
        return indexOf(bArr, b) != -1;
    }

    public static boolean contains(char[] cArr, char c) {
        return indexOf(cArr, c) != -1;
    }

    public static boolean contains(double[] dArr, double d) {
        return indexOf(dArr, d) != -1;
    }

    public static boolean contains(double[] dArr, double d, double d2) {
        return indexOf(dArr, d, 0, d2) != -1;
    }

    public static boolean contains(float[] fArr, float f) {
        return indexOf(fArr, f) != -1;
    }

    public static boolean contains(int[] iArr, int i) {
        return indexOf(iArr, i) != -1;
    }

    public static boolean contains(long[] jArr, long j) {
        return indexOf(jArr, j) != -1;
    }

    public static boolean contains(Object[] objArr, Object obj) {
        return indexOf(objArr, obj) != -1;
    }

    public static boolean contains(short[] sArr, short s) {
        return indexOf(sArr, s) != -1;
    }

    public static boolean contains(boolean[] zArr, boolean z) {
        return indexOf(zArr, z) != -1;
    }

    private static Object copyArrayGrow1(Object obj, Class<?> cls) {
        if (obj != null) {
            int length = Array.getLength(obj);
            Object newInstance = Array.newInstance(obj.getClass().getComponentType(), length + 1);
            System.arraycopy(obj, 0, newInstance, 0, length);
            return newInstance;
        }
        return Array.newInstance(cls, 1);
    }

    public static <T> T get(T[] tArr, int i) {
        return (T) get(tArr, i, null);
    }

    public static <T> T get(T[] tArr, int i, T t) {
        return isArrayIndexValid(tArr, i) ? tArr[i] : t;
    }

    public static int getLength(Object obj) {
        if (obj == null) {
            return 0;
        }
        return Array.getLength(obj);
    }

    public static int hashCode(Object obj) {
        return new C20735d().m566a(obj).f67211a;
    }

    public static int indexOf(byte[] bArr, byte b) {
        return indexOf(bArr, b, 0);
    }

    public static int indexOf(byte[] bArr, byte b, int i) {
        if (bArr == null) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        while (i2 < bArr.length) {
            if (b == bArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int indexOf(char[] cArr, char c) {
        return indexOf(cArr, c, 0);
    }

    public static int indexOf(char[] cArr, char c, int i) {
        if (cArr == null) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        while (i2 < cArr.length) {
            if (c == cArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int indexOf(double[] dArr, double d) {
        return indexOf(dArr, d, 0);
    }

    public static int indexOf(double[] dArr, double d, double d2) {
        return indexOf(dArr, d, 0, d2);
    }

    public static int indexOf(double[] dArr, double d, int i) {
        if (isEmpty(dArr)) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        while (i2 < dArr.length) {
            if (d == dArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int indexOf(double[] dArr, double d, int i, double d2) {
        if (isEmpty(dArr)) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        while (i2 < dArr.length) {
            if (dArr[i2] >= d - d2 && dArr[i2] <= d + d2) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int indexOf(float[] fArr, float f) {
        return indexOf(fArr, f, 0);
    }

    public static int indexOf(float[] fArr, float f, int i) {
        if (isEmpty(fArr)) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        while (i2 < fArr.length) {
            if (f == fArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int indexOf(int[] iArr, int i) {
        return indexOf(iArr, i, 0);
    }

    public static int indexOf(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return -1;
        }
        int i3 = i2;
        if (i2 < 0) {
            i3 = 0;
        }
        while (i3 < iArr.length) {
            if (i == iArr[i3]) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    public static int indexOf(long[] jArr, long j) {
        return indexOf(jArr, j, 0);
    }

    public static int indexOf(long[] jArr, long j, int i) {
        if (jArr == null) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        while (i2 < jArr.length) {
            if (j == jArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int indexOf(Object[] objArr, Object obj) {
        return indexOf(objArr, obj, 0);
    }

    public static int indexOf(Object[] objArr, Object obj, int i) {
        if (objArr == null) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        if (obj == null) {
            while (i2 < objArr.length) {
                if (objArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        for (int i3 = i2; i3 < objArr.length; i3++) {
            if (obj.equals(objArr[i3])) {
                return i3;
            }
        }
        return -1;
    }

    public static int indexOf(short[] sArr, short s) {
        return indexOf(sArr, s, 0);
    }

    public static int indexOf(short[] sArr, short s, int i) {
        if (sArr == null) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        while (i2 < sArr.length) {
            if (s == sArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int indexOf(boolean[] zArr, boolean z) {
        return indexOf(zArr, z, 0);
    }

    public static int indexOf(boolean[] zArr, boolean z, int i) {
        if (isEmpty(zArr)) {
            return -1;
        }
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        while (i2 < zArr.length) {
            if (z == zArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static BitSet indexesOf(byte[] bArr, byte b) {
        return indexesOf(bArr, b, 0);
    }

    public static BitSet indexesOf(byte[] bArr, byte b, int i) {
        BitSet bitSet = new BitSet();
        if (bArr == null) {
            return bitSet;
        }
        while (i < bArr.length) {
            int indexOf = indexOf(bArr, b, i);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i = indexOf + 1;
        }
        return bitSet;
    }

    public static BitSet indexesOf(char[] cArr, char c) {
        return indexesOf(cArr, c, 0);
    }

    public static BitSet indexesOf(char[] cArr, char c, int i) {
        BitSet bitSet = new BitSet();
        if (cArr == null) {
            return bitSet;
        }
        while (i < cArr.length) {
            int indexOf = indexOf(cArr, c, i);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i = indexOf + 1;
        }
        return bitSet;
    }

    public static BitSet indexesOf(double[] dArr, double d) {
        return indexesOf(dArr, d, 0);
    }

    public static BitSet indexesOf(double[] dArr, double d, double d2) {
        return indexesOf(dArr, d, 0, d2);
    }

    public static BitSet indexesOf(double[] dArr, double d, int i) {
        BitSet bitSet = new BitSet();
        if (dArr == null) {
            return bitSet;
        }
        while (i < dArr.length) {
            int indexOf = indexOf(dArr, d, i);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i = indexOf + 1;
        }
        return bitSet;
    }

    public static BitSet indexesOf(double[] dArr, double d, int i, double d2) {
        BitSet bitSet = new BitSet();
        if (dArr == null) {
            return bitSet;
        }
        while (i < dArr.length) {
            int indexOf = indexOf(dArr, d, i, d2);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i = indexOf + 1;
        }
        return bitSet;
    }

    public static BitSet indexesOf(float[] fArr, float f) {
        return indexesOf(fArr, f, 0);
    }

    public static BitSet indexesOf(float[] fArr, float f, int i) {
        BitSet bitSet = new BitSet();
        if (fArr == null) {
            return bitSet;
        }
        while (i < fArr.length) {
            int indexOf = indexOf(fArr, f, i);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i = indexOf + 1;
        }
        return bitSet;
    }

    public static BitSet indexesOf(int[] iArr, int i) {
        return indexesOf(iArr, i, 0);
    }

    public static BitSet indexesOf(int[] iArr, int i, int i2) {
        BitSet bitSet = new BitSet();
        if (iArr == null) {
            return bitSet;
        }
        while (i2 < iArr.length) {
            int indexOf = indexOf(iArr, i, i2);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i2 = indexOf + 1;
        }
        return bitSet;
    }

    public static BitSet indexesOf(long[] jArr, long j) {
        return indexesOf(jArr, j, 0);
    }

    public static BitSet indexesOf(long[] jArr, long j, int i) {
        BitSet bitSet = new BitSet();
        if (jArr == null) {
            return bitSet;
        }
        while (i < jArr.length) {
            int indexOf = indexOf(jArr, j, i);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i = indexOf + 1;
        }
        return bitSet;
    }

    public static BitSet indexesOf(Object[] objArr, Object obj) {
        return indexesOf(objArr, obj, 0);
    }

    public static BitSet indexesOf(Object[] objArr, Object obj, int i) {
        BitSet bitSet = new BitSet();
        if (objArr == null) {
            return bitSet;
        }
        while (i < objArr.length) {
            int indexOf = indexOf(objArr, obj, i);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i = indexOf + 1;
        }
        return bitSet;
    }

    public static BitSet indexesOf(short[] sArr, short s) {
        return indexesOf(sArr, s, 0);
    }

    public static BitSet indexesOf(short[] sArr, short s, int i) {
        BitSet bitSet = new BitSet();
        if (sArr == null) {
            return bitSet;
        }
        while (i < sArr.length) {
            int indexOf = indexOf(sArr, s, i);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i = indexOf + 1;
        }
        return bitSet;
    }

    public static BitSet indexesOf(boolean[] zArr, boolean z) {
        return indexesOf(zArr, z, 0);
    }

    public static BitSet indexesOf(boolean[] zArr, boolean z, int i) {
        BitSet bitSet = new BitSet();
        if (zArr == null) {
            return bitSet;
        }
        while (i < zArr.length) {
            int indexOf = indexOf(zArr, z, i);
            if (indexOf == -1) {
                break;
            }
            bitSet.set(indexOf);
            i = indexOf + 1;
        }
        return bitSet;
    }

    public static byte[] insert(int i, byte[] bArr, byte... bArr2) {
        if (bArr == null) {
            return null;
        }
        if (isEmpty(bArr2)) {
            return clone(bArr);
        }
        if (i < 0 || i > bArr.length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + bArr.length);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr2, 0, bArr3, i, bArr2.length);
        if (i > 0) {
            System.arraycopy(bArr, 0, bArr3, 0, i);
        }
        if (i < bArr.length) {
            System.arraycopy(bArr, i, bArr3, bArr2.length + i, bArr.length - i);
        }
        return bArr3;
    }

    public static char[] insert(int i, char[] cArr, char... cArr2) {
        if (cArr == null) {
            return null;
        }
        if (isEmpty(cArr2)) {
            return clone(cArr);
        }
        if (i < 0 || i > cArr.length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + cArr.length);
        }
        char[] cArr3 = new char[cArr.length + cArr2.length];
        System.arraycopy(cArr2, 0, cArr3, i, cArr2.length);
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr3, 0, i);
        }
        if (i < cArr.length) {
            System.arraycopy(cArr, i, cArr3, cArr2.length + i, cArr.length - i);
        }
        return cArr3;
    }

    public static double[] insert(int i, double[] dArr, double... dArr2) {
        if (dArr == null) {
            return null;
        }
        if (isEmpty(dArr2)) {
            return clone(dArr);
        }
        if (i < 0 || i > dArr.length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + dArr.length);
        }
        double[] dArr3 = new double[dArr.length + dArr2.length];
        System.arraycopy(dArr2, 0, dArr3, i, dArr2.length);
        if (i > 0) {
            System.arraycopy(dArr, 0, dArr3, 0, i);
        }
        if (i < dArr.length) {
            System.arraycopy(dArr, i, dArr3, dArr2.length + i, dArr.length - i);
        }
        return dArr3;
    }

    public static float[] insert(int i, float[] fArr, float... fArr2) {
        if (fArr == null) {
            return null;
        }
        if (isEmpty(fArr2)) {
            return clone(fArr);
        }
        if (i < 0 || i > fArr.length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + fArr.length);
        }
        float[] fArr3 = new float[fArr.length + fArr2.length];
        System.arraycopy(fArr2, 0, fArr3, i, fArr2.length);
        if (i > 0) {
            System.arraycopy(fArr, 0, fArr3, 0, i);
        }
        if (i < fArr.length) {
            System.arraycopy(fArr, i, fArr3, fArr2.length + i, fArr.length - i);
        }
        return fArr3;
    }

    public static int[] insert(int i, int[] iArr, int... iArr2) {
        if (iArr == null) {
            return null;
        }
        if (isEmpty(iArr2)) {
            return clone(iArr);
        }
        if (i < 0 || i > iArr.length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + iArr.length);
        }
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr2, 0, iArr3, i, iArr2.length);
        if (i > 0) {
            System.arraycopy(iArr, 0, iArr3, 0, i);
        }
        if (i < iArr.length) {
            System.arraycopy(iArr, i, iArr3, iArr2.length + i, iArr.length - i);
        }
        return iArr3;
    }

    public static long[] insert(int i, long[] jArr, long... jArr2) {
        if (jArr == null) {
            return null;
        }
        if (isEmpty(jArr2)) {
            return clone(jArr);
        }
        if (i < 0 || i > jArr.length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + jArr.length);
        }
        long[] jArr3 = new long[jArr.length + jArr2.length];
        System.arraycopy(jArr2, 0, jArr3, i, jArr2.length);
        if (i > 0) {
            System.arraycopy(jArr, 0, jArr3, 0, i);
        }
        if (i < jArr.length) {
            System.arraycopy(jArr, i, jArr3, jArr2.length + i, jArr.length - i);
        }
        return jArr3;
    }

    @SafeVarargs
    public static <T> T[] insert(int i, T[] tArr, T... tArr2) {
        if (tArr == null) {
            return null;
        }
        if (isEmpty(tArr2)) {
            return (T[]) clone(tArr);
        }
        if (i < 0 || i > tArr.length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + tArr.length);
        }
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), tArr.length + tArr2.length));
        System.arraycopy(tArr2, 0, tArr3, i, tArr2.length);
        if (i > 0) {
            System.arraycopy(tArr, 0, tArr3, 0, i);
        }
        if (i < tArr.length) {
            System.arraycopy(tArr, i, tArr3, tArr2.length + i, tArr.length - i);
        }
        return tArr3;
    }

    public static short[] insert(int i, short[] sArr, short... sArr2) {
        if (sArr == null) {
            return null;
        }
        if (isEmpty(sArr2)) {
            return clone(sArr);
        }
        if (i < 0 || i > sArr.length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + sArr.length);
        }
        short[] sArr3 = new short[sArr.length + sArr2.length];
        System.arraycopy(sArr2, 0, sArr3, i, sArr2.length);
        if (i > 0) {
            System.arraycopy(sArr, 0, sArr3, 0, i);
        }
        if (i < sArr.length) {
            System.arraycopy(sArr, i, sArr3, sArr2.length + i, sArr.length - i);
        }
        return sArr3;
    }

    public static boolean[] insert(int i, boolean[] zArr, boolean... zArr2) {
        if (zArr == null) {
            return null;
        }
        if (isEmpty(zArr2)) {
            return clone(zArr);
        }
        if (i < 0 || i > zArr.length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + zArr.length);
        }
        boolean[] zArr3 = new boolean[zArr.length + zArr2.length];
        System.arraycopy(zArr2, 0, zArr3, i, zArr2.length);
        if (i > 0) {
            System.arraycopy(zArr, 0, zArr3, 0, i);
        }
        if (i < zArr.length) {
            System.arraycopy(zArr, i, zArr3, zArr2.length + i, zArr.length - i);
        }
        return zArr3;
    }

    public static <T> boolean isArrayIndexValid(T[] tArr, int i) {
        return i >= 0 && getLength(tArr) > i;
    }

    public static boolean isEmpty(byte[] bArr) {
        return getLength(bArr) == 0;
    }

    public static boolean isEmpty(char[] cArr) {
        return getLength(cArr) == 0;
    }

    public static boolean isEmpty(double[] dArr) {
        return getLength(dArr) == 0;
    }

    public static boolean isEmpty(float[] fArr) {
        return getLength(fArr) == 0;
    }

    public static boolean isEmpty(int[] iArr) {
        return getLength(iArr) == 0;
    }

    public static boolean isEmpty(long[] jArr) {
        return getLength(jArr) == 0;
    }

    public static boolean isEmpty(Object[] objArr) {
        return getLength(objArr) == 0;
    }

    public static boolean isEmpty(short[] sArr) {
        return getLength(sArr) == 0;
    }

    public static boolean isEmpty(boolean[] zArr) {
        return getLength(zArr) == 0;
    }

    @Deprecated
    public static boolean isEquals(Object obj, Object obj2) {
        return new C20733b().m583a(obj, obj2).f67204a;
    }

    public static boolean isNotEmpty(byte[] bArr) {
        return !isEmpty(bArr);
    }

    public static boolean isNotEmpty(char[] cArr) {
        return !isEmpty(cArr);
    }

    public static boolean isNotEmpty(double[] dArr) {
        return !isEmpty(dArr);
    }

    public static boolean isNotEmpty(float[] fArr) {
        return !isEmpty(fArr);
    }

    public static boolean isNotEmpty(int[] iArr) {
        return !isEmpty(iArr);
    }

    public static boolean isNotEmpty(long[] jArr) {
        return !isEmpty(jArr);
    }

    public static <T> boolean isNotEmpty(T[] tArr) {
        return !isEmpty(tArr);
    }

    public static boolean isNotEmpty(short[] sArr) {
        return !isEmpty(sArr);
    }

    public static boolean isNotEmpty(boolean[] zArr) {
        return !isEmpty(zArr);
    }

    public static boolean isSameLength(Object obj, Object obj2) {
        return getLength(obj) == getLength(obj2);
    }

    public static boolean isSameLength(byte[] bArr, byte[] bArr2) {
        return getLength(bArr) == getLength(bArr2);
    }

    public static boolean isSameLength(char[] cArr, char[] cArr2) {
        return getLength(cArr) == getLength(cArr2);
    }

    public static boolean isSameLength(double[] dArr, double[] dArr2) {
        return getLength(dArr) == getLength(dArr2);
    }

    public static boolean isSameLength(float[] fArr, float[] fArr2) {
        return getLength(fArr) == getLength(fArr2);
    }

    public static boolean isSameLength(int[] iArr, int[] iArr2) {
        return getLength(iArr) == getLength(iArr2);
    }

    public static boolean isSameLength(long[] jArr, long[] jArr2) {
        return getLength(jArr) == getLength(jArr2);
    }

    public static boolean isSameLength(Object[] objArr, Object[] objArr2) {
        return getLength(objArr) == getLength(objArr2);
    }

    public static boolean isSameLength(short[] sArr, short[] sArr2) {
        return getLength(sArr) == getLength(sArr2);
    }

    public static boolean isSameLength(boolean[] zArr, boolean[] zArr2) {
        return getLength(zArr) == getLength(zArr2);
    }

    public static boolean isSameType(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        return obj.getClass().getName().equals(obj2.getClass().getName());
    }

    public static boolean isSorted(byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            return true;
        }
        byte b = bArr[0];
        int length = bArr.length;
        int i = 1;
        while (true) {
            byte b2 = b;
            if (i >= length) {
                return true;
            }
            byte b3 = bArr[i];
            if (C20723a.m599a(b2, b3) > 0) {
                return false;
            }
            i++;
            b = b3;
        }
    }

    public static boolean isSorted(char[] cArr) {
        if (cArr == null || cArr.length < 2) {
            return true;
        }
        char c = cArr[0];
        int length = cArr.length;
        int i = 1;
        while (true) {
            char c2 = c;
            if (i >= length) {
                return true;
            }
            char c3 = cArr[i];
            if (C20724b.m594a(c2, c3) > 0) {
                return false;
            }
            i++;
            c = c3;
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public static boolean isSorted(double[] dArr) {
        if (dArr == 0 || dArr.length < 2) {
            return true;
        }
        char c = dArr[0];
        int length = dArr.length;
        int i = 1;
        while (i < length) {
            ?? r0 = dArr[i];
            if (Double.compare(c, r0) > 0) {
                return false;
            }
            i++;
            c = r0;
        }
        return true;
    }

    public static boolean isSorted(float[] fArr) {
        if (fArr == null || fArr.length < 2) {
            return true;
        }
        float f = fArr[0];
        int length = fArr.length;
        int i = 1;
        while (i < length) {
            float f2 = fArr[i];
            if (Float.compare(f, f2) > 0) {
                return false;
            }
            i++;
            f = f2;
        }
        return true;
    }

    public static boolean isSorted(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return true;
        }
        int i = iArr[0];
        int length = iArr.length;
        int i2 = 1;
        while (i2 < length) {
            int i3 = iArr[i2];
            if (C20723a.m598a(i, i3) > 0) {
                return false;
            }
            i2++;
            i = i3;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public static boolean isSorted(long[] jArr) {
        if (jArr == 0 || jArr.length < 2) {
            return true;
        }
        char c = jArr[0];
        int length = jArr.length;
        int i = 1;
        while (i < length) {
            ?? r0 = jArr[i];
            if (C20723a.m597a(c, (long) r0) > 0) {
                return false;
            }
            i++;
            c = r0;
        }
        return true;
    }

    public static <T extends Comparable<? super T>> boolean isSorted(T[] tArr) {
        return isSorted(tArr, _$$Lambda$G_fAz6EQL9_I11aIHB8VCNnlyvA.INSTANCE);
    }

    public static <T> boolean isSorted(T[] tArr, Comparator<T> comparator) {
        if (comparator != null) {
            if (tArr == null || tArr.length < 2) {
                return true;
            }
            T t = tArr[0];
            int length = tArr.length;
            int i = 1;
            while (i < length) {
                T t2 = tArr[i];
                if (comparator.compare(t, t2) > 0) {
                    return false;
                }
                i++;
                t = t2;
            }
            return true;
        }
        throw new IllegalArgumentException("Comparator should not be null.");
    }

    public static boolean isSorted(short[] sArr) {
        if (sArr == null || sArr.length < 2) {
            return true;
        }
        short s = sArr[0];
        int length = sArr.length;
        int i = 1;
        while (true) {
            short s2 = s;
            if (i >= length) {
                return true;
            }
            short s3 = sArr[i];
            if (C20723a.m596a(s2, s3) > 0) {
                return false;
            }
            i++;
            s = s3;
        }
    }

    public static boolean isSorted(boolean[] zArr) {
        if (zArr == null || zArr.length < 2) {
            return true;
        }
        boolean z = zArr[0];
        int length = zArr.length;
        int i = 1;
        while (i < length) {
            boolean z2 = zArr[i];
            if ((z == z2 ? (char) 0 : z ? (char) 1 : (char) 65535) > 0) {
                return false;
            }
            i++;
            z = z2;
        }
        return true;
    }

    public static int lastIndexOf(byte[] bArr, byte b) {
        return lastIndexOf(bArr, b, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(byte[] bArr, byte b, int i) {
        if (bArr != null && i >= 0) {
            int i2 = i;
            if (i >= bArr.length) {
                i2 = bArr.length - 1;
            }
            while (i2 >= 0) {
                if (b == bArr[i2]) {
                    return i2;
                }
                i2--;
            }
            return -1;
        }
        return -1;
    }

    public static int lastIndexOf(char[] cArr, char c) {
        return lastIndexOf(cArr, c, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(char[] cArr, char c, int i) {
        if (cArr != null && i >= 0) {
            int i2 = i;
            if (i >= cArr.length) {
                i2 = cArr.length - 1;
            }
            while (i2 >= 0) {
                if (c == cArr[i2]) {
                    return i2;
                }
                i2--;
            }
            return -1;
        }
        return -1;
    }

    public static int lastIndexOf(double[] dArr, double d) {
        return lastIndexOf(dArr, d, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(double[] dArr, double d, double d2) {
        return lastIndexOf(dArr, d, Integer.MAX_VALUE, d2);
    }

    public static int lastIndexOf(double[] dArr, double d, int i) {
        if (!isEmpty(dArr) && i >= 0) {
            int i2 = i;
            if (i >= dArr.length) {
                i2 = dArr.length - 1;
            }
            while (i2 >= 0) {
                if (d == dArr[i2]) {
                    return i2;
                }
                i2--;
            }
            return -1;
        }
        return -1;
    }

    public static int lastIndexOf(double[] dArr, double d, int i, double d2) {
        if (!isEmpty(dArr) && i >= 0) {
            int i2 = i;
            if (i >= dArr.length) {
                i2 = dArr.length - 1;
            }
            while (i2 >= 0) {
                if (dArr[i2] >= d - d2 && dArr[i2] <= d + d2) {
                    return i2;
                }
                i2--;
            }
            return -1;
        }
        return -1;
    }

    public static int lastIndexOf(float[] fArr, float f) {
        return lastIndexOf(fArr, f, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(float[] fArr, float f, int i) {
        if (!isEmpty(fArr) && i >= 0) {
            int i2 = i;
            if (i >= fArr.length) {
                i2 = fArr.length - 1;
            }
            while (i2 >= 0) {
                if (f == fArr[i2]) {
                    return i2;
                }
                i2--;
            }
            return -1;
        }
        return -1;
    }

    public static int lastIndexOf(int[] iArr, int i) {
        return lastIndexOf(iArr, i, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(int[] iArr, int i, int i2) {
        if (iArr != null && i2 >= 0) {
            int i3 = i2;
            if (i2 >= iArr.length) {
                i3 = iArr.length - 1;
            }
            while (i3 >= 0) {
                if (i == iArr[i3]) {
                    return i3;
                }
                i3--;
            }
            return -1;
        }
        return -1;
    }

    public static int lastIndexOf(long[] jArr, long j) {
        return lastIndexOf(jArr, j, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(long[] jArr, long j, int i) {
        if (jArr != null && i >= 0) {
            int i2 = i;
            if (i >= jArr.length) {
                i2 = jArr.length - 1;
            }
            while (i2 >= 0) {
                if (j == jArr[i2]) {
                    return i2;
                }
                i2--;
            }
            return -1;
        }
        return -1;
    }

    public static int lastIndexOf(Object[] objArr, Object obj) {
        return lastIndexOf(objArr, obj, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(Object[] objArr, Object obj, int i) {
        if (objArr != null && i >= 0) {
            int i2 = i;
            if (i >= objArr.length) {
                i2 = objArr.length - 1;
            }
            if (obj == null) {
                while (i2 >= 0) {
                    if (objArr[i2] == null) {
                        return i2;
                    }
                    i2--;
                }
                return -1;
            } else if (!objArr.getClass().getComponentType().isInstance(obj)) {
                return -1;
            } else {
                while (i2 >= 0) {
                    if (obj.equals(objArr[i2])) {
                        return i2;
                    }
                    i2--;
                }
                return -1;
            }
        }
        return -1;
    }

    public static int lastIndexOf(short[] sArr, short s) {
        return lastIndexOf(sArr, s, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(short[] sArr, short s, int i) {
        if (sArr != null && i >= 0) {
            int i2 = i;
            if (i >= sArr.length) {
                i2 = sArr.length - 1;
            }
            while (i2 >= 0) {
                if (s == sArr[i2]) {
                    return i2;
                }
                i2--;
            }
            return -1;
        }
        return -1;
    }

    public static int lastIndexOf(boolean[] zArr, boolean z) {
        return lastIndexOf(zArr, z, Integer.MAX_VALUE);
    }

    public static int lastIndexOf(boolean[] zArr, boolean z, int i) {
        if (!isEmpty(zArr) && i >= 0) {
            int i2 = i;
            if (i >= zArr.length) {
                i2 = zArr.length - 1;
            }
            while (i2 >= 0) {
                if (z == zArr[i2]) {
                    return i2;
                }
                i2--;
            }
            return -1;
        }
        return -1;
    }

    public static byte[] nullToEmpty(byte[] bArr) {
        byte[] bArr2 = bArr;
        if (isEmpty(bArr)) {
            bArr2 = EMPTY_BYTE_ARRAY;
        }
        return bArr2;
    }

    public static char[] nullToEmpty(char[] cArr) {
        char[] cArr2 = cArr;
        if (isEmpty(cArr)) {
            cArr2 = EMPTY_CHAR_ARRAY;
        }
        return cArr2;
    }

    public static double[] nullToEmpty(double[] dArr) {
        double[] dArr2 = dArr;
        if (isEmpty(dArr)) {
            dArr2 = EMPTY_DOUBLE_ARRAY;
        }
        return dArr2;
    }

    public static float[] nullToEmpty(float[] fArr) {
        float[] fArr2 = fArr;
        if (isEmpty(fArr)) {
            fArr2 = EMPTY_FLOAT_ARRAY;
        }
        return fArr2;
    }

    public static int[] nullToEmpty(int[] iArr) {
        int[] iArr2 = iArr;
        if (isEmpty(iArr)) {
            iArr2 = EMPTY_INT_ARRAY;
        }
        return iArr2;
    }

    public static long[] nullToEmpty(long[] jArr) {
        long[] jArr2 = jArr;
        if (isEmpty(jArr)) {
            jArr2 = EMPTY_LONG_ARRAY;
        }
        return jArr2;
    }

    public static Boolean[] nullToEmpty(Boolean[] boolArr) {
        Boolean[] boolArr2 = boolArr;
        if (isEmpty(boolArr)) {
            boolArr2 = EMPTY_BOOLEAN_OBJECT_ARRAY;
        }
        return boolArr2;
    }

    public static Byte[] nullToEmpty(Byte[] bArr) {
        Byte[] bArr2 = bArr;
        if (isEmpty(bArr)) {
            bArr2 = EMPTY_BYTE_OBJECT_ARRAY;
        }
        return bArr2;
    }

    public static Character[] nullToEmpty(Character[] chArr) {
        Character[] chArr2 = chArr;
        if (isEmpty(chArr)) {
            chArr2 = EMPTY_CHARACTER_OBJECT_ARRAY;
        }
        return chArr2;
    }

    public static Class<?>[] nullToEmpty(Class<?>[] clsArr) {
        Class<?>[] clsArr2 = clsArr;
        if (isEmpty(clsArr)) {
            clsArr2 = EMPTY_CLASS_ARRAY;
        }
        return clsArr2;
    }

    public static Double[] nullToEmpty(Double[] dArr) {
        Double[] dArr2 = dArr;
        if (isEmpty(dArr)) {
            dArr2 = EMPTY_DOUBLE_OBJECT_ARRAY;
        }
        return dArr2;
    }

    public static Float[] nullToEmpty(Float[] fArr) {
        Float[] fArr2 = fArr;
        if (isEmpty(fArr)) {
            fArr2 = EMPTY_FLOAT_OBJECT_ARRAY;
        }
        return fArr2;
    }

    public static Integer[] nullToEmpty(Integer[] numArr) {
        Integer[] numArr2 = numArr;
        if (isEmpty(numArr)) {
            numArr2 = EMPTY_INTEGER_OBJECT_ARRAY;
        }
        return numArr2;
    }

    public static Long[] nullToEmpty(Long[] lArr) {
        Long[] lArr2 = lArr;
        if (isEmpty(lArr)) {
            lArr2 = EMPTY_LONG_OBJECT_ARRAY;
        }
        return lArr2;
    }

    public static Object[] nullToEmpty(Object[] objArr) {
        Object[] objArr2 = objArr;
        if (isEmpty(objArr)) {
            objArr2 = EMPTY_OBJECT_ARRAY;
        }
        return objArr2;
    }

    public static <T> T[] nullToEmpty(T[] tArr, Class<T[]> cls) {
        if (cls != null) {
            T[] tArr2 = tArr;
            if (tArr == null) {
                tArr2 = cls.cast(Array.newInstance(cls.getComponentType(), 0));
            }
            return tArr2;
        }
        throw new IllegalArgumentException("The type must not be null");
    }

    public static Short[] nullToEmpty(Short[] shArr) {
        Short[] shArr2 = shArr;
        if (isEmpty(shArr)) {
            shArr2 = EMPTY_SHORT_OBJECT_ARRAY;
        }
        return shArr2;
    }

    public static String[] nullToEmpty(String[] strArr) {
        String[] strArr2 = strArr;
        if (isEmpty(strArr)) {
            strArr2 = EMPTY_STRING_ARRAY;
        }
        return strArr2;
    }

    public static short[] nullToEmpty(short[] sArr) {
        short[] sArr2 = sArr;
        if (isEmpty(sArr)) {
            sArr2 = EMPTY_SHORT_ARRAY;
        }
        return sArr2;
    }

    public static boolean[] nullToEmpty(boolean[] zArr) {
        boolean[] zArr2 = zArr;
        if (isEmpty(zArr)) {
            zArr2 = EMPTY_BOOLEAN_ARRAY;
        }
        return zArr2;
    }

    private static Object remove(Object obj, int i) {
        int length = getLength(obj);
        if (i < 0 || i >= length) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Length: " + length);
        }
        int i2 = length - 1;
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), i2);
        System.arraycopy(obj, 0, newInstance, 0, i);
        if (i < i2) {
            System.arraycopy(obj, i + 1, newInstance, i, (length - i) - 1);
        }
        return newInstance;
    }

    public static byte[] remove(byte[] bArr, int i) {
        return (byte[]) remove((Object) bArr, i);
    }

    public static char[] remove(char[] cArr, int i) {
        return (char[]) remove((Object) cArr, i);
    }

    public static double[] remove(double[] dArr, int i) {
        return (double[]) remove((Object) dArr, i);
    }

    public static float[] remove(float[] fArr, int i) {
        return (float[]) remove((Object) fArr, i);
    }

    public static int[] remove(int[] iArr, int i) {
        return (int[]) remove((Object) iArr, i);
    }

    public static long[] remove(long[] jArr, int i) {
        return (long[]) remove((Object) jArr, i);
    }

    public static <T> T[] remove(T[] tArr, int i) {
        return (T[]) ((Object[]) remove((Object) tArr, i));
    }

    public static short[] remove(short[] sArr, int i) {
        return (short[]) remove((Object) sArr, i);
    }

    public static boolean[] remove(boolean[] zArr, int i) {
        return (boolean[]) remove((Object) zArr, i);
    }

    static Object removeAll(Object obj, BitSet bitSet) {
        int i;
        if (obj == null) {
            return null;
        }
        int length = getLength(obj);
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), length - bitSet.cardinality());
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            int nextSetBit = bitSet.nextSetBit(i2);
            if (nextSetBit == -1) {
                break;
            }
            int i4 = nextSetBit - i2;
            int i5 = i;
            if (i4 > 0) {
                System.arraycopy(obj, i2, newInstance, i, i4);
                i5 = i + i4;
            }
            i2 = bitSet.nextClearBit(nextSetBit);
            i3 = i5;
        }
        int i6 = length - i2;
        if (i6 > 0) {
            System.arraycopy(obj, i2, newInstance, i, i6);
        }
        return newInstance;
    }

    static Object removeAll(Object obj, int... iArr) {
        int i;
        int i2;
        int length = getLength(obj);
        int[] clone = clone(iArr);
        Arrays.sort(clone);
        if (isNotEmpty(clone)) {
            int length2 = clone.length;
            int i3 = length;
            int i4 = 0;
            while (true) {
                int i5 = length2 - 1;
                i = i4;
                if (i5 < 0) {
                    break;
                }
                i2 = clone[i5];
                if (i2 < 0 || i2 >= length) {
                    break;
                }
                length2 = i5;
                if (i2 < i3) {
                    i4++;
                    i3 = i2;
                    length2 = i5;
                }
            }
            throw new IndexOutOfBoundsException("Index: " + i2 + ", Length: " + length);
        }
        i = 0;
        int i6 = length - i;
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), i6);
        if (i < length) {
            int length3 = clone.length - 1;
            int i7 = length;
            while (length3 >= 0) {
                int i8 = clone[length3];
                int i9 = i7 - i8;
                int i10 = i6;
                if (i9 > 1) {
                    int i11 = i9 - 1;
                    i10 = i6 - i11;
                    System.arraycopy(obj, i8 + 1, newInstance, i10, i11);
                }
                length3--;
                i7 = i8;
                i6 = i10;
            }
            if (i7 > 0) {
                System.arraycopy(obj, 0, newInstance, 0, i7);
            }
        }
        return newInstance;
    }

    public static byte[] removeAll(byte[] bArr, int... iArr) {
        return (byte[]) removeAll((Object) bArr, iArr);
    }

    public static char[] removeAll(char[] cArr, int... iArr) {
        return (char[]) removeAll((Object) cArr, iArr);
    }

    public static double[] removeAll(double[] dArr, int... iArr) {
        return (double[]) removeAll((Object) dArr, iArr);
    }

    public static float[] removeAll(float[] fArr, int... iArr) {
        return (float[]) removeAll((Object) fArr, iArr);
    }

    public static int[] removeAll(int[] iArr, int... iArr2) {
        return (int[]) removeAll((Object) iArr, iArr2);
    }

    public static long[] removeAll(long[] jArr, int... iArr) {
        return (long[]) removeAll((Object) jArr, iArr);
    }

    public static <T> T[] removeAll(T[] tArr, int... iArr) {
        return (T[]) ((Object[]) removeAll((Object) tArr, iArr));
    }

    public static short[] removeAll(short[] sArr, int... iArr) {
        return (short[]) removeAll((Object) sArr, iArr);
    }

    public static boolean[] removeAll(boolean[] zArr, int... iArr) {
        return (boolean[]) removeAll((Object) zArr, iArr);
    }

    @Deprecated
    public static byte[] removeAllOccurences(byte[] bArr, byte b) {
        return (byte[]) removeAll(bArr, indexesOf(bArr, b));
    }

    @Deprecated
    public static char[] removeAllOccurences(char[] cArr, char c) {
        return (char[]) removeAll(cArr, indexesOf(cArr, c));
    }

    @Deprecated
    public static double[] removeAllOccurences(double[] dArr, double d) {
        return (double[]) removeAll(dArr, indexesOf(dArr, d));
    }

    @Deprecated
    public static float[] removeAllOccurences(float[] fArr, float f) {
        return (float[]) removeAll(fArr, indexesOf(fArr, f));
    }

    @Deprecated
    public static int[] removeAllOccurences(int[] iArr, int i) {
        return (int[]) removeAll(iArr, indexesOf(iArr, i));
    }

    @Deprecated
    public static long[] removeAllOccurences(long[] jArr, long j) {
        return (long[]) removeAll(jArr, indexesOf(jArr, j));
    }

    @Deprecated
    public static <T> T[] removeAllOccurences(T[] tArr, T t) {
        return (T[]) ((Object[]) removeAll(tArr, indexesOf(tArr, t)));
    }

    @Deprecated
    public static short[] removeAllOccurences(short[] sArr, short s) {
        return (short[]) removeAll(sArr, indexesOf(sArr, s));
    }

    @Deprecated
    public static boolean[] removeAllOccurences(boolean[] zArr, boolean z) {
        return (boolean[]) removeAll(zArr, indexesOf(zArr, z));
    }

    public static byte[] removeAllOccurrences(byte[] bArr, byte b) {
        return (byte[]) removeAll(bArr, indexesOf(bArr, b));
    }

    public static char[] removeAllOccurrences(char[] cArr, char c) {
        return (char[]) removeAll(cArr, indexesOf(cArr, c));
    }

    public static double[] removeAllOccurrences(double[] dArr, double d) {
        return (double[]) removeAll(dArr, indexesOf(dArr, d));
    }

    public static float[] removeAllOccurrences(float[] fArr, float f) {
        return (float[]) removeAll(fArr, indexesOf(fArr, f));
    }

    public static int[] removeAllOccurrences(int[] iArr, int i) {
        return (int[]) removeAll(iArr, indexesOf(iArr, i));
    }

    public static long[] removeAllOccurrences(long[] jArr, long j) {
        return (long[]) removeAll(jArr, indexesOf(jArr, j));
    }

    public static <T> T[] removeAllOccurrences(T[] tArr, T t) {
        return (T[]) ((Object[]) removeAll(tArr, indexesOf(tArr, t)));
    }

    public static short[] removeAllOccurrences(short[] sArr, short s) {
        return (short[]) removeAll(sArr, indexesOf(sArr, s));
    }

    public static boolean[] removeAllOccurrences(boolean[] zArr, boolean z) {
        return (boolean[]) removeAll(zArr, indexesOf(zArr, z));
    }

    public static byte[] removeElement(byte[] bArr, byte b) {
        int indexOf = indexOf(bArr, b);
        return indexOf == -1 ? clone(bArr) : remove(bArr, indexOf);
    }

    public static char[] removeElement(char[] cArr, char c) {
        int indexOf = indexOf(cArr, c);
        return indexOf == -1 ? clone(cArr) : remove(cArr, indexOf);
    }

    public static double[] removeElement(double[] dArr, double d) {
        int indexOf = indexOf(dArr, d);
        return indexOf == -1 ? clone(dArr) : remove(dArr, indexOf);
    }

    public static float[] removeElement(float[] fArr, float f) {
        int indexOf = indexOf(fArr, f);
        return indexOf == -1 ? clone(fArr) : remove(fArr, indexOf);
    }

    public static int[] removeElement(int[] iArr, int i) {
        int indexOf = indexOf(iArr, i);
        return indexOf == -1 ? clone(iArr) : remove(iArr, indexOf);
    }

    public static long[] removeElement(long[] jArr, long j) {
        int indexOf = indexOf(jArr, j);
        return indexOf == -1 ? clone(jArr) : remove(jArr, indexOf);
    }

    public static <T> T[] removeElement(T[] tArr, Object obj) {
        int indexOf = indexOf(tArr, obj);
        return indexOf == -1 ? (T[]) clone(tArr) : (T[]) remove((Object[]) tArr, indexOf);
    }

    public static short[] removeElement(short[] sArr, short s) {
        int indexOf = indexOf(sArr, s);
        return indexOf == -1 ? clone(sArr) : remove(sArr, indexOf);
    }

    public static boolean[] removeElement(boolean[] zArr, boolean z) {
        int indexOf = indexOf(zArr, z);
        return indexOf == -1 ? clone(zArr) : remove(zArr, indexOf);
    }

    public static byte[] removeElements(byte[] bArr, byte... bArr2) {
        if (isEmpty(bArr) || isEmpty(bArr2)) {
            return clone(bArr);
        }
        HashMap hashMap = new HashMap(bArr2.length);
        for (byte b : bArr2) {
            Byte valueOf = Byte.valueOf(b);
            C20725a c20725a = (C20725a) hashMap.get(valueOf);
            if (c20725a == null) {
                hashMap.put(valueOf, new C20725a(1));
            } else {
                c20725a.m593a();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            C20725a c20725a2 = (C20725a) hashMap.get(Byte.valueOf(b2));
            if (c20725a2 != null) {
                if (c20725a2.m592b() == 0) {
                    hashMap.remove(Byte.valueOf(b2));
                }
                bitSet.set(i);
            }
        }
        return (byte[]) removeAll(bArr, bitSet);
    }

    public static char[] removeElements(char[] cArr, char... cArr2) {
        if (isEmpty(cArr) || isEmpty(cArr2)) {
            return clone(cArr);
        }
        HashMap hashMap = new HashMap(cArr2.length);
        for (char c : cArr2) {
            Character valueOf = Character.valueOf(c);
            C20725a c20725a = (C20725a) hashMap.get(valueOf);
            if (c20725a == null) {
                hashMap.put(valueOf, new C20725a(1));
            } else {
                c20725a.m593a();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i = 0; i < cArr.length; i++) {
            char c2 = cArr[i];
            C20725a c20725a2 = (C20725a) hashMap.get(Character.valueOf(c2));
            if (c20725a2 != null) {
                if (c20725a2.m592b() == 0) {
                    hashMap.remove(Character.valueOf(c2));
                }
                bitSet.set(i);
            }
        }
        return (char[]) removeAll(cArr, bitSet);
    }

    public static double[] removeElements(double[] dArr, double... dArr2) {
        if (isEmpty(dArr) || isEmpty(dArr2)) {
            return clone(dArr);
        }
        HashMap hashMap = new HashMap(dArr2.length);
        for (double d : dArr2) {
            Double valueOf = Double.valueOf(d);
            C20725a c20725a = (C20725a) hashMap.get(valueOf);
            if (c20725a == null) {
                hashMap.put(valueOf, new C20725a(1));
            } else {
                c20725a.m593a();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i];
            C20725a c20725a2 = (C20725a) hashMap.get(Double.valueOf(d2));
            if (c20725a2 != null) {
                if (c20725a2.m592b() == 0) {
                    hashMap.remove(Double.valueOf(d2));
                }
                bitSet.set(i);
            }
        }
        return (double[]) removeAll(dArr, bitSet);
    }

    public static float[] removeElements(float[] fArr, float... fArr2) {
        if (isEmpty(fArr) || isEmpty(fArr2)) {
            return clone(fArr);
        }
        HashMap hashMap = new HashMap(fArr2.length);
        for (float f : fArr2) {
            Float valueOf = Float.valueOf(f);
            C20725a c20725a = (C20725a) hashMap.get(valueOf);
            if (c20725a == null) {
                hashMap.put(valueOf, new C20725a(1));
            } else {
                c20725a.m593a();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i = 0; i < fArr.length; i++) {
            float f2 = fArr[i];
            C20725a c20725a2 = (C20725a) hashMap.get(Float.valueOf(f2));
            if (c20725a2 != null) {
                if (c20725a2.m592b() == 0) {
                    hashMap.remove(Float.valueOf(f2));
                }
                bitSet.set(i);
            }
        }
        return (float[]) removeAll(fArr, bitSet);
    }

    public static int[] removeElements(int[] iArr, int... iArr2) {
        if (isEmpty(iArr) || isEmpty(iArr2)) {
            return clone(iArr);
        }
        HashMap hashMap = new HashMap(iArr2.length);
        for (int i : iArr2) {
            Integer valueOf = Integer.valueOf(i);
            C20725a c20725a = (C20725a) hashMap.get(valueOf);
            if (c20725a == null) {
                hashMap.put(valueOf, new C20725a(1));
            } else {
                c20725a.m593a();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = iArr[i2];
            C20725a c20725a2 = (C20725a) hashMap.get(Integer.valueOf(i3));
            if (c20725a2 != null) {
                if (c20725a2.m592b() == 0) {
                    hashMap.remove(Integer.valueOf(i3));
                }
                bitSet.set(i2);
            }
        }
        return (int[]) removeAll(iArr, bitSet);
    }

    public static long[] removeElements(long[] jArr, long... jArr2) {
        if (isEmpty(jArr) || isEmpty(jArr2)) {
            return clone(jArr);
        }
        HashMap hashMap = new HashMap(jArr2.length);
        for (long j : jArr2) {
            Long valueOf = Long.valueOf(j);
            C20725a c20725a = (C20725a) hashMap.get(valueOf);
            if (c20725a == null) {
                hashMap.put(valueOf, new C20725a(1));
            } else {
                c20725a.m593a();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i = 0; i < jArr.length; i++) {
            long j2 = jArr[i];
            C20725a c20725a2 = (C20725a) hashMap.get(Long.valueOf(j2));
            if (c20725a2 != null) {
                if (c20725a2.m592b() == 0) {
                    hashMap.remove(Long.valueOf(j2));
                }
                bitSet.set(i);
            }
        }
        return (long[]) removeAll(jArr, bitSet);
    }

    @SafeVarargs
    public static <T> T[] removeElements(T[] tArr, T... tArr2) {
        if (isEmpty(tArr) || isEmpty(tArr2)) {
            return (T[]) clone(tArr);
        }
        HashMap hashMap = new HashMap(tArr2.length);
        for (T t : tArr2) {
            C20725a c20725a = (C20725a) hashMap.get(t);
            if (c20725a == null) {
                hashMap.put(t, new C20725a(1));
            } else {
                c20725a.m593a();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i = 0; i < tArr.length; i++) {
            T t2 = tArr[i];
            C20725a c20725a2 = (C20725a) hashMap.get(t2);
            if (c20725a2 != null) {
                if (c20725a2.m592b() == 0) {
                    hashMap.remove(t2);
                }
                bitSet.set(i);
            }
        }
        return (T[]) ((Object[]) removeAll(tArr, bitSet));
    }

    public static short[] removeElements(short[] sArr, short... sArr2) {
        if (isEmpty(sArr) || isEmpty(sArr2)) {
            return clone(sArr);
        }
        HashMap hashMap = new HashMap(sArr2.length);
        for (short s : sArr2) {
            Short valueOf = Short.valueOf(s);
            C20725a c20725a = (C20725a) hashMap.get(valueOf);
            if (c20725a == null) {
                hashMap.put(valueOf, new C20725a(1));
            } else {
                c20725a.m593a();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i = 0; i < sArr.length; i++) {
            short s2 = sArr[i];
            C20725a c20725a2 = (C20725a) hashMap.get(Short.valueOf(s2));
            if (c20725a2 != null) {
                if (c20725a2.m592b() == 0) {
                    hashMap.remove(Short.valueOf(s2));
                }
                bitSet.set(i);
            }
        }
        return (short[]) removeAll(sArr, bitSet);
    }

    public static boolean[] removeElements(boolean[] zArr, boolean... zArr2) {
        if (isEmpty(zArr) || isEmpty(zArr2)) {
            return clone(zArr);
        }
        HashMap hashMap = new HashMap(2);
        for (boolean z : zArr2) {
            Boolean valueOf = Boolean.valueOf(z);
            C20725a c20725a = (C20725a) hashMap.get(valueOf);
            if (c20725a == null) {
                hashMap.put(valueOf, new C20725a(1));
            } else {
                c20725a.m593a();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i = 0; i < zArr.length; i++) {
            boolean z2 = zArr[i];
            C20725a c20725a2 = (C20725a) hashMap.get(Boolean.valueOf(z2));
            if (c20725a2 != null) {
                if (c20725a2.m592b() == 0) {
                    hashMap.remove(Boolean.valueOf(z2));
                }
                bitSet.set(i);
            }
        }
        return (boolean[]) removeAll(zArr, bitSet);
    }

    public static void reverse(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        reverse(bArr, 0, bArr.length);
    }

    public static void reverse(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return;
        }
        int max = Math.max(i, 0);
        int min = Math.min(bArr.length, i2) - 1;
        for (int i3 = max; min > i3; i3++) {
            byte b = bArr[min];
            bArr[min] = bArr[i3];
            bArr[i3] = b;
            min--;
        }
    }

    public static void reverse(char[] cArr) {
        if (cArr == null) {
            return;
        }
        reverse(cArr, 0, cArr.length);
    }

    public static void reverse(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return;
        }
        int max = Math.max(i, 0);
        int min = Math.min(cArr.length, i2) - 1;
        for (int i3 = max; min > i3; i3++) {
            char c = cArr[min];
            cArr[min] = cArr[i3];
            cArr[i3] = c;
            min--;
        }
    }

    public static void reverse(double[] dArr) {
        if (dArr == null) {
            return;
        }
        reverse(dArr, 0, dArr.length);
    }

    public static void reverse(double[] dArr, int i, int i2) {
        if (dArr == null) {
            return;
        }
        int min = Math.min(dArr.length, i2) - 1;
        for (int max = Math.max(i, 0); min > max; max++) {
            double d = dArr[min];
            dArr[min] = dArr[max];
            dArr[max] = d;
            min--;
        }
    }

    public static void reverse(float[] fArr) {
        if (fArr == null) {
            return;
        }
        reverse(fArr, 0, fArr.length);
    }

    public static void reverse(float[] fArr, int i, int i2) {
        if (fArr == null) {
            return;
        }
        int max = Math.max(i, 0);
        int min = Math.min(fArr.length, i2) - 1;
        for (int i3 = max; min > i3; i3++) {
            float f = fArr[min];
            fArr[min] = fArr[i3];
            fArr[i3] = f;
            min--;
        }
    }

    public static void reverse(int[] iArr) {
        if (iArr == null) {
            return;
        }
        reverse(iArr, 0, iArr.length);
    }

    public static void reverse(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return;
        }
        int max = Math.max(i, 0);
        int min = Math.min(iArr.length, i2) - 1;
        for (int i3 = max; min > i3; i3++) {
            int i4 = iArr[min];
            iArr[min] = iArr[i3];
            iArr[i3] = i4;
            min--;
        }
    }

    public static void reverse(long[] jArr) {
        if (jArr == null) {
            return;
        }
        reverse(jArr, 0, jArr.length);
    }

    public static void reverse(long[] jArr, int i, int i2) {
        if (jArr == null) {
            return;
        }
        int min = Math.min(jArr.length, i2) - 1;
        for (int max = Math.max(i, 0); min > max; max++) {
            long j = jArr[min];
            jArr[min] = jArr[max];
            jArr[max] = j;
            min--;
        }
    }

    public static void reverse(Object[] objArr) {
        if (objArr == null) {
            return;
        }
        reverse(objArr, 0, objArr.length);
    }

    public static void reverse(Object[] objArr, int i, int i2) {
        if (objArr == null) {
            return;
        }
        int min = Math.min(objArr.length, i2) - 1;
        for (int max = Math.max(i, 0); min > max; max++) {
            Object obj = objArr[min];
            objArr[min] = objArr[max];
            objArr[max] = obj;
            min--;
        }
    }

    public static void reverse(short[] sArr) {
        if (sArr == null) {
            return;
        }
        reverse(sArr, 0, sArr.length);
    }

    public static void reverse(short[] sArr, int i, int i2) {
        if (sArr == null) {
            return;
        }
        int min = Math.min(sArr.length, i2) - 1;
        for (int max = Math.max(i, 0); min > max; max++) {
            short s = sArr[min];
            sArr[min] = sArr[max];
            sArr[max] = s;
            min--;
        }
    }

    public static void reverse(boolean[] zArr) {
        if (zArr == null) {
            return;
        }
        reverse(zArr, 0, zArr.length);
    }

    public static void reverse(boolean[] zArr, int i, int i2) {
        if (zArr == null) {
            return;
        }
        int max = Math.max(i, 0);
        int min = Math.min(zArr.length, i2) - 1;
        for (int i3 = max; min > i3; i3++) {
            boolean z = zArr[min];
            zArr[min] = zArr[i3];
            zArr[i3] = z;
            min--;
        }
    }

    public static void shift(byte[] bArr, int i) {
        if (bArr == null) {
            return;
        }
        shift(bArr, 0, bArr.length, i);
    }

    public static void shift(byte[] bArr, int i, int i2, int i3) {
        if (bArr != null && i < bArr.length - 1 && i2 > 0) {
            int i4 = i;
            if (i < 0) {
                i4 = 0;
            }
            int i5 = i2;
            if (i2 >= bArr.length) {
                i5 = bArr.length;
            }
            int i6 = i5 - i4;
            if (i6 <= 1) {
                return;
            }
            int i7 = i3 % i6;
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i7 < 0) {
                i10 = i7 + i6;
                i9 = i6;
                i8 = i4;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(bArr, i8, (i9 + i8) - i11, i11);
                    i9 = i10;
                    i10 -= i11;
                } else if (i10 >= i11) {
                    swap(bArr, i8, i11 + i8, i10);
                    return;
                } else {
                    swap(bArr, i8, i8 + i11, i10);
                    i8 += i10;
                    i9 = i11;
                }
            }
        }
    }

    public static void shift(char[] cArr, int i) {
        if (cArr == null) {
            return;
        }
        shift(cArr, 0, cArr.length, i);
    }

    public static void shift(char[] cArr, int i, int i2, int i3) {
        if (cArr != null && i < cArr.length - 1 && i2 > 0) {
            int i4 = i;
            if (i < 0) {
                i4 = 0;
            }
            int i5 = i2;
            if (i2 >= cArr.length) {
                i5 = cArr.length;
            }
            int i6 = i5 - i4;
            if (i6 <= 1) {
                return;
            }
            int i7 = i3 % i6;
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i7 < 0) {
                i10 = i7 + i6;
                i9 = i6;
                i8 = i4;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(cArr, i8, (i9 + i8) - i11, i11);
                    i9 = i10;
                    i10 -= i11;
                } else if (i10 >= i11) {
                    swap(cArr, i8, i11 + i8, i10);
                    return;
                } else {
                    swap(cArr, i8, i8 + i11, i10);
                    i8 += i10;
                    i9 = i11;
                }
            }
        }
    }

    public static void shift(double[] dArr, int i) {
        if (dArr == null) {
            return;
        }
        shift(dArr, 0, dArr.length, i);
    }

    public static void shift(double[] dArr, int i, int i2, int i3) {
        if (dArr != null && i < dArr.length - 1 && i2 > 0) {
            int i4 = i;
            if (i < 0) {
                i4 = 0;
            }
            int i5 = i2;
            if (i2 >= dArr.length) {
                i5 = dArr.length;
            }
            int i6 = i5 - i4;
            if (i6 <= 1) {
                return;
            }
            int i7 = i3 % i6;
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i7 < 0) {
                i10 = i7 + i6;
                i9 = i6;
                i8 = i4;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(dArr, i8, (i9 + i8) - i11, i11);
                    i9 = i10;
                    i10 -= i11;
                } else if (i10 >= i11) {
                    swap(dArr, i8, i11 + i8, i10);
                    return;
                } else {
                    swap(dArr, i8, i8 + i11, i10);
                    i8 += i10;
                    i9 = i11;
                }
            }
        }
    }

    public static void shift(float[] fArr, int i) {
        if (fArr == null) {
            return;
        }
        shift(fArr, 0, fArr.length, i);
    }

    public static void shift(float[] fArr, int i, int i2, int i3) {
        if (fArr != null && i < fArr.length - 1 && i2 > 0) {
            int i4 = i;
            if (i < 0) {
                i4 = 0;
            }
            int i5 = i2;
            if (i2 >= fArr.length) {
                i5 = fArr.length;
            }
            int i6 = i5 - i4;
            if (i6 <= 1) {
                return;
            }
            int i7 = i3 % i6;
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i7 < 0) {
                i10 = i7 + i6;
                i9 = i6;
                i8 = i4;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(fArr, i8, (i9 + i8) - i11, i11);
                    i9 = i10;
                    i10 -= i11;
                } else if (i10 >= i11) {
                    swap(fArr, i8, i11 + i8, i10);
                    return;
                } else {
                    swap(fArr, i8, i8 + i11, i10);
                    i8 += i10;
                    i9 = i11;
                }
            }
        }
    }

    public static void shift(int[] iArr, int i) {
        if (iArr == null) {
            return;
        }
        shift(iArr, 0, iArr.length, i);
    }

    public static void shift(int[] iArr, int i, int i2, int i3) {
        if (iArr != null && i < iArr.length - 1 && i2 > 0) {
            int i4 = i;
            if (i < 0) {
                i4 = 0;
            }
            int i5 = i2;
            if (i2 >= iArr.length) {
                i5 = iArr.length;
            }
            int i6 = i5 - i4;
            if (i6 <= 1) {
                return;
            }
            int i7 = i3 % i6;
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i7 < 0) {
                i10 = i7 + i6;
                i9 = i6;
                i8 = i4;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(iArr, i8, (i9 + i8) - i11, i11);
                    i9 = i10;
                    i10 -= i11;
                } else if (i10 >= i11) {
                    swap(iArr, i8, i11 + i8, i10);
                    return;
                } else {
                    swap(iArr, i8, i8 + i11, i10);
                    i8 += i10;
                    i9 = i11;
                }
            }
        }
    }

    public static void shift(long[] jArr, int i) {
        if (jArr == null) {
            return;
        }
        shift(jArr, 0, jArr.length, i);
    }

    public static void shift(long[] jArr, int i, int i2, int i3) {
        if (jArr != null && i < jArr.length - 1 && i2 > 0) {
            int i4 = i;
            if (i < 0) {
                i4 = 0;
            }
            int i5 = i2;
            if (i2 >= jArr.length) {
                i5 = jArr.length;
            }
            int i6 = i5 - i4;
            if (i6 <= 1) {
                return;
            }
            int i7 = i3 % i6;
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i7 < 0) {
                i10 = i7 + i6;
                i9 = i6;
                i8 = i4;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(jArr, i8, (i9 + i8) - i11, i11);
                    i9 = i10;
                    i10 -= i11;
                } else if (i10 >= i11) {
                    swap(jArr, i8, i11 + i8, i10);
                    return;
                } else {
                    swap(jArr, i8, i8 + i11, i10);
                    i8 += i10;
                    i9 = i11;
                }
            }
        }
    }

    public static void shift(Object[] objArr, int i) {
        if (objArr == null) {
            return;
        }
        shift(objArr, 0, objArr.length, i);
    }

    public static void shift(Object[] objArr, int i, int i2, int i3) {
        if (objArr != null && i < objArr.length - 1 && i2 > 0) {
            int i4 = i;
            if (i < 0) {
                i4 = 0;
            }
            int i5 = i2;
            if (i2 >= objArr.length) {
                i5 = objArr.length;
            }
            int i6 = i5 - i4;
            if (i6 <= 1) {
                return;
            }
            int i7 = i3 % i6;
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i7 < 0) {
                i10 = i7 + i6;
                i9 = i6;
                i8 = i4;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(objArr, i8, (i9 + i8) - i11, i11);
                    i9 = i10;
                    i10 -= i11;
                } else if (i10 >= i11) {
                    swap(objArr, i8, i11 + i8, i10);
                    return;
                } else {
                    swap(objArr, i8, i8 + i11, i10);
                    i8 += i10;
                    i9 = i11;
                }
            }
        }
    }

    public static void shift(short[] sArr, int i) {
        if (sArr == null) {
            return;
        }
        shift(sArr, 0, sArr.length, i);
    }

    public static void shift(short[] sArr, int i, int i2, int i3) {
        if (sArr != null && i < sArr.length - 1 && i2 > 0) {
            int i4 = i;
            if (i < 0) {
                i4 = 0;
            }
            int i5 = i2;
            if (i2 >= sArr.length) {
                i5 = sArr.length;
            }
            int i6 = i5 - i4;
            if (i6 <= 1) {
                return;
            }
            int i7 = i3 % i6;
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i7 < 0) {
                i10 = i7 + i6;
                i9 = i6;
                i8 = i4;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(sArr, i8, (i9 + i8) - i11, i11);
                    i9 = i10;
                    i10 -= i11;
                } else if (i10 >= i11) {
                    swap(sArr, i8, i11 + i8, i10);
                    return;
                } else {
                    swap(sArr, i8, i8 + i11, i10);
                    i8 += i10;
                    i9 = i11;
                }
            }
        }
    }

    public static void shift(boolean[] zArr, int i) {
        if (zArr == null) {
            return;
        }
        shift(zArr, 0, zArr.length, i);
    }

    public static void shift(boolean[] zArr, int i, int i2, int i3) {
        if (zArr != null && i < zArr.length - 1 && i2 > 0) {
            int i4 = i;
            if (i < 0) {
                i4 = 0;
            }
            int i5 = i2;
            if (i2 >= zArr.length) {
                i5 = zArr.length;
            }
            int i6 = i5 - i4;
            if (i6 <= 1) {
                return;
            }
            int i7 = i3 % i6;
            int i8 = i4;
            int i9 = i6;
            int i10 = i7;
            if (i7 < 0) {
                i10 = i7 + i6;
                i9 = i6;
                i8 = i4;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(zArr, i8, (i9 + i8) - i11, i11);
                    i9 = i10;
                    i10 -= i11;
                } else if (i10 >= i11) {
                    swap(zArr, i8, i11 + i8, i10);
                    return;
                } else {
                    swap(zArr, i8, i8 + i11, i10);
                    i8 += i10;
                    i9 = i11;
                }
            }
        }
    }

    public static void shuffle(byte[] bArr) {
        shuffle(bArr, new Random());
    }

    public static void shuffle(byte[] bArr, Random random) {
        for (int length = bArr.length; length > 1; length--) {
            swap(bArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void shuffle(char[] cArr) {
        shuffle(cArr, new Random());
    }

    public static void shuffle(char[] cArr, Random random) {
        for (int length = cArr.length; length > 1; length--) {
            swap(cArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void shuffle(double[] dArr) {
        shuffle(dArr, new Random());
    }

    public static void shuffle(double[] dArr, Random random) {
        for (int length = dArr.length; length > 1; length--) {
            swap(dArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void shuffle(float[] fArr) {
        shuffle(fArr, new Random());
    }

    public static void shuffle(float[] fArr, Random random) {
        for (int length = fArr.length; length > 1; length--) {
            swap(fArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void shuffle(int[] iArr) {
        shuffle(iArr, new Random());
    }

    public static void shuffle(int[] iArr, Random random) {
        for (int length = iArr.length; length > 1; length--) {
            swap(iArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void shuffle(long[] jArr) {
        shuffle(jArr, new Random());
    }

    public static void shuffle(long[] jArr, Random random) {
        for (int length = jArr.length; length > 1; length--) {
            swap(jArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void shuffle(Object[] objArr) {
        shuffle(objArr, new Random());
    }

    public static void shuffle(Object[] objArr, Random random) {
        for (int length = objArr.length; length > 1; length--) {
            swap(objArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void shuffle(short[] sArr) {
        shuffle(sArr, new Random());
    }

    public static void shuffle(short[] sArr, Random random) {
        for (int length = sArr.length; length > 1; length--) {
            swap(sArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void shuffle(boolean[] zArr) {
        shuffle(zArr, new Random());
    }

    public static void shuffle(boolean[] zArr, Random random) {
        for (int length = zArr.length; length > 1; length--) {
            swap(zArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static byte[] subarray(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return null;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2;
        if (i2 > bArr.length) {
            i4 = bArr.length;
        }
        int i5 = i4 - i3;
        if (i5 <= 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = new byte[i5];
        System.arraycopy(bArr, i3, bArr2, 0, i5);
        return bArr2;
    }

    public static char[] subarray(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return null;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2;
        if (i2 > cArr.length) {
            i4 = cArr.length;
        }
        int i5 = i4 - i3;
        if (i5 <= 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr2 = new char[i5];
        System.arraycopy(cArr, i3, cArr2, 0, i5);
        return cArr2;
    }

    public static double[] subarray(double[] dArr, int i, int i2) {
        if (dArr == null) {
            return null;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2;
        if (i2 > dArr.length) {
            i4 = dArr.length;
        }
        int i5 = i4 - i3;
        if (i5 <= 0) {
            return EMPTY_DOUBLE_ARRAY;
        }
        double[] dArr2 = new double[i5];
        System.arraycopy(dArr, i3, dArr2, 0, i5);
        return dArr2;
    }

    public static float[] subarray(float[] fArr, int i, int i2) {
        if (fArr == null) {
            return null;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2;
        if (i2 > fArr.length) {
            i4 = fArr.length;
        }
        int i5 = i4 - i3;
        if (i5 <= 0) {
            return EMPTY_FLOAT_ARRAY;
        }
        float[] fArr2 = new float[i5];
        System.arraycopy(fArr, i3, fArr2, 0, i5);
        return fArr2;
    }

    public static int[] subarray(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return null;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2;
        if (i2 > iArr.length) {
            i4 = iArr.length;
        }
        int i5 = i4 - i3;
        if (i5 <= 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr2 = new int[i5];
        System.arraycopy(iArr, i3, iArr2, 0, i5);
        return iArr2;
    }

    public static long[] subarray(long[] jArr, int i, int i2) {
        if (jArr == null) {
            return null;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2;
        if (i2 > jArr.length) {
            i4 = jArr.length;
        }
        int i5 = i4 - i3;
        if (i5 <= 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr2 = new long[i5];
        System.arraycopy(jArr, i3, jArr2, 0, i5);
        return jArr2;
    }

    public static <T> T[] subarray(T[] tArr, int i, int i2) {
        if (tArr == null) {
            return null;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2;
        if (i2 > tArr.length) {
            i4 = tArr.length;
        }
        int i5 = i4 - i3;
        Class<?> componentType = tArr.getClass().getComponentType();
        if (i5 <= 0) {
            return (T[]) ((Object[]) Array.newInstance(componentType, 0));
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(componentType, i5));
        System.arraycopy(tArr, i3, tArr2, 0, i5);
        return tArr2;
    }

    public static short[] subarray(short[] sArr, int i, int i2) {
        if (sArr == null) {
            return null;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2;
        if (i2 > sArr.length) {
            i4 = sArr.length;
        }
        int i5 = i4 - i3;
        if (i5 <= 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr2 = new short[i5];
        System.arraycopy(sArr, i3, sArr2, 0, i5);
        return sArr2;
    }

    public static boolean[] subarray(boolean[] zArr, int i, int i2) {
        if (zArr == null) {
            return null;
        }
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        int i4 = i2;
        if (i2 > zArr.length) {
            i4 = zArr.length;
        }
        int i5 = i4 - i3;
        if (i5 <= 0) {
            return EMPTY_BOOLEAN_ARRAY;
        }
        boolean[] zArr2 = new boolean[i5];
        System.arraycopy(zArr, i3, zArr2, 0, i5);
        return zArr2;
    }

    public static void swap(byte[] bArr, int i, int i2) {
        if (isEmpty(bArr)) {
            return;
        }
        swap(bArr, i, i2, 1);
    }

    public static void swap(byte[] bArr, int i, int i2, int i3) {
        if (isEmpty(bArr) || i >= bArr.length || i2 >= bArr.length) {
            return;
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        int min = Math.min(Math.min(i3, bArr.length - i4), bArr.length - i5);
        int i6 = 0;
        while (i6 < min) {
            byte b = bArr[i4];
            bArr[i4] = bArr[i5];
            bArr[i5] = b;
            i6++;
            i4++;
            i5++;
        }
    }

    public static void swap(char[] cArr, int i, int i2) {
        if (isEmpty(cArr)) {
            return;
        }
        swap(cArr, i, i2, 1);
    }

    public static void swap(char[] cArr, int i, int i2, int i3) {
        if (isEmpty(cArr) || i >= cArr.length || i2 >= cArr.length) {
            return;
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        int min = Math.min(Math.min(i3, cArr.length - i4), cArr.length - i5);
        int i6 = 0;
        while (i6 < min) {
            char c = cArr[i4];
            cArr[i4] = cArr[i5];
            cArr[i5] = c;
            i6++;
            i4++;
            i5++;
        }
    }

    public static void swap(double[] dArr, int i, int i2) {
        if (isEmpty(dArr)) {
            return;
        }
        swap(dArr, i, i2, 1);
    }

    public static void swap(double[] dArr, int i, int i2, int i3) {
        if (isEmpty(dArr) || i >= dArr.length || i2 >= dArr.length) {
            return;
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        int min = Math.min(Math.min(i3, dArr.length - i4), dArr.length - i5);
        int i6 = 0;
        while (i6 < min) {
            double d = dArr[i4];
            dArr[i4] = dArr[i5];
            dArr[i5] = d;
            i6++;
            i4++;
            i5++;
        }
    }

    public static void swap(float[] fArr, int i, int i2) {
        if (isEmpty(fArr)) {
            return;
        }
        swap(fArr, i, i2, 1);
    }

    public static void swap(float[] fArr, int i, int i2, int i3) {
        if (isEmpty(fArr) || i >= fArr.length || i2 >= fArr.length) {
            return;
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        int min = Math.min(Math.min(i3, fArr.length - i4), fArr.length - i5);
        int i6 = 0;
        while (i6 < min) {
            float f = fArr[i4];
            fArr[i4] = fArr[i5];
            fArr[i5] = f;
            i6++;
            i4++;
            i5++;
        }
    }

    public static void swap(int[] iArr, int i, int i2) {
        if (isEmpty(iArr)) {
            return;
        }
        swap(iArr, i, i2, 1);
    }

    public static void swap(int[] iArr, int i, int i2, int i3) {
        if (isEmpty(iArr) || i >= iArr.length || i2 >= iArr.length) {
            return;
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        int min = Math.min(Math.min(i3, iArr.length - i4), iArr.length - i5);
        int i6 = 0;
        while (i6 < min) {
            int i7 = iArr[i4];
            iArr[i4] = iArr[i5];
            iArr[i5] = i7;
            i6++;
            i4++;
            i5++;
        }
    }

    public static void swap(long[] jArr, int i, int i2) {
        if (isEmpty(jArr)) {
            return;
        }
        swap(jArr, i, i2, 1);
    }

    public static void swap(long[] jArr, int i, int i2, int i3) {
        if (isEmpty(jArr) || i >= jArr.length || i2 >= jArr.length) {
            return;
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        int min = Math.min(Math.min(i3, jArr.length - i4), jArr.length - i5);
        int i6 = 0;
        while (i6 < min) {
            long j = jArr[i4];
            jArr[i4] = jArr[i5];
            jArr[i5] = j;
            i6++;
            i4++;
            i5++;
        }
    }

    public static void swap(Object[] objArr, int i, int i2) {
        if (isEmpty(objArr)) {
            return;
        }
        swap(objArr, i, i2, 1);
    }

    public static void swap(Object[] objArr, int i, int i2, int i3) {
        if (isEmpty(objArr) || i >= objArr.length || i2 >= objArr.length) {
            return;
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        int min = Math.min(Math.min(i3, objArr.length - i4), objArr.length - i5);
        int i6 = 0;
        while (i6 < min) {
            Object obj = objArr[i4];
            objArr[i4] = objArr[i5];
            objArr[i5] = obj;
            i6++;
            i4++;
            i5++;
        }
    }

    public static void swap(short[] sArr, int i, int i2) {
        if (isEmpty(sArr)) {
            return;
        }
        swap(sArr, i, i2, 1);
    }

    public static void swap(short[] sArr, int i, int i2, int i3) {
        if (isEmpty(sArr) || i >= sArr.length || i2 >= sArr.length) {
            return;
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        if (i4 == i5) {
            return;
        }
        int min = Math.min(Math.min(i3, sArr.length - i4), sArr.length - i5);
        int i6 = 0;
        while (i6 < min) {
            short s = sArr[i4];
            sArr[i4] = sArr[i5];
            sArr[i5] = s;
            i6++;
            i4++;
            i5++;
        }
    }

    public static void swap(boolean[] zArr, int i, int i2) {
        if (isEmpty(zArr)) {
            return;
        }
        swap(zArr, i, i2, 1);
    }

    public static void swap(boolean[] zArr, int i, int i2, int i3) {
        if (isEmpty(zArr) || i >= zArr.length || i2 >= zArr.length) {
            return;
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        int min = Math.min(Math.min(i3, zArr.length - i4), zArr.length - i5);
        int i6 = 0;
        while (i6 < min) {
            boolean z = zArr[i4];
            zArr[i4] = zArr[i5];
            zArr[i5] = z;
            i6++;
            i4++;
            i5++;
        }
    }

    public static <T> T[] toArray(T... tArr) {
        return tArr;
    }

    public static Map<Object, Object> toMap(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        HashMap hashMap = new HashMap((int) (objArr.length * 1.5d));
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                hashMap.put(entry.getKey(), entry.getValue());
            } else if (!(obj instanceof Object[])) {
                throw new IllegalArgumentException("Array element " + i + ", '" + obj + "', is neither of type Map.Entry nor an Array");
            } else {
                Object[] objArr2 = (Object[]) obj;
                if (objArr2.length < 2) {
                    throw new IllegalArgumentException("Array element " + i + ", '" + obj + "', has a length less than 2");
                }
                hashMap.put(objArr2[0], objArr2[1]);
            }
        }
        return hashMap;
    }

    public static Boolean[] toObject(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        if (zArr.length == 0) {
            return EMPTY_BOOLEAN_OBJECT_ARRAY;
        }
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; i < zArr.length; i++) {
            boolArr[i] = zArr[i] ? Boolean.TRUE : Boolean.FALSE;
        }
        return boolArr;
    }

    public static Byte[] toObject(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return EMPTY_BYTE_OBJECT_ARRAY;
        }
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    public static Character[] toObject(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        if (cArr.length == 0) {
            return EMPTY_CHARACTER_OBJECT_ARRAY;
        }
        Character[] chArr = new Character[cArr.length];
        for (int i = 0; i < cArr.length; i++) {
            chArr[i] = Character.valueOf(cArr[i]);
        }
        return chArr;
    }

    public static Double[] toObject(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return EMPTY_DOUBLE_OBJECT_ARRAY;
        }
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    public static Float[] toObject(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return EMPTY_FLOAT_OBJECT_ARRAY;
        }
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    public static Integer[] toObject(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        if (iArr.length == 0) {
            return EMPTY_INTEGER_OBJECT_ARRAY;
        }
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    public static Long[] toObject(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        if (jArr.length == 0) {
            return EMPTY_LONG_OBJECT_ARRAY;
        }
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    public static Short[] toObject(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        if (sArr.length == 0) {
            return EMPTY_SHORT_OBJECT_ARRAY;
        }
        Short[] shArr = new Short[sArr.length];
        for (int i = 0; i < sArr.length; i++) {
            shArr[i] = Short.valueOf(sArr[i]);
        }
        return shArr;
    }

    public static Object toPrimitive(Object obj) {
        if (obj == null) {
            return null;
        }
        Class<?> m529c = C20753d.m529c(obj.getClass().getComponentType());
        if (Integer.TYPE.equals(m529c)) {
            return toPrimitive((Integer[]) obj);
        }
        if (Long.TYPE.equals(m529c)) {
            return toPrimitive((Long[]) obj);
        }
        if (Short.TYPE.equals(m529c)) {
            return toPrimitive((Short[]) obj);
        }
        if (Double.TYPE.equals(m529c)) {
            return toPrimitive((Double[]) obj);
        }
        float[] fArr = obj;
        if (Float.TYPE.equals(m529c)) {
            fArr = toPrimitive((Float[]) obj);
        }
        return fArr;
    }

    public static byte[] toPrimitive(Byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[i].byteValue();
        }
        return bArr2;
    }

    public static byte[] toPrimitive(Byte[] bArr, byte b) {
        Byte b2;
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[i] == null ? b : b2.byteValue();
        }
        return bArr2;
    }

    public static char[] toPrimitive(Character[] chArr) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[chArr.length];
        for (int i = 0; i < chArr.length; i++) {
            cArr[i] = chArr[i].charValue();
        }
        return cArr;
    }

    public static char[] toPrimitive(Character[] chArr, char c) {
        Character ch;
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[chArr.length];
        for (int i = 0; i < chArr.length; i++) {
            cArr[i] = chArr[i] == null ? c : ch.charValue();
        }
        return cArr;
    }

    public static double[] toPrimitive(Double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return EMPTY_DOUBLE_ARRAY;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = dArr[i].doubleValue();
        }
        return dArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r6v0, types: [double] */
    public static double[] toPrimitive(Double[] dArr, double d) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return EMPTY_DOUBLE_ARRAY;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            Double d2 = dArr[i];
            dArr2[i] = (d2 == null ? d : d2.doubleValue()) == true ? 1 : 0;
        }
        return dArr2;
    }

    public static float[] toPrimitive(Float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return EMPTY_FLOAT_ARRAY;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = fArr[i].floatValue();
        }
        return fArr2;
    }

    public static float[] toPrimitive(Float[] fArr, float f) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return EMPTY_FLOAT_ARRAY;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            Float f2 = fArr[i];
            fArr2[i] = f2 == null ? f : f2.floatValue();
        }
        return fArr2;
    }

    public static int[] toPrimitive(Integer[] numArr) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr = new int[numArr.length];
        for (int i = 0; i < numArr.length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    public static int[] toPrimitive(Integer[] numArr, int i) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr = new int[numArr.length];
        for (int i2 = 0; i2 < numArr.length; i2++) {
            Integer num = numArr[i2];
            iArr[i2] = num == null ? i : num.intValue();
        }
        return iArr;
    }

    public static long[] toPrimitive(Long[] lArr) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr = new long[lArr.length];
        for (int i = 0; i < lArr.length; i++) {
            jArr[i] = lArr[i].longValue();
        }
        return jArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    public static long[] toPrimitive(Long[] lArr, long j) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr = new long[lArr.length];
        for (int i = 0; i < lArr.length; i++) {
            Long l = lArr[i];
            jArr[i] = (l == null ? j : l.longValue()) == true ? 1 : 0;
        }
        return jArr;
    }

    public static short[] toPrimitive(Short[] shArr) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr = new short[shArr.length];
        for (int i = 0; i < shArr.length; i++) {
            sArr[i] = shArr[i].shortValue();
        }
        return sArr;
    }

    public static short[] toPrimitive(Short[] shArr, short s) {
        Short sh;
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr = new short[shArr.length];
        for (int i = 0; i < shArr.length; i++) {
            sArr[i] = shArr[i] == null ? s : sh.shortValue();
        }
        return sArr;
    }

    public static boolean[] toPrimitive(Boolean[] boolArr) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return EMPTY_BOOLEAN_ARRAY;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i = 0; i < boolArr.length; i++) {
            zArr[i] = boolArr[i].booleanValue();
        }
        return zArr;
    }

    public static boolean[] toPrimitive(Boolean[] boolArr, boolean z) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return EMPTY_BOOLEAN_ARRAY;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i = 0; i < boolArr.length; i++) {
            Boolean bool = boolArr[i];
            zArr[i] = bool == null ? z : bool.booleanValue();
        }
        return zArr;
    }

    public static String toString(Object obj) {
        return toString(obj, "{}");
    }

    public static String toString(Object obj, String str) {
        if (obj == null) {
            return str;
        }
        C20737f c20737f = new C20737f(obj, ToStringStyle.SIMPLE_STYLE);
        c20737f.f67217b.append(c20737f.f67216a, (String) null, obj, (Boolean) null);
        return c20737f.toString();
    }

    public static String[] toStringArray(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        if (objArr.length == 0) {
            return EMPTY_STRING_ARRAY;
        }
        String[] strArr = new String[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            strArr[i] = objArr[i].toString();
        }
        return strArr;
    }

    public static String[] toStringArray(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        if (objArr.length == 0) {
            return EMPTY_STRING_ARRAY;
        }
        String[] strArr = new String[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            strArr[i] = obj == null ? str : obj.toString();
        }
        return strArr;
    }
}
