package com.google.zxing.p408c;

import com.google.zxing.FormatException;
/* renamed from: com.google.zxing.c.t */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/t.class */
public abstract class AbstractC16186t extends AbstractC16180n {

    /* renamed from: b */
    static final int[] f57144b = {1, 1, 1};

    /* renamed from: c */
    static final int[] f57145c = {1, 1, 1, 1, 1};

    /* renamed from: d */
    static final int[] f57146d = {1, 1, 1, 1, 1, 1};

    /* renamed from: e */
    static final int[][] f57147e;

    /* renamed from: f */
    static final int[][] f57148f;

    /* renamed from: a */
    private final StringBuilder f57149a = new StringBuilder(20);

    /* renamed from: g */
    private final C16185s f57150g = new C16185s();

    /* renamed from: h */
    private final C16178l f57151h = new C16178l();

    /* JADX WARN: Type inference failed for: r0v21, types: [int[], int[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8, types: [int[], int[][], java.lang.Object] */
    static {
        ?? r0 = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f57147e = r0;
        ?? r02 = new int[20];
        f57148f = r02;
        System.arraycopy(r0, 0, r02, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr = f57147e[i - 10];
            int[] iArr2 = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr2[i2] = iArr[(iArr.length - i2) - 1];
            }
            f57148f[i] = iArr2;
        }
    }

    /* renamed from: a */
    public static boolean m7692a(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i = length - 1;
        return m7691b(charSequence.subSequence(0, i)) == Character.digit(charSequence.charAt(i), 10);
    }

    /* renamed from: b */
    public static int m7691b(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            int charAt = charSequence.charAt(i2) - '0';
            if (charAt < 0 || charAt > 9) {
                throw FormatException.m7765a();
            }
            i += charAt;
        }
        int i3 = i * 3;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            int charAt2 = charSequence.charAt(i4) - '0';
            if (charAt2 < 0 || charAt2 > 9) {
                throw FormatException.m7765a();
            }
            i3 += charAt2;
        }
        return (1000 - i3) % 10;
    }
}
