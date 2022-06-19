package com.google.zxing.p174c;
/* renamed from: com.google.zxing.c.a */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/a.class */
public final class C5096a extends AbstractC5109m {

    /* renamed from: a */
    static final char[] f21571a = "0123456789-$:/.+ABCD".toCharArray();

    /* renamed from: b */
    static final int[] f21572b = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* renamed from: c */
    private static final char[] f21573c = {'A', 'B', 'C', 'D'};

    /* renamed from: a */
    public static boolean m1490a(char[] cArr, char c) {
        boolean z = false;
        if (cArr != null) {
            int length = cArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (cArr[i] == c) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }
}
