package com.google.common.collect;
/* renamed from: com.google.common.collect.am */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/am.class */
public final class C15469am {
    private C15469am() {
    }

    /* renamed from: a */
    public static Object m8837a(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i);
        throw new NullPointerException(sb.toString());
    }

    /* renamed from: a */
    public static Object[] m8836a(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m8837a(objArr[i2], i2);
        }
        return objArr;
    }
}
