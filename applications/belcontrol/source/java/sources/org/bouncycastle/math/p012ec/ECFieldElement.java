package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
import java.util.Random;
/* renamed from: org.bouncycastle.math.ec.ECFieldElement */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECFieldElement.class */
public abstract class ECFieldElement implements ECConstants {

    /* renamed from: org.bouncycastle.math.ec.ECFieldElement$F2m */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECFieldElement$F2m.class */
    public static class F2m extends ECFieldElement {
        public static final int GNB = 1;
        public static final int PPB = 3;
        public static final int TPB = 2;

        /* renamed from: k1 */
        private int f7665k1;

        /* renamed from: k2 */
        private int f7666k2;

        /* renamed from: k3 */
        private int f7667k3;

        /* renamed from: m */
        private int f7668m;
        private int representation;

        /* renamed from: t */
        private int f7669t;

        /* renamed from: x */
        private IntArray f7670x;

        public F2m(int i, int i2, int i3, int i4, BigInteger bigInteger) {
            int i5;
            int i6 = (i + 31) >> 5;
            this.f7669t = i6;
            this.f7670x = new IntArray(bigInteger, i6);
            if (i3 == 0 && i4 == 0) {
                i5 = 2;
            } else if (i3 >= i4) {
                throw new IllegalArgumentException("k2 must be smaller than k3");
            } else {
                if (i3 <= 0) {
                    throw new IllegalArgumentException("k2 must be larger than 0");
                }
                i5 = 3;
            }
            this.representation = i5;
            if (bigInteger.signum() >= 0) {
                this.f7668m = i;
                this.f7665k1 = i2;
                this.f7666k2 = i3;
                this.f7667k3 = i4;
                return;
            }
            throw new IllegalArgumentException("x value cannot be negative");
        }

        private F2m(int i, int i2, int i3, int i4, IntArray intArray) {
            this.f7669t = (i + 31) >> 5;
            this.f7670x = intArray;
            this.f7668m = i;
            this.f7665k1 = i2;
            this.f7666k2 = i3;
            this.f7667k3 = i4;
            this.representation = (i3 == 0 && i4 == 0) ? 2 : 3;
        }

        public F2m(int i, int i2, BigInteger bigInteger) {
            this(i, i2, 0, 0, bigInteger);
        }

        public static void checkFieldElements(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            if (!(eCFieldElement instanceof F2m) || !(eCFieldElement2 instanceof F2m)) {
                throw new IllegalArgumentException("Field elements are not both instances of ECFieldElement.F2m");
            }
            F2m f2m = (F2m) eCFieldElement;
            F2m f2m2 = (F2m) eCFieldElement2;
            if (f2m.f7668m != f2m2.f7668m || f2m.f7665k1 != f2m2.f7665k1 || f2m.f7666k2 != f2m2.f7666k2 || f2m.f7667k3 != f2m2.f7667k3) {
                throw new IllegalArgumentException("Field elements are not elements of the same field F2m");
            }
            if (f2m.representation != f2m2.representation) {
                throw new IllegalArgumentException("One of the field elements are not elements has incorrect representation");
            }
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement add(ECFieldElement eCFieldElement) {
            IntArray intArray = (IntArray) this.f7670x.clone();
            intArray.addShifted(((F2m) eCFieldElement).f7670x, 0);
            return new F2m(this.f7668m, this.f7665k1, this.f7666k2, this.f7667k3, intArray);
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement divide(ECFieldElement eCFieldElement) {
            return multiply(eCFieldElement.invert());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof F2m)) {
                return false;
            }
            F2m f2m = (F2m) obj;
            if (this.f7668m != f2m.f7668m || this.f7665k1 != f2m.f7665k1 || this.f7666k2 != f2m.f7666k2 || this.f7667k3 != f2m.f7667k3 || this.representation != f2m.representation || !this.f7670x.equals(f2m.f7670x)) {
                z = false;
            }
            return z;
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public String getFieldName() {
            return "F2m";
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public int getFieldSize() {
            return this.f7668m;
        }

        public int getK1() {
            return this.f7665k1;
        }

        public int getK2() {
            return this.f7666k2;
        }

        public int getK3() {
            return this.f7667k3;
        }

        public int getM() {
            return this.f7668m;
        }

        public int getRepresentation() {
            return this.representation;
        }

        public int hashCode() {
            return (((this.f7670x.hashCode() ^ this.f7668m) ^ this.f7665k1) ^ this.f7666k2) ^ this.f7667k3;
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement invert() {
            IntArray intArray = (IntArray) this.f7670x.clone();
            IntArray intArray2 = new IntArray(this.f7669t);
            intArray2.setBit(this.f7668m);
            intArray2.setBit(0);
            intArray2.setBit(this.f7665k1);
            if (this.representation == 3) {
                intArray2.setBit(this.f7666k2);
                intArray2.setBit(this.f7667k3);
            }
            IntArray intArray3 = new IntArray(this.f7669t);
            intArray3.setBit(0);
            IntArray intArray4 = new IntArray(this.f7669t);
            while (true) {
                IntArray intArray5 = intArray4;
                if (!intArray.isZero()) {
                    int bitLength = intArray.bitLength() - intArray2.bitLength();
                    IntArray intArray6 = intArray;
                    IntArray intArray7 = intArray2;
                    int i = bitLength;
                    IntArray intArray8 = intArray3;
                    IntArray intArray9 = intArray5;
                    if (bitLength < 0) {
                        i = -bitLength;
                        intArray9 = intArray3;
                        intArray8 = intArray5;
                        intArray7 = intArray;
                        intArray6 = intArray2;
                    }
                    int i2 = i >> 5;
                    int i3 = i & 31;
                    intArray6.addShifted(intArray7.shiftLeft(i3), i2);
                    intArray8.addShifted(intArray9.shiftLeft(i3), i2);
                    intArray = intArray6;
                    intArray2 = intArray7;
                    intArray3 = intArray8;
                    intArray4 = intArray9;
                } else {
                    return new F2m(this.f7668m, this.f7665k1, this.f7666k2, this.f7667k3, intArray5);
                }
            }
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement multiply(ECFieldElement eCFieldElement) {
            IntArray multiply = this.f7670x.multiply(((F2m) eCFieldElement).f7670x, this.f7668m);
            multiply.reduce(this.f7668m, new int[]{this.f7665k1, this.f7666k2, this.f7667k3});
            return new F2m(this.f7668m, this.f7665k1, this.f7666k2, this.f7667k3, multiply);
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement negate() {
            return this;
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement sqrt() {
            throw new RuntimeException("Not implemented");
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement square() {
            IntArray square = this.f7670x.square(this.f7668m);
            square.reduce(this.f7668m, new int[]{this.f7665k1, this.f7666k2, this.f7667k3});
            return new F2m(this.f7668m, this.f7665k1, this.f7666k2, this.f7667k3, square);
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement subtract(ECFieldElement eCFieldElement) {
            return add(eCFieldElement);
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public BigInteger toBigInteger() {
            return this.f7670x.toBigInteger();
        }
    }

    /* renamed from: org.bouncycastle.math.ec.ECFieldElement$Fp */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECFieldElement$Fp.class */
    public static class C1608Fp extends ECFieldElement {

        /* renamed from: q */
        public BigInteger f7671q;

        /* renamed from: x */
        public BigInteger f7672x;

        public C1608Fp(BigInteger bigInteger, BigInteger bigInteger2) {
            this.f7672x = bigInteger2;
            if (bigInteger2.compareTo(bigInteger) < 0) {
                this.f7671q = bigInteger;
                return;
            }
            throw new IllegalArgumentException("x value too large in field element");
        }

        private static BigInteger[] lucasSequence(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            BigInteger bigInteger5;
            BigInteger bigInteger6;
            BigInteger bigInteger7;
            BigInteger bigInteger8;
            int bitLength = bigInteger4.bitLength();
            int lowestSetBit = bigInteger4.getLowestSetBit();
            BigInteger bigInteger9 = ECConstants.ONE;
            BigInteger bigInteger10 = ECConstants.TWO;
            int i = bitLength - 1;
            BigInteger bigInteger11 = bigInteger2;
            BigInteger bigInteger12 = bigInteger9;
            BigInteger bigInteger13 = bigInteger9;
            while (i >= lowestSetBit + 1) {
                bigInteger9 = bigInteger9.multiply(bigInteger12).mod(bigInteger);
                if (bigInteger4.testBit(i)) {
                    BigInteger mod = bigInteger9.multiply(bigInteger3).mod(bigInteger);
                    BigInteger mod2 = bigInteger13.multiply(bigInteger11).mod(bigInteger);
                    BigInteger mod3 = bigInteger11.multiply(bigInteger10).subtract(bigInteger2.multiply(bigInteger9)).mod(bigInteger);
                    bigInteger5 = mod;
                    bigInteger8 = mod2;
                    bigInteger7 = mod3;
                    bigInteger6 = bigInteger11.multiply(bigInteger11).subtract(mod.shiftLeft(1)).mod(bigInteger);
                } else {
                    BigInteger mod4 = bigInteger13.multiply(bigInteger10).subtract(bigInteger9).mod(bigInteger);
                    bigInteger6 = bigInteger11.multiply(bigInteger10).subtract(bigInteger2.multiply(bigInteger9)).mod(bigInteger);
                    bigInteger7 = bigInteger10.multiply(bigInteger10).subtract(bigInteger9.shiftLeft(1)).mod(bigInteger);
                    bigInteger8 = mod4;
                    bigInteger5 = bigInteger9;
                }
                i--;
                bigInteger12 = bigInteger5;
                bigInteger13 = bigInteger8;
                bigInteger10 = bigInteger7;
                bigInteger11 = bigInteger6;
            }
            BigInteger mod5 = bigInteger9.multiply(bigInteger12).mod(bigInteger);
            BigInteger mod6 = mod5.multiply(bigInteger3).mod(bigInteger);
            BigInteger mod7 = bigInteger13.multiply(bigInteger10).subtract(mod5).mod(bigInteger);
            BigInteger mod8 = bigInteger11.multiply(bigInteger10).subtract(bigInteger2.multiply(mod5)).mod(bigInteger);
            BigInteger mod9 = mod5.multiply(mod6).mod(bigInteger);
            for (int i2 = 1; i2 <= lowestSetBit; i2++) {
                mod7 = mod7.multiply(mod8).mod(bigInteger);
                mod8 = mod8.multiply(mod8).subtract(mod9.shiftLeft(1)).mod(bigInteger);
                mod9 = mod9.multiply(mod9).mod(bigInteger);
            }
            return new BigInteger[]{mod7, mod8};
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement add(ECFieldElement eCFieldElement) {
            return new C1608Fp(this.f7671q, this.f7672x.add(eCFieldElement.toBigInteger()).mod(this.f7671q));
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement divide(ECFieldElement eCFieldElement) {
            return new C1608Fp(this.f7671q, this.f7672x.multiply(eCFieldElement.toBigInteger().modInverse(this.f7671q)).mod(this.f7671q));
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C1608Fp)) {
                return false;
            }
            C1608Fp c1608Fp = (C1608Fp) obj;
            if (!this.f7671q.equals(c1608Fp.f7671q) || !this.f7672x.equals(c1608Fp.f7672x)) {
                z = false;
            }
            return z;
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public String getFieldName() {
            return "Fp";
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public int getFieldSize() {
            return this.f7671q.bitLength();
        }

        public BigInteger getQ() {
            return this.f7671q;
        }

        public int hashCode() {
            return this.f7671q.hashCode() ^ this.f7672x.hashCode();
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement invert() {
            BigInteger bigInteger = this.f7671q;
            return new C1608Fp(bigInteger, this.f7672x.modInverse(bigInteger));
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement multiply(ECFieldElement eCFieldElement) {
            return new C1608Fp(this.f7671q, this.f7672x.multiply(eCFieldElement.toBigInteger()).mod(this.f7671q));
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement negate() {
            return new C1608Fp(this.f7671q, this.f7672x.negate().mod(this.f7671q));
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement sqrt() {
            if (this.f7671q.testBit(0)) {
                C1608Fp c1608Fp = null;
                if (this.f7671q.testBit(1)) {
                    BigInteger bigInteger = this.f7671q;
                    C1608Fp c1608Fp2 = new C1608Fp(bigInteger, this.f7672x.modPow(bigInteger.shiftRight(2).add(ECConstants.ONE), this.f7671q));
                    if (c1608Fp2.square().equals(this)) {
                        c1608Fp = c1608Fp2;
                    }
                    return c1608Fp;
                }
                BigInteger bigInteger2 = this.f7671q;
                BigInteger bigInteger3 = ECConstants.ONE;
                BigInteger subtract = bigInteger2.subtract(bigInteger3);
                BigInteger shiftRight = subtract.shiftRight(1);
                if (!this.f7672x.modPow(shiftRight, this.f7671q).equals(bigInteger3)) {
                    return null;
                }
                BigInteger add = subtract.shiftRight(2).shiftLeft(1).add(bigInteger3);
                BigInteger bigInteger4 = this.f7672x;
                BigInteger mod = bigInteger4.shiftLeft(2).mod(this.f7671q);
                Random random = new Random();
                while (true) {
                    BigInteger bigInteger5 = new BigInteger(this.f7671q.bitLength(), random);
                    if (bigInteger5.compareTo(this.f7671q) < 0 && bigInteger5.multiply(bigInteger5).subtract(mod).modPow(shiftRight, this.f7671q).equals(subtract)) {
                        BigInteger[] lucasSequence = lucasSequence(this.f7671q, bigInteger5, bigInteger4, add);
                        BigInteger bigInteger6 = lucasSequence[0];
                        BigInteger bigInteger7 = lucasSequence[1];
                        if (bigInteger7.multiply(bigInteger7).mod(this.f7671q).equals(mod)) {
                            BigInteger bigInteger8 = bigInteger7;
                            if (bigInteger7.testBit(0)) {
                                bigInteger8 = bigInteger7.add(this.f7671q);
                            }
                            return new C1608Fp(this.f7671q, bigInteger8.shiftRight(1));
                        } else if (!bigInteger6.equals(ECConstants.ONE) && !bigInteger6.equals(subtract)) {
                            return null;
                        }
                    }
                }
            } else {
                throw new RuntimeException("not done yet");
            }
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement square() {
            BigInteger bigInteger = this.f7671q;
            BigInteger bigInteger2 = this.f7672x;
            return new C1608Fp(bigInteger, bigInteger2.multiply(bigInteger2).mod(this.f7671q));
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public ECFieldElement subtract(ECFieldElement eCFieldElement) {
            return new C1608Fp(this.f7671q, this.f7672x.subtract(eCFieldElement.toBigInteger()).mod(this.f7671q));
        }

        @Override // org.bouncycastle.math.p012ec.ECFieldElement
        public BigInteger toBigInteger() {
            return this.f7672x;
        }
    }

    public abstract ECFieldElement add(ECFieldElement eCFieldElement);

    public abstract ECFieldElement divide(ECFieldElement eCFieldElement);

    public abstract String getFieldName();

    public abstract int getFieldSize();

    public abstract ECFieldElement invert();

    public abstract ECFieldElement multiply(ECFieldElement eCFieldElement);

    public abstract ECFieldElement negate();

    public abstract ECFieldElement sqrt();

    public abstract ECFieldElement square();

    public abstract ECFieldElement subtract(ECFieldElement eCFieldElement);

    public abstract BigInteger toBigInteger();

    public String toString() {
        return toBigInteger().toString(2);
    }
}
