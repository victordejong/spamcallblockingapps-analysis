package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
/* renamed from: org.bouncycastle.math.ec.IntArray */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/IntArray.class */
public class IntArray {
    private int[] m_ints;

    public IntArray(int i) {
        this.m_ints = new int[i];
    }

    public IntArray(BigInteger bigInteger) {
        this(bigInteger, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [int] */
    /* JADX WARN: Type inference failed for: r0v52, types: [int] */
    public IntArray(BigInteger bigInteger, int i) {
        int i2;
        if (bigInteger.signum() != -1) {
            if (bigInteger.equals(ECConstants.ZERO)) {
                this.m_ints = new int[]{0};
                return;
            }
            byte[] byteArray = bigInteger.toByteArray();
            int length = byteArray.length;
            if (byteArray[0] == 0) {
                length--;
                i2 = 1;
            } else {
                i2 = 0;
            }
            int i3 = (length + 3) / 4;
            if (i3 < i) {
                this.m_ints = new int[i];
            } else {
                this.m_ints = new int[i3];
            }
            int i4 = i3 - 1;
            int i5 = (length % 4) + i2;
            int i6 = i2;
            int i7 = i4;
            if (i2 < i5) {
                int i8 = 0;
                while (i2 < i5) {
                    byte b = byteArray[i2];
                    byte b2 = b;
                    if (b < 0) {
                        b2 = b + 256;
                    }
                    i8 = (i8 << 8) | b2;
                    i2++;
                }
                this.m_ints[i4] = i8;
                i7 = i4 - 1;
                i6 = i2;
            }
            while (i7 >= 0) {
                int i9 = 0;
                int i10 = 0;
                while (i9 < 4) {
                    byte b3 = byteArray[i6];
                    byte b4 = b3;
                    if (b3 < 0) {
                        b4 = b3 + 256;
                    }
                    i10 = (i10 << 8) | b4;
                    i9++;
                    i6++;
                }
                this.m_ints[i7] = i10;
                i7--;
            }
            return;
        }
        throw new IllegalArgumentException("Only positive Integers allowed");
    }

    public IntArray(int[] iArr) {
        this.m_ints = iArr;
    }

    private int[] resizedInts(int i) {
        int[] iArr = new int[i];
        int[] iArr2 = this.m_ints;
        int length = iArr2.length;
        int i2 = i;
        if (length < i) {
            i2 = length;
        }
        System.arraycopy(iArr2, 0, iArr, 0, i2);
        return iArr;
    }

    public void addShifted(IntArray intArray, int i) {
        int usedLength = intArray.getUsedLength();
        int i2 = usedLength + i;
        if (i2 > this.m_ints.length) {
            this.m_ints = resizedInts(i2);
        }
        for (int i3 = 0; i3 < usedLength; i3++) {
            int[] iArr = this.m_ints;
            int i4 = i3 + i;
            iArr[i4] = iArr[i4] ^ intArray.m_ints[i3];
        }
    }

    public int bitLength() {
        int i;
        int i2;
        int usedLength = getUsedLength();
        if (usedLength == 0) {
            return 0;
        }
        int i3 = usedLength - 1;
        int i4 = this.m_ints[i3];
        int i5 = (i3 << 5) + 1;
        if (((-65536) & i4) == 0) {
            i2 = i5;
            i = i4;
            if (i4 > 255) {
                i2 = i5 + 8;
                i = i4 >>> 8;
            }
        } else if (((-16777216) & i4) != 0) {
            i2 = i5 + 24;
            i = i4 >>> 24;
        } else {
            i2 = i5 + 16;
            i = i4 >>> 16;
        }
        while (i != 1) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public Object clone() {
        return new IntArray(Arrays.clone(this.m_ints));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IntArray)) {
            return false;
        }
        IntArray intArray = (IntArray) obj;
        int usedLength = getUsedLength();
        if (intArray.getUsedLength() != usedLength) {
            return false;
        }
        for (int i = 0; i < usedLength; i++) {
            if (this.m_ints[i] != intArray.m_ints[i]) {
                return false;
            }
        }
        return true;
    }

    public void flipBit(int i) {
        int i2 = i >> 5;
        int[] iArr = this.m_ints;
        iArr[i2] = (1 << (i & 31)) ^ iArr[i2];
    }

    public int getLength() {
        return this.m_ints.length;
    }

    public int getUsedLength() {
        int i;
        int[] iArr = this.m_ints;
        int length = iArr.length;
        if (length < 1) {
            return 0;
        }
        int i2 = length;
        if (iArr[0] != 0) {
            do {
                length--;
            } while (this.m_ints[length] == 0);
            return length + 1;
        }
        do {
            i = i2 - 1;
            if (this.m_ints[i] != 0) {
                return i + 1;
            }
            i2 = i;
        } while (i > 0);
        return 0;
    }

    public int hashCode() {
        int usedLength = getUsedLength();
        int i = 1;
        for (int i2 = 0; i2 < usedLength; i2++) {
            i = (i * 31) + this.m_ints[i2];
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (getUsedLength() == 0) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isZero() {
        /*
            r3 = this;
            r0 = r3
            int[] r0 = r0.m_ints
            r4 = r0
            r0 = r4
            int r0 = r0.length
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L21
            r0 = r6
            r7 = r0
            r0 = r4
            r1 = 0
            r0 = r0[r1]
            if (r0 != 0) goto L24
            r0 = r6
            r7 = r0
            r0 = r3
            int r0 = r0.getUsedLength()
            if (r0 != 0) goto L24
        L21:
            r0 = 1
            r7 = r0
        L24:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.math.p012ec.IntArray.isZero():boolean");
    }

    public IntArray multiply(IntArray intArray, int i) {
        int i2 = (i + 31) >> 5;
        if (this.m_ints.length < i2) {
            this.m_ints = resizedInts(i2);
        }
        int i3 = 1;
        IntArray intArray2 = new IntArray(intArray.resizedInts(intArray.getLength() + 1));
        IntArray intArray3 = new IntArray(((i + i) + 31) >> 5);
        for (int i4 = 0; i4 < 32; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                if ((this.m_ints[i5] & i3) != 0) {
                    intArray3.addShifted(intArray2, i5);
                }
            }
            i3 <<= 1;
            intArray2.shiftLeft();
        }
        return intArray3;
    }

    public void reduce(int i, int[] iArr) {
        for (int i2 = (i + i) - 2; i2 >= i; i2--) {
            if (testBit(i2)) {
                int i3 = i2 - i;
                flipBit(i3);
                flipBit(i2);
                int length = iArr.length;
                while (true) {
                    length--;
                    if (length >= 0) {
                        flipBit(iArr[length] + i3);
                    }
                }
            }
        }
        this.m_ints = resizedInts((i + 31) >> 5);
    }

    public void setBit(int i) {
        int i2 = i >> 5;
        int[] iArr = this.m_ints;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public IntArray shiftLeft(int i) {
        int usedLength = getUsedLength();
        if (usedLength != 0 && i != 0) {
            if (i > 31) {
                throw new IllegalArgumentException("shiftLeft() for max 31 bits , " + i + "bit shift is not possible");
            }
            int[] iArr = new int[usedLength + 1];
            int i2 = 32 - i;
            iArr[0] = this.m_ints[0] << i;
            for (int i3 = 1; i3 < usedLength; i3++) {
                int[] iArr2 = this.m_ints;
                iArr[i3] = (iArr2[i3 - 1] >>> i2) | (iArr2[i3] << i);
            }
            iArr[usedLength] = this.m_ints[usedLength - 1] >>> i2;
            return new IntArray(iArr);
        }
        return this;
    }

    public void shiftLeft() {
        int usedLength = getUsedLength();
        if (usedLength == 0) {
            return;
        }
        int[] iArr = this.m_ints;
        int i = usedLength;
        if (iArr[usedLength - 1] < 0) {
            int i2 = usedLength + 1;
            i = i2;
            if (i2 > iArr.length) {
                this.m_ints = resizedInts(iArr.length + 1);
                i = i2;
            }
        }
        int i3 = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i3 >= i) {
                return;
            }
            int[] iArr2 = this.m_ints;
            boolean z3 = iArr2[i3] < 0;
            iArr2[i3] = iArr2[i3] << 1;
            if (z2) {
                iArr2[i3] = iArr2[i3] | 1;
            }
            i3++;
            z = z3;
        }
    }

    public IntArray square(int i) {
        int[] iArr = {0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85};
        int i2 = (i + 31) >> 5;
        if (this.m_ints.length < i2) {
            this.m_ints = resizedInts(i2);
        }
        IntArray intArray = new IntArray(i2 + i2);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < 4; i5++) {
                i4 = (i4 >>> 8) | (iArr[(this.m_ints[i3] >>> (i5 * 4)) & 15] << 24);
            }
            int[] iArr2 = intArray.m_ints;
            int i6 = i3 + i3;
            iArr2[i6] = i4;
            int i7 = this.m_ints[i3];
            int i8 = 0;
            for (int i9 = 0; i9 < 4; i9++) {
                i8 = (i8 >>> 8) | (iArr[((i7 >>> 16) >>> (i9 * 4)) & 15] << 24);
            }
            intArray.m_ints[i6 + 1] = i8;
        }
        return intArray;
    }

    public boolean testBit(int i) {
        boolean z = true;
        if (((1 << (i & 31)) & this.m_ints[i >> 5]) == 0) {
            z = false;
        }
        return z;
    }

    public BigInteger toBigInteger() {
        int i;
        int usedLength = getUsedLength();
        if (usedLength == 0) {
            return ECConstants.ZERO;
        }
        int i2 = usedLength - 1;
        int i3 = this.m_ints[i2];
        byte[] bArr = new byte[4];
        int i4 = 3;
        int i5 = 0;
        boolean z = false;
        while (i4 >= 0) {
            byte b = (byte) (i3 >>> (i4 * 8));
            if (!z) {
                i = i5;
                if (b == 0) {
                    i4--;
                    i5 = i;
                }
            }
            bArr[i5] = b;
            i = i5 + 1;
            z = true;
            i4--;
            i5 = i;
        }
        byte[] bArr2 = new byte[(i2 * 4) + i5];
        for (int i6 = 0; i6 < i5; i6++) {
            bArr2[i6] = bArr[i6];
        }
        int i7 = i5;
        for (int i8 = usedLength - 2; i8 >= 0; i8--) {
            int i9 = 3;
            while (i9 >= 0) {
                bArr2[i7] = (byte) (this.m_ints[i8] >>> (i9 * 8));
                i9--;
                i7++;
            }
        }
        return new BigInteger(1, bArr2);
    }

    public String toString() {
        int usedLength = getUsedLength();
        if (usedLength == 0) {
            return "0";
        }
        StringBuffer stringBuffer = new StringBuffer(Integer.toBinaryString(this.m_ints[usedLength - 1]));
        for (int i = usedLength - 2; i >= 0; i--) {
            String binaryString = Integer.toBinaryString(this.m_ints[i]);
            for (int length = binaryString.length(); length < 8; length++) {
                binaryString = "0" + binaryString;
            }
            stringBuffer.append(binaryString);
        }
        return stringBuffer.toString();
    }
}
