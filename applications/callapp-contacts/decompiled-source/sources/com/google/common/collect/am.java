package com.google.common.collect;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/am.class */
public final class am {
    private am() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i);
        throw new NullPointerException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] a(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            a(objArr[i2], i2);
        }
        return objArr;
    }
}
