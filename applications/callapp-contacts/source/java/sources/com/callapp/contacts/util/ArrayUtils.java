package com.callapp.contacts.util;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ArrayUtils.class */
public class ArrayUtils {

    /* renamed from: a */
    private static final SparseArray f27685a = new SparseArray();

    /* renamed from: a */
    public static <T> SparseArray<T> m27620a() {
        return f27685a;
    }

    /* renamed from: a */
    public static <T> boolean m27616a(T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    /* renamed from: a */
    public static long[] m27617a(Long[] lArr) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return new long[0];
        }
        long[] jArr = new long[lArr.length];
        for (int i = 0; i < lArr.length; i++) {
            jArr[i] = lArr[i].longValue();
        }
        return jArr;
    }

    /* renamed from: a */
    public static Long[] m27618a(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        if (jArr.length == 0) {
            return new Long[0];
        }
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    /* renamed from: a */
    public static boolean[] m27619a(int[] iArr) {
        int length = iArr != null ? iArr.length : 0;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = iArr[i] != 0;
        }
        return zArr;
    }

    /* renamed from: b */
    public static <T> boolean m27615b(T[] tArr) {
        return tArr != null && tArr.length > 0;
    }
}
