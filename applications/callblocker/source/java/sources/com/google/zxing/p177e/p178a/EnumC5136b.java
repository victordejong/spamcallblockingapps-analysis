package com.google.zxing.p177e.p178a;
/* renamed from: com.google.zxing.e.a.b */
/* loaded from: classes-dex2jar.jar:com/google/zxing/e/a/b.class */
public enum EnumC5136b {
    TERMINATOR(new int[]{0, 0, 0}, 0),
    NUMERIC(new int[]{10, 12, 14}, 1),
    ALPHANUMERIC(new int[]{9, 11, 13}, 2),
    STRUCTURED_APPEND(new int[]{0, 0, 0}, 3),
    BYTE(new int[]{8, 16, 16}, 4),
    ECI(new int[]{0, 0, 0}, 7),
    KANJI(new int[]{8, 10, 12}, 8),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}, 5),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}, 9),
    HANZI(new int[]{8, 10, 12}, 13);
    

    /* renamed from: k */
    private final int[] f21707k;

    /* renamed from: l */
    private final int f21708l;

    EnumC5136b(int[] iArr, int i) {
        this.f21707k = iArr;
        this.f21708l = i;
    }

    /* renamed from: a */
    public int m1392a() {
        return this.f21708l;
    }

    /* renamed from: a */
    public int m1391a(C5137c c5137c) {
        int m1390a = c5137c.m1390a();
        return this.f21707k[(m1390a <= 9 ? null : m1390a <= 26 ? 1 : 2) == 1 ? 1 : 0];
    }
}
