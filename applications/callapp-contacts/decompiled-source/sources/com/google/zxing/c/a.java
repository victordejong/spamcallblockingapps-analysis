package com.google.zxing.c;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/a.class */
public final class a extends n {

    /* renamed from: a  reason: collision with root package name */
    static final char[] f32937a = "0123456789-$:/.+ABCD".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    static final int[] f32938b = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f32939c = {'A', 'B', 'C', 'D'};

    /* renamed from: d  reason: collision with root package name */
    private final StringBuilder f32940d = new StringBuilder(20);
    private int[] e = new int[80];
    private int f = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(char[] cArr, char c2) {
        if (cArr == null) {
            return false;
        }
        for (char c3 : cArr) {
            if (c3 == c2) {
                return true;
            }
        }
        return false;
    }
}
