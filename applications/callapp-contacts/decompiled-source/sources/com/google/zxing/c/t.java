package com.google.zxing.c;

import com.google.zxing.FormatException;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/t.class */
public abstract class t extends n {

    /* renamed from: b  reason: collision with root package name */
    static final int[] f32973b = {1, 1, 1};

    /* renamed from: c  reason: collision with root package name */
    static final int[] f32974c = {1, 1, 1, 1, 1};

    /* renamed from: d  reason: collision with root package name */
    static final int[] f32975d = {1, 1, 1, 1, 1, 1};
    static final int[][] e;
    static final int[][] f;

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f32976a = new StringBuilder(20);
    private final s g = new s();
    private final l h = new l();

    /* JADX WARN: Type inference failed for: r0v21, types: [int[], int[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8, types: [int[], int[][], java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 2 */
    static {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.c.t.m5988clinit():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i = length - 1;
        return b(charSequence.subSequence(0, i)) == Character.digit(charSequence.charAt(i), 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            int charAt = charSequence.charAt(i2) - '0';
            if (charAt < 0 || charAt > 9) {
                throw FormatException.a();
            }
            i += charAt;
        }
        int i3 = i * 3;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            int charAt2 = charSequence.charAt(i4) - '0';
            if (charAt2 < 0 || charAt2 > 9) {
                throw FormatException.a();
            }
            i3 += charAt2;
        }
        return (1000 - i3) % 10;
    }
}
