package com.google.zxing.p408c;
/* renamed from: com.google.zxing.c.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/a.class */
public final class C16166a extends AbstractC16180n {

    /* renamed from: a */
    static final char[] f57102a = "0123456789-$:/.+ABCD".toCharArray();

    /* renamed from: b */
    static final int[] f57103b = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* renamed from: c */
    private static final char[] f57104c = {'A', 'B', 'C', 'D'};

    /* renamed from: d */
    private final StringBuilder f57105d = new StringBuilder(20);

    /* renamed from: e */
    private int[] f57106e = new int[80];

    /* renamed from: f */
    private int f57107f = 0;

    /* renamed from: a */
    public static boolean m7702a(char[] cArr, char c) {
        if (cArr != null) {
            for (char c2 : cArr) {
                if (c2 == c) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
