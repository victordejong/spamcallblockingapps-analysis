package com.googlecode.mp4parser.p425c;
/* renamed from: com.googlecode.mp4parser.c.i */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/i.class */
public final class C16290i {
    private C16290i() {
    }

    /* renamed from: a */
    public static long[] m7506a(long[] jArr, long... jArr2) {
        long[] jArr3 = jArr;
        if (jArr == null) {
            jArr3 = new long[0];
        }
        long[] jArr4 = new long[jArr3.length + 1];
        System.arraycopy(jArr3, 0, jArr4, 0, jArr3.length);
        System.arraycopy(jArr2, 0, jArr4, jArr3.length, 1);
        return jArr4;
    }
}
