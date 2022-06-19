package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;
/* loaded from: classes-dex2jar.jar:com/google/zxing/qrcode/decoder/DataMask.class */
public abstract class DataMask extends Enum<DataMask> {
    private static final /* synthetic */ DataMask[] $VALUES;
    public static final DataMask DATA_MASK_000;
    public static final DataMask DATA_MASK_001;
    public static final DataMask DATA_MASK_010;
    public static final DataMask DATA_MASK_011;
    public static final DataMask DATA_MASK_100;
    public static final DataMask DATA_MASK_101;
    public static final DataMask DATA_MASK_110;
    public static final DataMask DATA_MASK_111;

    static {
        DataMask dataMask = new 1("DATA_MASK_000", 0);
        DATA_MASK_000 = dataMask;
        DataMask dataMask2 = new 2("DATA_MASK_001", 1);
        DATA_MASK_001 = dataMask2;
        DataMask dataMask3 = new 3("DATA_MASK_010", 2);
        DATA_MASK_010 = dataMask3;
        DataMask dataMask4 = new 4("DATA_MASK_011", 3);
        DATA_MASK_011 = dataMask4;
        DataMask dataMask5 = new 5("DATA_MASK_100", 4);
        DATA_MASK_100 = dataMask5;
        DataMask dataMask6 = new 6("DATA_MASK_101", 5);
        DATA_MASK_101 = dataMask6;
        DataMask dataMask7 = new 7("DATA_MASK_110", 6);
        DATA_MASK_110 = dataMask7;
        DataMask dataMask8 = new 8("DATA_MASK_111", 7);
        DATA_MASK_111 = dataMask8;
        $VALUES = new DataMask[]{dataMask, dataMask2, dataMask3, dataMask4, dataMask5, dataMask6, dataMask7, dataMask8};
    }

    private DataMask(String str, int i) {
        super(str, i);
    }

    public static DataMask valueOf(String str) {
        return (DataMask) Enum.valueOf(DataMask.class, str);
    }

    public static DataMask[] values() {
        return (DataMask[]) $VALUES.clone();
    }

    public abstract boolean isMasked(int i, int i2);

    public final void unmaskBitMatrix(BitMatrix bitMatrix, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (isMasked(i2, i3)) {
                    bitMatrix.flip(i3, i2);
                }
            }
        }
    }
}
