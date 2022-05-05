package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/GF2Matrix.class */
public class GF2Matrix extends Matrix {
    private int length;
    private int[][] matrix;

    public GF2Matrix(int i, char c) {
        this(i, c, new SecureRandom());
    }

    public GF2Matrix(int i, char c, SecureRandom secureRandom) {
        if (i <= 0) {
            throw new ArithmeticException("Size of matrix is non-positive.");
        } else if (c == 'I') {
            assignUnitMatrix(i);
        } else if (c == 'L') {
            assignRandomLowerTriangularMatrix(i, secureRandom);
        } else if (c == 'R') {
            assignRandomRegularMatrix(i, secureRandom);
        } else if (c == 'U') {
            assignRandomUpperTriangularMatrix(i, secureRandom);
        } else if (c != 'Z') {
            throw new ArithmeticException("Unknown matrix type.");
        } else {
            assignZeroMatrix(i, i);
        }
    }

    private GF2Matrix(int i, int i2) {
        if (i2 <= 0 || i <= 0) {
            throw new ArithmeticException("size of matrix is non-positive");
        }
        assignZeroMatrix(i, i2);
    }

    public GF2Matrix(int i, int[][] iArr) {
        if (iArr[0].length != ((i + 31) >> 5)) {
            throw new ArithmeticException("Int array does not match given number of columns.");
        }
        this.numColumns = i;
        this.numRows = iArr.length;
        this.length = iArr[0].length;
        int i2 = i & 31;
        int i3 = i2 == 0 ? -1 : (1 << i2) - 1;
        for (int i4 = 0; i4 < this.numRows; i4++) {
            int[] iArr2 = iArr[i4];
            int i5 = this.length - 1;
            iArr2[i5] = iArr2[i5] & i3;
        }
        this.matrix = iArr;
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [int[], int[][]] */
    public GF2Matrix(GF2Matrix gF2Matrix) {
        this.numColumns = gF2Matrix.getNumColumns();
        this.numRows = gF2Matrix.getNumRows();
        this.length = gF2Matrix.length;
        this.matrix = new int[gF2Matrix.matrix.length];
        for (int i = 0; i < this.matrix.length; i++) {
            this.matrix[i] = IntUtils.clone(gF2Matrix.matrix[i]);
        }
    }

    public GF2Matrix(byte[] bArr) {
        if (bArr.length < 9) {
            throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
        }
        this.numRows = LittleEndianConversions.OS2IP(bArr, 0);
        this.numColumns = LittleEndianConversions.OS2IP(bArr, 4);
        int i = this.numColumns;
        int i2 = this.numRows;
        if (this.numRows <= 0 || ((i + 7) >>> 3) * i2 != bArr.length - 8) {
            throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
        }
        this.length = (this.numColumns + 31) >>> 5;
        this.matrix = new int[this.numRows][this.length];
        int i3 = this.numColumns >> 5;
        int i4 = this.numColumns;
        int i5 = 8;
        for (int i6 = 0; i6 < this.numRows; i6++) {
            int i7 = 0;
            while (i7 < i3) {
                this.matrix[i6][i7] = LittleEndianConversions.OS2IP(bArr, i5);
                i7++;
                i5 += 4;
            }
            int i8 = 0;
            while (i8 < (i4 & 31)) {
                int[] iArr = this.matrix[i6];
                iArr[i3] = ((bArr[i5] & 255) << i8) ^ iArr[i3];
                i8 += 8;
                i5++;
            }
        }
    }

    private static void addToRow(int[] iArr, int[] iArr2, int i) {
        for (int length = iArr2.length - 1; length >= i; length--) {
            iArr2[length] = iArr[length] ^ iArr2[length];
        }
    }

    private void assignRandomLowerTriangularMatrix(int i, SecureRandom secureRandom) {
        this.numRows = i;
        this.numColumns = i;
        this.length = (i + 31) >>> 5;
        this.matrix = new int[this.numRows][this.length];
        for (int i2 = 0; i2 < this.numRows; i2++) {
            int i3 = i2 >>> 5;
            int i4 = i2 & 31;
            for (int i5 = 0; i5 < i3; i5++) {
                this.matrix[i2][i5] = secureRandom.nextInt();
            }
            this.matrix[i2][i3] = (1 << i4) | (secureRandom.nextInt() >>> (31 - i4));
            int i6 = i3;
            while (true) {
                i6++;
                if (i6 < this.length) {
                    this.matrix[i2][i6] = 0;
                }
            }
        }
    }

    private void assignRandomRegularMatrix(int i, SecureRandom secureRandom) {
        this.numRows = i;
        this.numColumns = i;
        this.length = (i + 31) >>> 5;
        this.matrix = new int[this.numRows][this.length];
        GF2Matrix gF2Matrix = (GF2Matrix) new GF2Matrix(i, 'L', secureRandom).rightMultiply(new GF2Matrix(i, 'U', secureRandom));
        int[] vector = new Permutation(i, secureRandom).getVector();
        for (int i2 = 0; i2 < i; i2++) {
            System.arraycopy(gF2Matrix.matrix[i2], 0, this.matrix[vector[i2]], 0, this.length);
        }
    }

    private void assignRandomUpperTriangularMatrix(int i, SecureRandom secureRandom) {
        this.numRows = i;
        this.numColumns = i;
        this.length = (i + 31) >>> 5;
        this.matrix = new int[this.numRows][this.length];
        int i2 = i & 31;
        int i3 = i2 == 0 ? -1 : (1 << i2) - 1;
        for (int i4 = 0; i4 < this.numRows; i4++) {
            int i5 = i4 >>> 5;
            int i6 = i4 & 31;
            for (int i7 = 0; i7 < i5; i7++) {
                this.matrix[i4][i7] = 0;
            }
            this.matrix[i4][i5] = (secureRandom.nextInt() << i6) | (1 << i6);
            int i8 = i5;
            while (true) {
                i8++;
                if (i8 < this.length) {
                    this.matrix[i4][i8] = secureRandom.nextInt();
                }
            }
            int[] iArr = this.matrix[i4];
            int i9 = this.length - 1;
            iArr[i9] = iArr[i9] & i3;
        }
    }

    private void assignUnitMatrix(int i) {
        this.numRows = i;
        this.numColumns = i;
        this.length = (i + 31) >>> 5;
        this.matrix = new int[this.numRows][this.length];
        for (int i2 = 0; i2 < this.numRows; i2++) {
            for (int i3 = 0; i3 < this.length; i3++) {
                this.matrix[i2][i3] = 0;
            }
        }
        for (int i4 = 0; i4 < this.numRows; i4++) {
            this.matrix[i4][i4 >>> 5] = 1 << (i4 & 31);
        }
    }

    private void assignZeroMatrix(int i, int i2) {
        this.numRows = i;
        this.numColumns = i2;
        this.length = (i2 + 31) >>> 5;
        this.matrix = new int[this.numRows][this.length];
        for (int i3 = 0; i3 < this.numRows; i3++) {
            for (int i4 = 0; i4 < this.length; i4++) {
                this.matrix[i3][i4] = 0;
            }
        }
    }

    public static GF2Matrix[] createRandomRegularMatrixAndItsInverse(int i, SecureRandom secureRandom) {
        int i2 = (i + 31) >> 5;
        GF2Matrix gF2Matrix = new GF2Matrix(i, 'L', secureRandom);
        GF2Matrix gF2Matrix2 = new GF2Matrix(i, 'U', secureRandom);
        GF2Matrix gF2Matrix3 = (GF2Matrix) gF2Matrix.rightMultiply(gF2Matrix2);
        Permutation permutation = new Permutation(i, secureRandom);
        int[] vector = permutation.getVector();
        int[][] iArr = new int[i][i2];
        for (int i3 = 0; i3 < i; i3++) {
            System.arraycopy(gF2Matrix3.matrix[vector[i3]], 0, iArr[i3], 0, i2);
        }
        GF2Matrix gF2Matrix4 = new GF2Matrix(i, iArr);
        GF2Matrix gF2Matrix5 = new GF2Matrix(i, 'I');
        int i4 = 0;
        while (i4 < i) {
            int i5 = i4 >>> 5;
            int i6 = i4 + 1;
            for (int i7 = i6; i7 < i; i7++) {
                if ((gF2Matrix.matrix[i7][i5] & (1 << (i4 & 31))) != 0) {
                    for (int i8 = 0; i8 <= i5; i8++) {
                        int[] iArr2 = gF2Matrix5.matrix[i7];
                        iArr2[i8] = iArr2[i8] ^ gF2Matrix5.matrix[i4][i8];
                    }
                }
            }
            i4 = i6;
        }
        GF2Matrix gF2Matrix6 = new GF2Matrix(i, 'I');
        while (true) {
            i--;
            if (i < 0) {
                return new GF2Matrix[]{gF2Matrix4, (GF2Matrix) gF2Matrix6.rightMultiply(gF2Matrix5.rightMultiply(permutation))};
            }
            int i9 = i >>> 5;
            for (int i10 = i - 1; i10 >= 0; i10--) {
                if ((gF2Matrix2.matrix[i10][i9] & (1 << (i & 31))) != 0) {
                    for (int i11 = i9; i11 < i2; i11++) {
                        int[] iArr3 = gF2Matrix6.matrix[i10];
                        iArr3[i11] = iArr3[i11] ^ gF2Matrix6.matrix[i][i11];
                    }
                }
            }
        }
    }

    private static void swapRows(int[][] iArr, int i, int i2) {
        int[] iArr2 = iArr[i];
        iArr[i] = iArr[i2];
        iArr[i2] = iArr2;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.Matrix
    public Matrix computeInverse() {
        if (this.numRows != this.numColumns) {
            throw new ArithmeticException("Matrix is not invertible.");
        }
        int[][] iArr = new int[this.numRows][this.length];
        for (int i = this.numRows - 1; i >= 0; i--) {
            iArr[i] = IntUtils.clone(this.matrix[i]);
        }
        int[][] iArr2 = new int[this.numRows][this.length];
        for (int i2 = this.numRows - 1; i2 >= 0; i2--) {
            iArr2[i2][i2 >> 5] = 1 << (i2 & 31);
        }
        for (int i3 = 0; i3 < this.numRows; i3++) {
            int i4 = i3 >> 5;
            int i5 = 1 << (i3 & 31);
            if ((iArr[i3][i4] & i5) == 0) {
                int i6 = i3 + 1;
                boolean z = false;
                while (i6 < this.numRows) {
                    int i7 = i6;
                    if ((iArr[i6][i4] & i5) != 0) {
                        swapRows(iArr, i3, i6);
                        swapRows(iArr2, i3, i6);
                        i7 = this.numRows;
                        z = true;
                    }
                    i6 = i7 + 1;
                }
                if (!z) {
                    throw new ArithmeticException("Matrix is not invertible.");
                }
            }
            for (int i8 = this.numRows - 1; i8 >= 0; i8--) {
                if (!(i8 == i3 || (iArr[i8][i4] & i5) == 0)) {
                    addToRow(iArr[i3], iArr[i8], i4);
                    addToRow(iArr2[i3], iArr2[i8], 0);
                }
            }
        }
        return new GF2Matrix(this.numColumns, iArr2);
    }

    public Matrix computeTranspose() {
        int[][] iArr = new int[this.numColumns][(this.numRows + 31) >>> 5];
        for (int i = 0; i < this.numRows; i++) {
            for (int i2 = 0; i2 < this.numColumns; i2++) {
                int i3 = i >>> 5;
                if (((this.matrix[i][i2 >>> 5] >>> (i2 & 31)) & 1) == 1) {
                    int[] iArr2 = iArr[i2];
                    iArr2[i3] = (1 << (i & 31)) | iArr2[i3];
                }
            }
        }
        return new GF2Matrix(this.numRows, iArr);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GF2Matrix)) {
            return false;
        }
        GF2Matrix gF2Matrix = (GF2Matrix) obj;
        if (!(this.numRows == gF2Matrix.numRows && this.numColumns == gF2Matrix.numColumns && this.length == gF2Matrix.length)) {
            return false;
        }
        for (int i = 0; i < this.numRows; i++) {
            if (!IntUtils.equals(this.matrix[i], gF2Matrix.matrix[i])) {
                return false;
            }
        }
        return true;
    }

    public GF2Matrix extendLeftCompactForm() {
        GF2Matrix gF2Matrix = new GF2Matrix(this.numRows, this.numColumns + this.numRows);
        int i = (this.numRows - 1) + this.numColumns;
        int i2 = this.numRows - 1;
        while (i2 >= 0) {
            System.arraycopy(this.matrix[i2], 0, gF2Matrix.matrix[i2], 0, this.length);
            int[] iArr = gF2Matrix.matrix[i2];
            int i3 = i >> 5;
            iArr[i3] = iArr[i3] | (1 << (i & 31));
            i2--;
            i--;
        }
        return gF2Matrix;
    }

    public GF2Matrix extendRightCompactForm() {
        GF2Matrix gF2Matrix = new GF2Matrix(this.numRows, this.numRows + this.numColumns);
        int i = this.numRows >> 5;
        int i2 = this.numRows & 31;
        for (int i3 = this.numRows - 1; i3 >= 0; i3--) {
            int[] iArr = gF2Matrix.matrix[i3];
            int i4 = i3 >> 5;
            iArr[i4] = iArr[i4] | (1 << (i3 & 31));
            int i5 = 0;
            if (i2 != 0) {
                int i6 = i;
                while (i5 < this.length - 1) {
                    int i7 = this.matrix[i3][i5];
                    int[] iArr2 = gF2Matrix.matrix[i3];
                    int i8 = i6 + 1;
                    iArr2[i6] = iArr2[i6] | (i7 << i2);
                    int[] iArr3 = gF2Matrix.matrix[i3];
                    iArr3[i8] = (i7 >>> (32 - i2)) | iArr3[i8];
                    i5++;
                    i6 = i8;
                }
                int i9 = this.matrix[i3][this.length - 1];
                int[] iArr4 = gF2Matrix.matrix[i3];
                int i10 = i6 + 1;
                iArr4[i6] = iArr4[i6] | (i9 << i2);
                if (i10 < gF2Matrix.length) {
                    int[] iArr5 = gF2Matrix.matrix[i3];
                    iArr5[i10] = (i9 >>> (32 - i2)) | iArr5[i10];
                }
            } else {
                System.arraycopy(this.matrix[i3], 0, gF2Matrix.matrix[i3], i, this.length);
            }
        }
        return gF2Matrix;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.Matrix
    public byte[] getEncoded() {
        byte[] bArr = new byte[(((this.numColumns + 7) >>> 3) * this.numRows) + 8];
        LittleEndianConversions.I2OSP(this.numRows, bArr, 0);
        LittleEndianConversions.I2OSP(this.numColumns, bArr, 4);
        int i = this.numColumns >>> 5;
        int i2 = this.numColumns;
        int i3 = 8;
        for (int i4 = 0; i4 < this.numRows; i4++) {
            int i5 = 0;
            while (i5 < i) {
                LittleEndianConversions.I2OSP(this.matrix[i4][i5], bArr, i3);
                i5++;
                i3 += 4;
            }
            int i6 = 0;
            while (i6 < (i2 & 31)) {
                bArr[i3] = (byte) ((this.matrix[i4][i] >>> i6) & 255);
                i6 += 8;
                i3++;
            }
        }
        return bArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [double] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [double] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double getHammingWeight() {
        /*
            Method dump skipped, instructions count: 183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.GF2Matrix.getHammingWeight():double");
    }

    public int[][] getIntArray() {
        return this.matrix;
    }

    public GF2Matrix getLeftSubMatrix() {
        if (this.numColumns <= this.numRows) {
            throw new ArithmeticException("empty submatrix");
        }
        int i = (this.numRows + 31) >> 5;
        int[][] iArr = new int[this.numRows][i];
        int i2 = (1 << (this.numRows & 31)) - 1;
        int i3 = i2;
        if (i2 == 0) {
            i3 = -1;
        }
        for (int i4 = this.numRows - 1; i4 >= 0; i4--) {
            System.arraycopy(this.matrix[i4], 0, iArr[i4], 0, i);
            int[] iArr2 = iArr[i4];
            int i5 = i - 1;
            iArr2[i5] = iArr2[i5] & i3;
        }
        return new GF2Matrix(this.numRows, iArr);
    }

    public int getLength() {
        return this.length;
    }

    public GF2Matrix getRightSubMatrix() {
        if (this.numColumns <= this.numRows) {
            throw new ArithmeticException("empty submatrix");
        }
        int i = this.numRows >> 5;
        int i2 = this.numRows & 31;
        GF2Matrix gF2Matrix = new GF2Matrix(this.numRows, this.numColumns - this.numRows);
        for (int i3 = this.numRows - 1; i3 >= 0; i3--) {
            int i4 = 0;
            if (i2 != 0) {
                int i5 = i;
                while (i4 < gF2Matrix.length - 1) {
                    int i6 = i5 + 1;
                    gF2Matrix.matrix[i3][i4] = (this.matrix[i3][i5] >>> i2) | (this.matrix[i3][i6] << (32 - i2));
                    i4++;
                    i5 = i6;
                }
                int i7 = i5 + 1;
                gF2Matrix.matrix[i3][gF2Matrix.length - 1] = this.matrix[i3][i5] >>> i2;
                if (i7 < this.length) {
                    int[] iArr = gF2Matrix.matrix[i3];
                    int i8 = gF2Matrix.length - 1;
                    iArr[i8] = iArr[i8] | (this.matrix[i3][i7] << (32 - i2));
                }
            } else {
                System.arraycopy(this.matrix[i3], i, gF2Matrix.matrix[i3], 0, gF2Matrix.length);
            }
        }
        return gF2Matrix;
    }

    public int[] getRow(int i) {
        return this.matrix[i];
    }

    public int hashCode() {
        int i = (((this.numRows * 31) + this.numColumns) * 31) + this.length;
        for (int i2 = 0; i2 < this.numRows; i2++) {
            i = (i * 31) + this.matrix[i2].hashCode();
        }
        return i;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.Matrix
    public boolean isZero() {
        for (int i = 0; i < this.numRows; i++) {
            for (int i2 = 0; i2 < this.length; i2++) {
                if (this.matrix[i][i2] != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [int[], int[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.pqc.math.linearalgebra.Matrix leftMultiply(org.spongycastle.pqc.math.linearalgebra.Permutation r7) {
        /*
            r6 = this;
            r0 = r7
            int[] r0 = r0.getVector()
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r1 = r6
            int r1 = r1.numRows
            if (r0 == r1) goto L_0x0018
            java.lang.ArithmeticException r0 = new java.lang.ArithmeticException
            r1 = r0
            java.lang.String r2 = "length mismatch"
            r1.<init>(r2)
            throw r0
        L_0x0018:
            r0 = r6
            int r0 = r0.numRows
            int[] r0 = new int[r0]
            r7 = r0
            r0 = r6
            int r0 = r0.numRows
            r1 = 1
            int r0 = r0 - r1
            r9 = r0
        L_0x0027:
            r0 = r9
            if (r0 < 0) goto L_0x003f
            r0 = r7
            r1 = r9
            r2 = r6
            int[][] r2 = r2.matrix
            r3 = r8
            r4 = r9
            r3 = r3[r4]
            r2 = r2[r3]
            int[] r2 = org.spongycastle.pqc.math.linearalgebra.IntUtils.clone(r2)
            r0[r1] = r2
            int r9 = r9 + (-1)
            goto L_0x0027
        L_0x003f:
            org.spongycastle.pqc.math.linearalgebra.GF2Matrix r0 = new org.spongycastle.pqc.math.linearalgebra.GF2Matrix
            r1 = r0
            r2 = r6
            int r2 = r2.numRows
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.GF2Matrix.leftMultiply(org.spongycastle.pqc.math.linearalgebra.Permutation):org.spongycastle.pqc.math.linearalgebra.Matrix");
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.Matrix
    public Vector leftMultiply(Vector vector) {
        int i;
        int i2;
        int i3;
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        } else if (vector.length != this.numRows) {
            throw new ArithmeticException("length mismatch");
        } else {
            int[] vecArray = ((GF2Vector) vector).getVecArray();
            int[] iArr = new int[this.length];
            int i4 = this.numRows >> 5;
            int i5 = this.numRows;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i = i7;
                if (i6 < i4) {
                    int i8 = 1;
                    do {
                        if ((vecArray[i6] & i8) != 0) {
                            for (int i9 = 0; i9 < this.length; i9++) {
                                iArr[i9] = iArr[i9] ^ this.matrix[i7][i9];
                            }
                        }
                        i2 = i7 + 1;
                        i3 = i8 << 1;
                        i8 = i3;
                        i7 = i2;
                    } while (i3 != 0);
                    i6++;
                    i7 = i2;
                }
            }
            for (int i10 = 1; i10 != (1 << (i5 & 31)); i10 <<= 1) {
                if ((vecArray[i4] & i10) != 0) {
                    for (int i11 = 0; i11 < this.length; i11++) {
                        iArr[i11] = iArr[i11] ^ this.matrix[i][i11];
                    }
                }
                i++;
            }
            return new GF2Vector(iArr, this.numColumns);
        }
    }

    public Vector leftMultiplyLeftCompactForm(Vector vector) {
        int i;
        int i2;
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        } else if (vector.length != this.numRows) {
            throw new ArithmeticException("length mismatch");
        } else {
            int[] vecArray = ((GF2Vector) vector).getVecArray();
            int[] iArr = new int[((this.numRows + this.numColumns) + 31) >>> 5];
            int i3 = this.numRows >>> 5;
            int i4 = 0;
            int i5 = 0;
            while (i4 < i3) {
                int i6 = 1;
                do {
                    if ((vecArray[i4] & i6) != 0) {
                        for (int i7 = 0; i7 < this.length; i7++) {
                            iArr[i7] = iArr[i7] ^ this.matrix[i5][i7];
                        }
                        int i8 = (this.numColumns + i5) >>> 5;
                        iArr[i8] = (1 << ((this.numColumns + i5) & 31)) | iArr[i8];
                    }
                    i = i5 + 1;
                    i2 = i6 << 1;
                    i6 = i2;
                    i5 = i;
                } while (i2 != 0);
                i4++;
                i5 = i;
            }
            int i9 = this.numRows;
            for (int i10 = 1; i10 != (1 << (i9 & 31)); i10 <<= 1) {
                if ((vecArray[i3] & i10) != 0) {
                    for (int i11 = 0; i11 < this.length; i11++) {
                        iArr[i11] = iArr[i11] ^ this.matrix[i5][i11];
                    }
                    int i12 = (this.numColumns + i5) >>> 5;
                    iArr[i12] = (1 << ((this.numColumns + i5) & 31)) | iArr[i12];
                }
                i5++;
            }
            return new GF2Vector(iArr, this.numRows + this.numColumns);
        }
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.Matrix
    public Matrix rightMultiply(Matrix matrix) {
        if (!(matrix instanceof GF2Matrix)) {
            throw new ArithmeticException("matrix is not defined over GF(2)");
        } else if (matrix.numRows != this.numColumns) {
            throw new ArithmeticException("length mismatch");
        } else {
            GF2Matrix gF2Matrix = (GF2Matrix) matrix;
            GF2Matrix gF2Matrix2 = new GF2Matrix(this.numRows, matrix.numColumns);
            int i = this.numColumns & 31;
            int i2 = i == 0 ? this.length : this.length - 1;
            for (int i3 = 0; i3 < this.numRows; i3++) {
                int i4 = 0;
                for (int i5 = 0; i5 < i2; i5++) {
                    int i6 = this.matrix[i3][i5];
                    for (int i7 = 0; i7 < 32; i7++) {
                        if (((1 << i7) & i6) != 0) {
                            for (int i8 = 0; i8 < gF2Matrix.length; i8++) {
                                int[] iArr = gF2Matrix2.matrix[i3];
                                iArr[i8] = iArr[i8] ^ gF2Matrix.matrix[i4][i8];
                            }
                        }
                        i4++;
                    }
                }
                int i9 = this.matrix[i3][this.length - 1];
                for (int i10 = 0; i10 < i; i10++) {
                    if (((1 << i10) & i9) != 0) {
                        for (int i11 = 0; i11 < gF2Matrix.length; i11++) {
                            int[] iArr2 = gF2Matrix2.matrix[i3];
                            iArr2[i11] = iArr2[i11] ^ gF2Matrix.matrix[i4][i11];
                        }
                    }
                    i4++;
                }
            }
            return gF2Matrix2;
        }
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.Matrix
    public Matrix rightMultiply(Permutation permutation) {
        int[] vector = permutation.getVector();
        if (vector.length != this.numColumns) {
            throw new ArithmeticException("length mismatch");
        }
        GF2Matrix gF2Matrix = new GF2Matrix(this.numRows, this.numColumns);
        for (int i = this.numColumns - 1; i >= 0; i--) {
            int i2 = i >>> 5;
            int i3 = vector[i];
            int i4 = vector[i];
            for (int i5 = this.numRows - 1; i5 >= 0; i5--) {
                int[] iArr = gF2Matrix.matrix[i5];
                iArr[i2] = iArr[i2] | (((this.matrix[i5][i3 >>> 5] >>> (i4 & 31)) & 1) << (i & 31));
            }
        }
        return gF2Matrix;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.Matrix
    public Vector rightMultiply(Vector vector) {
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        } else if (vector.length != this.numColumns) {
            throw new ArithmeticException("length mismatch");
        } else {
            int[] vecArray = ((GF2Vector) vector).getVecArray();
            int[] iArr = new int[(this.numRows + 31) >>> 5];
            for (int i = 0; i < this.numRows; i++) {
                int i2 = 0;
                for (int i3 = 0; i3 < this.length; i3++) {
                    i2 ^= this.matrix[i][i3] & vecArray[i3];
                }
                int i4 = 0;
                for (int i5 = 0; i5 < 32; i5++) {
                    i4 ^= (i2 >>> i5) & 1;
                }
                if (i4 == 1) {
                    int i6 = i >>> 5;
                    iArr[i6] = iArr[i6] | (1 << (i & 31));
                }
            }
            return new GF2Vector(iArr, this.numRows);
        }
    }

    public Vector rightMultiplyRightCompactForm(Vector vector) {
        int i;
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        } else if (vector.length != this.numColumns + this.numRows) {
            throw new ArithmeticException("length mismatch");
        } else {
            int[] vecArray = ((GF2Vector) vector).getVecArray();
            int[] iArr = new int[(this.numRows + 31) >>> 5];
            int i2 = this.numRows >> 5;
            int i3 = this.numRows & 31;
            for (int i4 = 0; i4 < this.numRows; i4++) {
                int i5 = i4 >> 5;
                int i6 = vecArray[i5];
                int i7 = i4 & 31;
                int i8 = (i6 >>> i7) & 1;
                if (i3 == 0) {
                    int i9 = i2;
                    int i10 = 0;
                    while (true) {
                        i = i8;
                        if (i10 >= this.length) {
                            break;
                        }
                        i8 ^= vecArray[i9] & this.matrix[i4][i10];
                        i10++;
                        i9++;
                    }
                } else {
                    int i11 = i2;
                    int i12 = 0;
                    while (i12 < this.length - 1) {
                        int i13 = i11 + 1;
                        i8 ^= ((vecArray[i11] >>> i3) | (vecArray[i13] << (32 - i3))) & this.matrix[i4][i12];
                        i12++;
                        i11 = i13;
                    }
                    int i14 = i11 + 1;
                    int i15 = vecArray[i11] >>> i3;
                    int i16 = i15;
                    if (i14 < vecArray.length) {
                        i16 = i15 | (vecArray[i14] << (32 - i3));
                    }
                    i = (this.matrix[i4][this.length - 1] & i16) ^ i8;
                }
                int i17 = 0;
                for (int i18 = 0; i18 < 32; i18++) {
                    i17 ^= i & 1;
                    i >>>= 1;
                }
                if (i17 == 1) {
                    iArr[i5] = iArr[i5] | (1 << i7);
                }
            }
            return new GF2Vector(iArr, this.numRows);
        }
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.Matrix
    public String toString() {
        int i = this.numColumns & 31;
        int i2 = i == 0 ? this.length : this.length - 1;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < this.numRows; i3++) {
            stringBuffer.append(i3 + ": ");
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = this.matrix[i3][i4];
                for (int i6 = 0; i6 < 32; i6++) {
                    if (((i5 >>> i6) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(' ');
            }
            int i7 = this.matrix[i3][this.length - 1];
            for (int i8 = 0; i8 < i; i8++) {
                if (((i7 >>> i8) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }
}
