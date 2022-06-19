package com.google.zxing.p411e.p412a;
/* renamed from: com.google.zxing.e.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/e/a/b.class */
public enum EnumC16210b {
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
    
    private final int bits;
    private final int[] characterCountBitsForVersions;

    EnumC16210b(int[] iArr, int i) {
        this.characterCountBitsForVersions = iArr;
        this.bits = i;
    }

    public static EnumC16210b forBits(int i) {
        if (i != 0) {
            if (i == 1) {
                return NUMERIC;
            }
            if (i == 2) {
                return ALPHANUMERIC;
            }
            if (i == 3) {
                return STRUCTURED_APPEND;
            }
            if (i == 4) {
                return BYTE;
            }
            if (i == 5) {
                return FNC1_FIRST_POSITION;
            }
            if (i == 7) {
                return ECI;
            }
            if (i == 8) {
                return KANJI;
            }
            if (i == 9) {
                return FNC1_SECOND_POSITION;
            }
            if (i != 13) {
                throw new IllegalArgumentException();
            }
            return HANZI;
        }
        return TERMINATOR;
    }

    public final int getBits() {
        return this.bits;
    }

    public final int getCharacterCountBits(C16211c c16211c) {
        int i = c16211c.f57213a;
        return this.characterCountBitsForVersions[(i <= 9 ? null : i <= 26 ? 1 : 2) == 1 ? 1 : 0];
    }
}
