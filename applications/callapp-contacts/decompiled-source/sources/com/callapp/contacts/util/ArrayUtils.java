package com.callapp.contacts.util;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ArrayUtils.class */
public class ArrayUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray f15848a = new SparseArray();

    public static <T> SparseArray<T> a() {
        return f15848a;
    }

    public static <T> boolean a(T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static long[] a(Long[] lArr) {
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

    public static Long[] a(long[] jArr) {
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

    public static boolean[] a(int[] iArr) {
        int length = iArr != null ? iArr.length : 0;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = iArr[i] != 0;
        }
        return zArr;
    }

    public static <T> boolean b(T[] tArr) {
        return tArr != null && tArr.length > 0;
    }
}
