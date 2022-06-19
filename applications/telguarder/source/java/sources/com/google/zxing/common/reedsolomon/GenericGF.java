package com.google.zxing.common.reedsolomon;

import com.pubmatic.sdk.video.POBVastError;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/common/reedsolomon/GenericGF.class */
public final class GenericGF {
    public static final GenericGF AZTEC_DATA_6;
    public static final GenericGF AZTEC_DATA_8;
    public static final GenericGF DATA_MATRIX_FIELD_256;
    public static final GenericGF MAXICODE_FIELD_64;
    private final int[] expTable;
    private final int generatorBase;
    private final int[] logTable;
    private final GenericGFPoly one;
    private final int primitive;
    private final int size;
    private final GenericGFPoly zero;
    public static final GenericGF AZTEC_DATA_12 = new GenericGF(4201, 4096, 1);
    public static final GenericGF AZTEC_DATA_10 = new GenericGF(1033, 1024, 1);
    public static final GenericGF AZTEC_PARAM = new GenericGF(19, 16, 1);
    public static final GenericGF QR_CODE_FIELD_256 = new GenericGF(285, 256, 0);

    static {
        GenericGF genericGF = new GenericGF(67, 64, 1);
        AZTEC_DATA_6 = genericGF;
        GenericGF genericGF2 = new GenericGF(POBVastError.WRAPPER_TIMEOUT, 256, 1);
        DATA_MATRIX_FIELD_256 = genericGF2;
        AZTEC_DATA_8 = genericGF2;
        MAXICODE_FIELD_64 = genericGF;
    }

    public GenericGF(int i, int i2, int i3) {
        this.primitive = i;
        this.size = i2;
        this.generatorBase = i3;
        this.expTable = new int[i2];
        this.logTable = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.expTable[i5] = i4;
            int i6 = i4 << 1;
            i4 = i6;
            if (i6 >= i2) {
                i4 = (i6 ^ i) & (i2 - 1);
            }
        }
        for (int i7 = 0; i7 < i2 - 1; i7++) {
            this.logTable[this.expTable[i7]] = i7;
        }
        this.zero = new GenericGFPoly(this, new int[]{0});
        this.one = new GenericGFPoly(this, new int[]{1});
    }

    public static int addOrSubtract(int i, int i2) {
        return i ^ i2;
    }

    public GenericGFPoly buildMonomial(int i, int i2) {
        if (i >= 0) {
            if (i2 == 0) {
                return this.zero;
            }
            int[] iArr = new int[i + 1];
            iArr[0] = i2;
            return new GenericGFPoly(this, iArr);
        }
        throw new IllegalArgumentException();
    }

    public int exp(int i) {
        return this.expTable[i];
    }

    public int getGeneratorBase() {
        return this.generatorBase;
    }

    public GenericGFPoly getOne() {
        return this.one;
    }

    public int getSize() {
        return this.size;
    }

    public GenericGFPoly getZero() {
        return this.zero;
    }

    public int inverse(int i) {
        if (i != 0) {
            return this.expTable[(this.size - this.logTable[i]) - 1];
        }
        throw new ArithmeticException();
    }

    public int log(int i) {
        if (i != 0) {
            return this.logTable[i];
        }
        throw new IllegalArgumentException();
    }

    public int multiply(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.expTable;
        int[] iArr2 = this.logTable;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.size - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.primitive) + ',' + this.size + ')';
    }
}
