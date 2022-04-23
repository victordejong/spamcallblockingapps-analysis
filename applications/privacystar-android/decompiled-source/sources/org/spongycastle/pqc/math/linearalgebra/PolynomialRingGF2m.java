package org.spongycastle.pqc.math.linearalgebra;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2m.class */
public class PolynomialRingGF2m {
    private GF2mField field;

    /* renamed from: p */
    private PolynomialGF2mSmallM f1805p;
    protected PolynomialGF2mSmallM[] sqMatrix;
    protected PolynomialGF2mSmallM[] sqRootMatrix;

    public PolynomialRingGF2m(GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM) {
        this.field = gF2mField;
        this.f1805p = polynomialGF2mSmallM;
        computeSquaringMatrix();
        computeSquareRootMatrix();
    }

    private void computeSquareRootMatrix() {
        int coefficient;
        int degree = this.f1805p.getDegree();
        PolynomialGF2mSmallM[] polynomialGF2mSmallMArr = new PolynomialGF2mSmallM[degree];
        int i = degree - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            polynomialGF2mSmallMArr[i2] = new PolynomialGF2mSmallM(this.sqMatrix[i2]);
        }
        this.sqRootMatrix = new PolynomialGF2mSmallM[degree];
        while (i >= 0) {
            this.sqRootMatrix[i] = new PolynomialGF2mSmallM(this.field, i);
            i--;
        }
        for (int i3 = 0; i3 < degree; i3++) {
            if (polynomialGF2mSmallMArr[i3].getCoefficient(i3) == 0) {
                int i4 = i3 + 1;
                boolean z = false;
                while (i4 < degree) {
                    int i5 = i4;
                    if (polynomialGF2mSmallMArr[i4].getCoefficient(i3) != 0) {
                        swapColumns(polynomialGF2mSmallMArr, i3, i4);
                        swapColumns(this.sqRootMatrix, i3, i4);
                        i5 = degree;
                        z = true;
                    }
                    i4 = i5 + 1;
                }
                if (!z) {
                    throw new ArithmeticException("Squaring matrix is not invertible.");
                }
            }
            int inverse = this.field.inverse(polynomialGF2mSmallMArr[i3].getCoefficient(i3));
            polynomialGF2mSmallMArr[i3].multThisWithElement(inverse);
            this.sqRootMatrix[i3].multThisWithElement(inverse);
            for (int i6 = 0; i6 < degree; i6++) {
                if (!(i6 == i3 || (coefficient = polynomialGF2mSmallMArr[i6].getCoefficient(i3)) == 0)) {
                    PolynomialGF2mSmallM multWithElement = polynomialGF2mSmallMArr[i3].multWithElement(coefficient);
                    PolynomialGF2mSmallM multWithElement2 = this.sqRootMatrix[i3].multWithElement(coefficient);
                    polynomialGF2mSmallMArr[i6].addToThis(multWithElement);
                    this.sqRootMatrix[i6].addToThis(multWithElement2);
                }
            }
        }
    }

    private void computeSquaringMatrix() {
        int i;
        int i2;
        int degree = this.f1805p.getDegree();
        this.sqMatrix = new PolynomialGF2mSmallM[degree];
        int i3 = 0;
        while (true) {
            i = degree >> 1;
            if (i3 < i) {
                int i4 = i3 << 1;
                int[] iArr = new int[i4 + 1];
                iArr[i4] = 1;
                this.sqMatrix[i3] = new PolynomialGF2mSmallM(this.field, iArr);
                i3++;
            }
        }
        for (i2 = i; i2 < degree; i2++) {
            int i5 = i2 << 1;
            int[] iArr2 = new int[i5 + 1];
            iArr2[i5] = 1;
            this.sqMatrix[i2] = new PolynomialGF2mSmallM(this.field, iArr2).mod(this.f1805p);
        }
    }

    private static void swapColumns(PolynomialGF2mSmallM[] polynomialGF2mSmallMArr, int i, int i2) {
        PolynomialGF2mSmallM polynomialGF2mSmallM = polynomialGF2mSmallMArr[i];
        polynomialGF2mSmallMArr[i] = polynomialGF2mSmallMArr[i2];
        polynomialGF2mSmallMArr[i2] = polynomialGF2mSmallM;
    }

    public PolynomialGF2mSmallM[] getSquareRootMatrix() {
        return this.sqRootMatrix;
    }

    public PolynomialGF2mSmallM[] getSquaringMatrix() {
        return this.sqMatrix;
    }
}
