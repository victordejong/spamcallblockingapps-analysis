package p626l.p632u;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.h */
/* loaded from: classes3-dex2jar.jar:l/u/h.class */
public class C15011h extends C15009g {
    /* renamed from: a */
    public static final int m607a(int[] iArr, int i, int i2, int i3) {
        C15149k.m377b(iArr, "$this$binarySearch");
        return Arrays.binarySearch(iArr, i2, i3, i);
    }

    /* renamed from: a */
    public static final <T> List<T> m605a(T[] tArr) {
        C15149k.m377b(tArr, "$this$asList");
        List<T> a = C15017j.m568a(tArr);
        C15149k.m383a((Object) a, "ArraysUtilJVM.asList(this)");
        return a;
    }

    /* renamed from: a */
    public static final <T> void m603a(T[] tArr, T t, int i, int i2) {
        C15149k.m377b(tArr, "$this$fill");
        Arrays.fill(tArr, i, i2, t);
    }

    /* renamed from: a */
    public static /* synthetic */ void m602a(Object[] objArr, Object obj, int i, int i2, int i3, Object obj2) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = objArr.length;
        }
        m603a(objArr, obj, i, i2);
    }

    /* renamed from: a */
    public static final <T> void m601a(T[] tArr, Comparator<? super T> comparator) {
        C15149k.m377b(tArr, "$this$sortWith");
        C15149k.m377b(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }

    /* renamed from: a */
    public static final byte[] m611a(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        C15149k.m377b(bArr, "$this$copyInto");
        C15149k.m377b(bArr2, "destination");
        System.arraycopy(bArr, i2, bArr2, i, i3 - i2);
        return bArr2;
    }

    /* renamed from: a */
    public static final Boolean[] m598a(boolean[] zArr) {
        C15149k.m377b(zArr, "$this$toTypedArray");
        Boolean[] boolArr = new Boolean[zArr.length];
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    /* renamed from: a */
    public static final Byte[] m612a(byte[] bArr) {
        C15149k.m377b(bArr, "$this$toTypedArray");
        Byte[] bArr2 = new Byte[bArr.length];
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: a */
    public static final Double[] m610a(double[] dArr) {
        C15149k.m377b(dArr, "$this$toTypedArray");
        Double[] dArr2 = new Double[dArr.length];
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    /* renamed from: a */
    public static final Float[] m609a(float[] fArr) {
        C15149k.m377b(fArr, "$this$toTypedArray");
        Float[] fArr2 = new Float[fArr.length];
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    /* renamed from: a */
    public static final Integer[] m608a(int[] iArr) {
        C15149k.m377b(iArr, "$this$toTypedArray");
        Integer[] numArr = new Integer[iArr.length];
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    /* renamed from: a */
    public static final Long[] m606a(long[] jArr) {
        C15149k.m377b(jArr, "$this$toTypedArray");
        Long[] lArr = new Long[jArr.length];
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    /* renamed from: a */
    public static final <T> T[] m604a(T[] tArr, T t) {
        C15149k.m377b(tArr, "$this$plus");
        int length = tArr.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, length + 1);
        tArr2[length] = t;
        C15149k.m383a((Object) tArr2, "result");
        return tArr2;
    }

    /* renamed from: a */
    public static final <T> T[] m600a(T[] tArr, T[] tArr2, int i, int i2, int i3) {
        C15149k.m377b(tArr, "$this$copyInto");
        C15149k.m377b(tArr2, "destination");
        System.arraycopy(tArr, i2, tArr2, i, i3 - i2);
        return tArr2;
    }

    /* renamed from: a */
    public static /* synthetic */ Object[] m599a(Object[] objArr, Object[] objArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = objArr.length;
        }
        m600a(objArr, objArr2, i, i2, i3);
        return objArr2;
    }

    /* renamed from: b */
    public static final <T> void m597b(T[] tArr) {
        C15149k.m377b(tArr, "$this$sort");
        if (tArr.length > 1) {
            Arrays.sort(tArr);
        }
    }
}
