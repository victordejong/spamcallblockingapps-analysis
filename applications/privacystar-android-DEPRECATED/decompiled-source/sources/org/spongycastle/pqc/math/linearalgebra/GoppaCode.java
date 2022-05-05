package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/GoppaCode.class */
public final class GoppaCode {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe.class */
    public static class MaMaPe {

        /* renamed from: h */
        private GF2Matrix f1800h;

        /* renamed from: p */
        private Permutation f1801p;

        /* renamed from: s */
        private GF2Matrix f1802s;

        public MaMaPe(GF2Matrix gF2Matrix, GF2Matrix gF2Matrix2, Permutation permutation) {
            this.f1802s = gF2Matrix;
            this.f1800h = gF2Matrix2;
            this.f1801p = permutation;
        }

        public GF2Matrix getFirstMatrix() {
            return this.f1802s;
        }

        public Permutation getPermutation() {
            return this.f1801p;
        }

        public GF2Matrix getSecondMatrix() {
            return this.f1800h;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet.class */
    public static class MatrixSet {

        /* renamed from: g */
        private GF2Matrix f1803g;
        private int[] setJ;

        public MatrixSet(GF2Matrix gF2Matrix, int[] iArr) {
            this.f1803g = gF2Matrix;
            this.setJ = iArr;
        }

        public GF2Matrix getG() {
            return this.f1803g;
        }

        public int[] getSetJ() {
            return this.setJ;
        }
    }

    private GoppaCode() {
    }

    public static MaMaPe computeSystematicForm(GF2Matrix gF2Matrix, SecureRandom secureRandom) {
        Permutation permutation;
        GF2Matrix gF2Matrix2;
        GF2Matrix leftSubMatrix;
        boolean z;
        int numColumns = gF2Matrix.getNumColumns();
        GF2Matrix gF2Matrix3 = null;
        do {
            permutation = new Permutation(numColumns, secureRandom);
            gF2Matrix2 = (GF2Matrix) gF2Matrix.rightMultiply(permutation);
            leftSubMatrix = gF2Matrix2.getLeftSubMatrix();
            z = true;
            try {
                gF2Matrix3 = (GF2Matrix) leftSubMatrix.computeInverse();
            } catch (ArithmeticException e) {
                z = false;
            }
            gF2Matrix3 = gF2Matrix3;
        } while (!z);
        return new MaMaPe(leftSubMatrix, ((GF2Matrix) gF2Matrix3.rightMultiply(gF2Matrix2)).getRightSubMatrix(), permutation);
    }

    public static GF2Matrix createCanonicalCheckMatrix(GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int degree = gF2mField.getDegree();
        int i = 1 << degree;
        int degree2 = polynomialGF2mSmallM.getDegree();
        int[][] iArr = new int[degree2][i];
        int[][] iArr2 = new int[degree2][i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr2[0][i2] = gF2mField.inverse(polynomialGF2mSmallM.evaluateAt(i2));
        }
        for (int i3 = 1; i3 < degree2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                iArr2[i3][i4] = gF2mField.mult(iArr2[i3 - 1][i4], i4);
            }
        }
        for (int i5 = 0; i5 < degree2; i5++) {
            for (int i6 = 0; i6 < i; i6++) {
                for (int i7 = 0; i7 <= i5; i7++) {
                    iArr[i5][i6] = gF2mField.add(iArr[i5][i6], gF2mField.mult(iArr2[i7][i6], polynomialGF2mSmallM.getCoefficient((degree2 + i7) - i5)));
                }
            }
        }
        int[][] iArr3 = new int[degree2 * degree][(i + 31) >>> 5];
        for (int i8 = 0; i8 < i; i8++) {
            int i9 = i8 >>> 5;
            for (int i10 = 0; i10 < degree2; i10++) {
                int i11 = iArr[i10][i8];
                for (int i12 = 0; i12 < degree; i12++) {
                    if (((i11 >>> i12) & 1) != 0) {
                        int[] iArr4 = iArr3[(((i10 + 1) * degree) - i12) - 1];
                        iArr4[i9] = iArr4[i9] ^ (1 << (i8 & 31));
                    }
                }
            }
        }
        return new GF2Matrix(i, iArr3);
    }

    public static GF2Vector syndromeDecode(GF2Vector gF2Vector, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        int degree = 1 << gF2mField.getDegree();
        GF2Vector gF2Vector2 = new GF2Vector(degree);
        if (!gF2Vector.isZero()) {
            PolynomialGF2mSmallM[] modPolynomialToFracton = new PolynomialGF2mSmallM(gF2Vector.toExtensionFieldVector(gF2mField)).modInverse(polynomialGF2mSmallM).addMonomial(1).modSquareRootMatrix(polynomialGF2mSmallMArr).modPolynomialToFracton(polynomialGF2mSmallM);
            PolynomialGF2mSmallM add = modPolynomialToFracton[0].multiply(modPolynomialToFracton[0]).add(modPolynomialToFracton[1].multiply(modPolynomialToFracton[1]).multWithMonomial(1));
            PolynomialGF2mSmallM multWithElement = add.multWithElement(gF2mField.inverse(add.getHeadCoefficient()));
            for (int i = 0; i < degree; i++) {
                if (multWithElement.evaluateAt(i) == 0) {
                    gF2Vector2.setBit(i);
                }
            }
        }
        return gF2Vector2;
    }
}
