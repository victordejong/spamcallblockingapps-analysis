package org.spongycastle.pqc.math.ntru.util;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/util/ArrayEncoder.class */
public class ArrayEncoder {
    private static final int[] COEFF1_TABLE = {0, 0, 0, 1, 1, 1, -1, -1};
    private static final int[] COEFF2_TABLE = {0, 1, -1, 0, 1, -1, 0, 1};
    private static final int[] BIT1_TABLE = {1, 1, 1, 0, 0, 0, 1, 0, 1};
    private static final int[] BIT2_TABLE = {1, 1, 1, 1, 0, 0, 0, 1, 0};
    private static final int[] BIT3_TABLE = {1, 0, 1, 0, 0, 1, 1, 1, 0};

    public static int[] decodeMod3Sves(byte[] bArr, int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        int i3 = 0;
        while (i2 < bArr.length * 8) {
            int i4 = i2 + 1;
            int i5 = i4 + 1;
            int bit = (getBit(bArr, i2) * 4) + (getBit(bArr, i4) * 2) + getBit(bArr, i5);
            int i6 = i3 + 1;
            iArr[i3] = COEFF1_TABLE[bit];
            i3 = i6 + 1;
            iArr[i6] = COEFF2_TABLE[bit];
            if (i3 > i - 2) {
                break;
            }
            i2 = i5 + 1;
        }
        return iArr;
    }

    public static int[] decodeMod3Tight(InputStream inputStream, int i) throws IOException {
        return decodeMod3Tight(Util.readFullLength(inputStream, (int) Math.ceil(((i * Math.log(3.0d)) / Math.log(2.0d)) / 8.0d)), i);
    }

    public static int[] decodeMod3Tight(byte[] bArr, int i) {
        BigInteger bigInteger = new BigInteger(1, bArr);
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = bigInteger.mod(BigInteger.valueOf(3L)).intValue() - 1;
            if (iArr[i2] > 1) {
                iArr[i2] = iArr[i2] - 3;
            }
            bigInteger = bigInteger.divide(BigInteger.valueOf(3L));
        }
        return iArr;
    }

    public static int[] decodeModQ(InputStream inputStream, int i, int i2) throws IOException {
        return decodeModQ(Util.readFullLength(inputStream, (((31 - Integer.numberOfLeadingZeros(i2)) * i) + 7) / 8), i, i2);
    }

    public static int[] decodeModQ(byte[] bArr, int i, int i2) {
        int[] iArr = new int[i];
        int numberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(i2);
        int i3 = 0;
        int i4 = 0;
        while (i3 < i * numberOfLeadingZeros) {
            int i5 = i4;
            if (i3 > 0) {
                i5 = i4;
                if (i3 % numberOfLeadingZeros == 0) {
                    i5 = i4 + 1;
                }
            }
            iArr[i5] = iArr[i5] + (getBit(bArr, i3) << (i3 % numberOfLeadingZeros));
            i3++;
            i4 = i5;
        }
        return iArr;
    }

    public static byte[] encodeMod3Sves(int[] iArr) {
        byte[] bArr = new byte[((((iArr.length * 3) + 1) / 2) + 7) / 8];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < (iArr.length / 2) * 2) {
            int i4 = i + 1;
            int i5 = iArr[i] + 1;
            int i6 = iArr[i4] + 1;
            if (i5 == 0 && i6 == 0) {
                throw new IllegalStateException("Illegal encoding!");
            }
            int i7 = (i5 * 3) + i6;
            int i8 = BIT1_TABLE[i7];
            int i9 = BIT2_TABLE[i7];
            int i10 = BIT3_TABLE[i7];
            for (int i11 = 0; i11 < 3; i11++) {
                bArr[i3] = (byte) (bArr[i3] | (new int[]{i8, i9, i10}[i11] << i2));
                if (i2 == 7) {
                    i3++;
                    i2 = 0;
                } else {
                    i2++;
                }
            }
            i = i4 + 1;
            i3 = i3;
        }
        return bArr;
    }

    public static byte[] encodeMod3Tight(int[] iArr) {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int length = iArr.length - 1; length >= 0; length--) {
            bigInteger = bigInteger.multiply(BigInteger.valueOf(3L)).add(BigInteger.valueOf(iArr[length] + 1));
        }
        int bitLength = (BigInteger.valueOf(3L).pow(iArr.length).bitLength() + 7) / 8;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < bitLength) {
            byte[] bArr = new byte[bitLength];
            System.arraycopy(byteArray, 0, bArr, bitLength - byteArray.length, byteArray.length);
            return bArr;
        }
        byte[] bArr2 = byteArray;
        if (byteArray.length > bitLength) {
            bArr2 = Arrays.copyOfRange(byteArray, 1, byteArray.length);
        }
        return bArr2;
    }

    public static byte[] encodeModQ(int[] iArr, int i) {
        int numberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(i);
        byte[] bArr = new byte[((iArr.length * numberOfLeadingZeros) + 7) / 8];
        int i2 = 0;
        int i3 = 0;
        for (int i4 : iArr) {
            for (int i5 = 0; i5 < numberOfLeadingZeros; i5++) {
                bArr[i3] = (byte) ((((i4 >> i5) & 1) << i2) | bArr[i3]);
                if (i2 == 7) {
                    i3++;
                    i2 = 0;
                } else {
                    i2++;
                }
            }
        }
        return bArr;
    }

    private static int getBit(byte[] bArr, int i) {
        return ((bArr[i / 8] & 255) >> (i % 8)) & 1;
    }
}
