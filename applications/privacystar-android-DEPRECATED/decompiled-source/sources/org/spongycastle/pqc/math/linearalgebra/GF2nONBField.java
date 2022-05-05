package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
import java.util.Random;
import java.util.Vector;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/GF2nONBField.class */
public class GF2nONBField extends GF2nField {
    private static final int MAXLONG = 64;
    private int mBit;
    private int mLength;
    int[][] mMult;
    private int mType;

    public GF2nONBField(int i, SecureRandom secureRandom) throws RuntimeException {
        super(secureRandom);
        if (i < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = i;
        this.mLength = this.mDegree / 64;
        this.mBit = this.mDegree & 63;
        if (this.mBit == 0) {
            this.mBit = 64;
        } else {
            this.mLength++;
        }
        computeType();
        if (this.mType < 3) {
            this.mMult = new int[this.mDegree][2];
            for (int i2 = 0; i2 < this.mDegree; i2++) {
                this.mMult[i2][0] = -1;
                this.mMult[i2][1] = -1;
            }
            computeMultMatrix();
            computeFieldPolynomial();
            this.fields = new Vector();
            this.matrices = new Vector();
            return;
        }
        throw new RuntimeException("\nThe type of this field is " + this.mType);
    }

    private void computeMultMatrix() {
        if ((this.mType & 7) != 0) {
            int i = (this.mType * this.mDegree) + 1;
            int[] iArr = new int[i];
            int elementOfOrder = this.mType == 1 ? 1 : this.mType == 2 ? i - 1 : elementOfOrder(this.mType, i);
            int i2 = 1;
            for (int i3 = 0; i3 < this.mType; i3++) {
                int i4 = i2;
                for (int i5 = 0; i5 < this.mDegree; i5++) {
                    iArr[i4] = i5;
                    int i6 = (i4 << 1) % i;
                    i4 = i6;
                    if (i6 < 0) {
                        i4 = i6 + i;
                    }
                }
                int i7 = (i2 * elementOfOrder) % i;
                i2 = i7;
                if (i7 < 0) {
                    i2 = i7 + i;
                }
            }
            if (this.mType == 1) {
                int i8 = 1;
                while (i8 < i - 1) {
                    int i9 = i8 + 1;
                    if (this.mMult[iArr[i9]][0] == -1) {
                        this.mMult[iArr[i9]][0] = iArr[i - i8];
                    } else {
                        this.mMult[iArr[i9]][1] = iArr[i - i8];
                    }
                    i8 = i9;
                }
                int i10 = this.mDegree >> 1;
                for (int i11 = 1; i11 <= i10; i11++) {
                    int i12 = i11 - 1;
                    if (this.mMult[i12][0] == -1) {
                        this.mMult[i12][0] = (i10 + i11) - 1;
                    } else {
                        this.mMult[i12][1] = (i10 + i11) - 1;
                    }
                    int i13 = (i10 + i11) - 1;
                    if (this.mMult[i13][0] == -1) {
                        this.mMult[i13][0] = i12;
                    } else {
                        this.mMult[i13][1] = i12;
                    }
                }
            } else if (this.mType == 2) {
                int i14 = 1;
                while (i14 < i - 1) {
                    int i15 = i14 + 1;
                    if (this.mMult[iArr[i15]][0] == -1) {
                        this.mMult[iArr[i15]][0] = iArr[i - i14];
                    } else {
                        this.mMult[iArr[i15]][1] = iArr[i - i14];
                    }
                    i14 = i15;
                }
            } else {
                throw new RuntimeException("only type 1 or type 2 implemented");
            }
        } else {
            throw new RuntimeException("bisher nur fuer Gausssche Normalbasen implementiert");
        }
    }

    private void computeType() throws RuntimeException {
        if ((this.mDegree & 7) == 0) {
            throw new RuntimeException("The extension degree is divisible by 8!");
        }
        this.mType = 1;
        int i = 0;
        while (i != 1) {
            int i2 = (this.mType * this.mDegree) + 1;
            if (IntegerFunctions.isPrime(i2)) {
                i = IntegerFunctions.gcd((this.mType * this.mDegree) / IntegerFunctions.order(2, i2), this.mDegree);
            }
            this.mType++;
        }
        this.mType--;
        if (this.mType == 1) {
            int i3 = (this.mDegree << 1) + 1;
            if (IntegerFunctions.isPrime(i3)) {
                if (IntegerFunctions.gcd((this.mDegree << 1) / IntegerFunctions.order(2, i3), this.mDegree) == 1) {
                    this.mType++;
                }
            }
        }
    }

    private int elementOfOrder(int i, int i2) {
        Random random = new Random();
        int i3 = 0;
        while (i3 == 0) {
            int nextInt = random.nextInt();
            int i4 = i2 - 1;
            int i5 = nextInt % i4;
            i3 = i5;
            if (i5 < 0) {
                i3 = i5 + i4;
            }
        }
        int order = IntegerFunctions.order(i3, i2);
        while (true) {
            int i6 = i3;
            if (order % i == 0) {
                if (order != 0) {
                    break;
                }
                i6 = i3;
            }
            while (i6 == 0) {
                int nextInt2 = random.nextInt();
                int i7 = i2 - 1;
                int i8 = nextInt2 % i7;
                i6 = i8;
                if (i8 < 0) {
                    i6 = i8 + i7;
                }
            }
            order = IntegerFunctions.order(i6, i2);
            i3 = i6;
        }
        int i9 = i / order;
        int i10 = i3;
        for (int i11 = 2; i11 <= i9; i11++) {
            i10 *= i3;
        }
        return i10;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nField
    protected void computeCOBMatrix(GF2nField gF2nField) {
        GF2nElement randomRoot;
        if (this.mDegree != gF2nField.mDegree) {
            throw new IllegalArgumentException("GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[this.mDegree];
        for (int i = 0; i < this.mDegree; i++) {
            gF2PolynomialArr[i] = new GF2Polynomial(this.mDegree);
        }
        do {
            randomRoot = gF2nField.getRandomRoot(this.fieldPolynomial);
        } while (randomRoot.isZero());
        GF2nElement[] gF2nElementArr = new GF2nPolynomialElement[this.mDegree];
        gF2nElementArr[0] = (GF2nElement) randomRoot.clone();
        for (int i2 = 1; i2 < this.mDegree; i2++) {
            gF2nElementArr[i2] = gF2nElementArr[i2 - 1].square();
        }
        for (int i3 = 0; i3 < this.mDegree; i3++) {
            for (int i4 = 0; i4 < this.mDegree; i4++) {
                if (gF2nElementArr[i3].testBit(i4)) {
                    gF2PolynomialArr[(this.mDegree - i4) - 1].setBit((this.mDegree - i3) - 1);
                }
            }
        }
        this.fields.addElement(gF2nField);
        this.matrices.addElement(gF2PolynomialArr);
        gF2nField.fields.addElement(this);
        gF2nField.matrices.addElement(invertMatrix(gF2PolynomialArr));
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nField
    protected void computeFieldPolynomial() {
        int i = 1;
        if (this.mType == 1) {
            this.fieldPolynomial = new GF2Polynomial(this.mDegree + 1, "ALL");
        } else if (this.mType == 2) {
            GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree + 1, "ONE");
            GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.mDegree + 1, "X");
            gF2Polynomial2.addToThis(gF2Polynomial);
            while (i < this.mDegree) {
                GF2Polynomial shiftLeft = gF2Polynomial2.shiftLeft();
                shiftLeft.addToThis(gF2Polynomial);
                i++;
                gF2Polynomial = gF2Polynomial2;
                gF2Polynomial2 = shiftLeft;
            }
            this.fieldPolynomial = gF2Polynomial2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getONBBit() {
        return this.mBit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getONBLength() {
        return this.mLength;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nField
    protected GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial) {
        GF2nPolynomial gcd;
        int degree;
        int degree2;
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(gF2Polynomial, this);
        int degree3 = gF2nPolynomial.getDegree();
        while (degree3 > 1) {
            while (true) {
                GF2nONBElement gF2nONBElement = new GF2nONBElement(this, this.random);
                GF2nPolynomial gF2nPolynomial2 = new GF2nPolynomial(2, GF2nONBElement.ZERO(this));
                gF2nPolynomial2.set(1, gF2nONBElement);
                GF2nPolynomial gF2nPolynomial3 = new GF2nPolynomial(gF2nPolynomial2);
                for (int i = 1; i <= this.mDegree - 1; i++) {
                    gF2nPolynomial3 = gF2nPolynomial3.multiplyAndReduce(gF2nPolynomial3, gF2nPolynomial).add(gF2nPolynomial2);
                }
                gcd = gF2nPolynomial3.gcd(gF2nPolynomial);
                degree = gcd.getDegree();
                degree2 = gF2nPolynomial.getDegree();
                if (!(degree == 0 || degree == degree2)) {
                    break;
                }
            }
            gF2nPolynomial = (degree << 1) > degree2 ? gF2nPolynomial.quotient(gcd) : new GF2nPolynomial(gcd);
            degree3 = gF2nPolynomial.getDegree();
        }
        return gF2nPolynomial.m94at(0);
    }

    int[][] invMatrix(int[][] iArr) {
        int[][] iArr2 = new int[this.mDegree][this.mDegree];
        int[][] iArr3 = new int[this.mDegree][this.mDegree];
        for (int i = 0; i < this.mDegree; i++) {
            iArr3[i][i] = 1;
        }
        for (int i2 = 0; i2 < this.mDegree; i2++) {
            for (int i3 = i2; i3 < this.mDegree; i3++) {
                iArr[(this.mDegree - 1) - i2][i3] = iArr[i2][i2];
            }
        }
        return null;
    }
}
