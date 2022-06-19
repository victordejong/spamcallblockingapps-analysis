package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
import java.util.Random;
import org.bouncycastle.math.p012ec.ECFieldElement;
import org.bouncycastle.math.p012ec.ECPoint;
/* renamed from: org.bouncycastle.math.ec.ECCurve */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECCurve.class */
public abstract class ECCurve {

    /* renamed from: a */
    public ECFieldElement f7654a;

    /* renamed from: b */
    public ECFieldElement f7655b;

    /* renamed from: org.bouncycastle.math.ec.ECCurve$F2m */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECCurve$F2m.class */
    public static class F2m extends ECCurve {

        /* renamed from: h */
        private BigInteger f7656h;
        private ECPoint.F2m infinity;

        /* renamed from: k1 */
        private int f7657k1;

        /* renamed from: k2 */
        private int f7658k2;

        /* renamed from: k3 */
        private int f7659k3;

        /* renamed from: m */
        private int f7660m;

        /* renamed from: mu */
        private byte f7661mu;

        /* renamed from: n */
        private BigInteger f7662n;

        /* renamed from: si */
        private BigInteger[] f7663si;

        public F2m(int i, int i2, int i3, int i4, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i, i2, i3, i4, bigInteger, bigInteger2, null, null);
        }

        public F2m(int i, int i2, int i3, int i4, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this.f7661mu = (byte) 0;
            this.f7663si = null;
            this.f7660m = i;
            this.f7657k1 = i2;
            this.f7658k2 = i3;
            this.f7659k3 = i4;
            this.f7662n = bigInteger3;
            this.f7656h = bigInteger4;
            if (i2 != 0) {
                if (i3 == 0) {
                    if (i4 != 0) {
                        throw new IllegalArgumentException("k3 must be 0 if k2 == 0");
                    }
                } else if (i3 <= i2) {
                    throw new IllegalArgumentException("k2 must be > k1");
                } else {
                    if (i4 <= i3) {
                        throw new IllegalArgumentException("k3 must be > k2");
                    }
                }
                this.f7654a = fromBigInteger(bigInteger);
                this.f7655b = fromBigInteger(bigInteger2);
                this.infinity = new ECPoint.F2m(this, null, null);
                return;
            }
            throw new IllegalArgumentException("k1 must be > 0");
        }

        public F2m(int i, int i2, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i, i2, 0, 0, bigInteger, bigInteger2, null, null);
        }

        public F2m(int i, int i2, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i, i2, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }

        private ECPoint decompressPoint(byte[] bArr, int i) {
            ECFieldElement eCFieldElement;
            ECFieldElement.F2m f2m = new ECFieldElement.F2m(this.f7660m, this.f7657k1, this.f7658k2, this.f7659k3, new BigInteger(1, bArr));
            if (f2m.toBigInteger().equals(ECConstants.ZERO)) {
                ECFieldElement.F2m f2m2 = (ECFieldElement.F2m) this.f7655b;
                int i2 = 0;
                while (true) {
                    eCFieldElement = f2m2;
                    if (i2 >= this.f7660m - 1) {
                        break;
                    }
                    f2m2 = f2m2.square();
                    i2++;
                }
            } else {
                ECFieldElement solveQuadradicEquation = solveQuadradicEquation(f2m.add(this.f7654a).add(this.f7655b.multiply(f2m.square().invert())));
                if (solveQuadradicEquation == null) {
                    throw new RuntimeException("Invalid point compression");
                }
                ECFieldElement eCFieldElement2 = solveQuadradicEquation;
                if (solveQuadradicEquation.toBigInteger().testBit(0) != i) {
                    eCFieldElement2 = solveQuadradicEquation.add(new ECFieldElement.F2m(this.f7660m, this.f7657k1, this.f7658k2, this.f7659k3, ECConstants.ONE));
                }
                eCFieldElement = f2m.multiply(eCFieldElement2);
            }
            return new ECPoint.F2m(this, f2m, eCFieldElement);
        }

        private ECFieldElement solveQuadradicEquation(ECFieldElement eCFieldElement) {
            ECFieldElement.F2m f2m;
            BigInteger bigInteger;
            int i = this.f7660m;
            int i2 = this.f7657k1;
            int i3 = this.f7658k2;
            int i4 = this.f7659k3;
            BigInteger bigInteger2 = ECConstants.ZERO;
            ECFieldElement.F2m f2m2 = new ECFieldElement.F2m(i, i2, i3, i4, bigInteger2);
            if (eCFieldElement.toBigInteger().equals(bigInteger2)) {
                return f2m2;
            }
            Random random = new Random();
            do {
                ECFieldElement.F2m f2m3 = new ECFieldElement.F2m(this.f7660m, this.f7657k1, this.f7658k2, this.f7659k3, new BigInteger(this.f7660m, random));
                ECFieldElement eCFieldElement2 = eCFieldElement;
                f2m = f2m2;
                for (int i5 = 1; i5 <= this.f7660m - 1; i5++) {
                    ECFieldElement square = eCFieldElement2.square();
                    f2m = f2m.square().add(square.multiply(f2m3));
                    eCFieldElement2 = square.add(eCFieldElement);
                }
                BigInteger bigInteger3 = eCFieldElement2.toBigInteger();
                bigInteger = ECConstants.ZERO;
                if (!bigInteger3.equals(bigInteger)) {
                    return null;
                }
            } while (f2m.square().add(f2m).toBigInteger().equals(bigInteger));
            return f2m;
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
            return new ECPoint.F2m(this, fromBigInteger(bigInteger), fromBigInteger(bigInteger2), z);
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public ECPoint decodePoint(byte[] bArr) {
            ECPoint.F2m f2m;
            byte b = bArr[0];
            if (b != 0) {
                if (b == 2 || b == 3) {
                    int length = bArr.length - 1;
                    byte[] bArr2 = new byte[length];
                    System.arraycopy(bArr, 1, bArr2, 0, length);
                    f2m = bArr[0] == 2 ? decompressPoint(bArr2, 0) : decompressPoint(bArr2, 1);
                } else if (b != 4 && b != 6 && b != 7) {
                    throw new RuntimeException("Invalid point encoding 0x" + Integer.toString(bArr[0], 16));
                } else {
                    int length2 = (bArr.length - 1) / 2;
                    byte[] bArr3 = new byte[length2];
                    int length3 = (bArr.length - 1) / 2;
                    byte[] bArr4 = new byte[length3];
                    System.arraycopy(bArr, 1, bArr3, 0, length2);
                    System.arraycopy(bArr, length2 + 1, bArr4, 0, length3);
                    f2m = new ECPoint.F2m(this, new ECFieldElement.F2m(this.f7660m, this.f7657k1, this.f7658k2, this.f7659k3, new BigInteger(1, bArr3)), new ECFieldElement.F2m(this.f7660m, this.f7657k1, this.f7658k2, this.f7659k3, new BigInteger(1, bArr4)), false);
                }
            } else if (bArr.length > 1) {
                throw new RuntimeException("Invalid point encoding");
            } else {
                f2m = getInfinity();
            }
            return f2m;
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
            if (this.f7660m != f2m.f7660m || this.f7657k1 != f2m.f7657k1 || this.f7658k2 != f2m.f7658k2 || this.f7659k3 != f2m.f7659k3 || !this.f7654a.equals(f2m.f7654a) || !this.f7655b.equals(f2m.f7655b)) {
                z = false;
            }
            return z;
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public ECFieldElement fromBigInteger(BigInteger bigInteger) {
            return new ECFieldElement.F2m(this.f7660m, this.f7657k1, this.f7658k2, this.f7659k3, bigInteger);
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public int getFieldSize() {
            return this.f7660m;
        }

        public BigInteger getH() {
            return this.f7656h;
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public ECPoint getInfinity() {
            return this.infinity;
        }

        public int getK1() {
            return this.f7657k1;
        }

        public int getK2() {
            return this.f7658k2;
        }

        public int getK3() {
            return this.f7659k3;
        }

        public int getM() {
            return this.f7660m;
        }

        public byte getMu() {
            byte b;
            synchronized (this) {
                if (this.f7661mu == 0) {
                    this.f7661mu = Tnaf.getMu(this);
                }
                b = this.f7661mu;
            }
            return b;
        }

        public BigInteger getN() {
            return this.f7662n;
        }

        public BigInteger[] getSi() {
            BigInteger[] bigIntegerArr;
            synchronized (this) {
                if (this.f7663si == null) {
                    this.f7663si = Tnaf.getSi(this);
                }
                bigIntegerArr = this.f7663si;
            }
            return bigIntegerArr;
        }

        public int hashCode() {
            return ((((this.f7654a.hashCode() ^ this.f7655b.hashCode()) ^ this.f7660m) ^ this.f7657k1) ^ this.f7658k2) ^ this.f7659k3;
        }

        public boolean isKoblitz() {
            return (this.f7662n == null || this.f7656h == null || (!this.f7654a.toBigInteger().equals(ECConstants.ZERO) && !this.f7654a.toBigInteger().equals(ECConstants.ONE)) || !this.f7655b.toBigInteger().equals(ECConstants.ONE)) ? false : true;
        }

        public boolean isTrinomial() {
            return this.f7658k2 == 0 && this.f7659k3 == 0;
        }
    }

    /* renamed from: org.bouncycastle.math.ec.ECCurve$Fp */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECCurve$Fp.class */
    public static class C1607Fp extends ECCurve {
        public ECPoint.C1609Fp infinity = new ECPoint.C1609Fp(this, null, null);

        /* renamed from: q */
        public BigInteger f7664q;

        public C1607Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this.f7664q = bigInteger;
            this.f7654a = fromBigInteger(bigInteger2);
            this.f7655b = fromBigInteger(bigInteger3);
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
            return new ECPoint.C1609Fp(this, fromBigInteger(bigInteger), fromBigInteger(bigInteger2), z);
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public ECPoint decodePoint(byte[] bArr) {
            ECPoint.C1609Fp c1609Fp;
            byte b = bArr[0];
            if (b != 0) {
                if (b == 2 || b == 3) {
                    byte b2 = bArr[0];
                    int length = bArr.length - 1;
                    byte[] bArr2 = new byte[length];
                    System.arraycopy(bArr, 1, bArr2, 0, length);
                    ECFieldElement.C1608Fp c1608Fp = new ECFieldElement.C1608Fp(this.f7664q, new BigInteger(1, bArr2));
                    ECFieldElement sqrt = c1608Fp.multiply(c1608Fp.square().add(this.f7654a)).add(this.f7655b).sqrt();
                    if (sqrt == null) {
                        throw new RuntimeException("Invalid point compression");
                    }
                    if (sqrt.toBigInteger().testBit(0) == (b2 & 1)) {
                        c1609Fp = new ECPoint.C1609Fp(this, c1608Fp, sqrt, true);
                    } else {
                        BigInteger bigInteger = this.f7664q;
                        c1609Fp = new ECPoint.C1609Fp(this, c1608Fp, new ECFieldElement.C1608Fp(bigInteger, bigInteger.subtract(sqrt.toBigInteger())), true);
                    }
                } else if (b != 4 && b != 6 && b != 7) {
                    throw new RuntimeException("Invalid point encoding 0x" + Integer.toString(bArr[0], 16));
                } else {
                    int length2 = (bArr.length - 1) / 2;
                    byte[] bArr3 = new byte[length2];
                    int length3 = (bArr.length - 1) / 2;
                    byte[] bArr4 = new byte[length3];
                    System.arraycopy(bArr, 1, bArr3, 0, length2);
                    System.arraycopy(bArr, length2 + 1, bArr4, 0, length3);
                    c1609Fp = new ECPoint.C1609Fp(this, new ECFieldElement.C1608Fp(this.f7664q, new BigInteger(1, bArr3)), new ECFieldElement.C1608Fp(this.f7664q, new BigInteger(1, bArr4)));
                }
            } else if (bArr.length > 1) {
                throw new RuntimeException("Invalid point encoding");
            } else {
                c1609Fp = getInfinity();
            }
            return c1609Fp;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C1607Fp)) {
                return false;
            }
            C1607Fp c1607Fp = (C1607Fp) obj;
            if (!this.f7664q.equals(c1607Fp.f7664q) || !this.f7654a.equals(c1607Fp.f7654a) || !this.f7655b.equals(c1607Fp.f7655b)) {
                z = false;
            }
            return z;
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public ECFieldElement fromBigInteger(BigInteger bigInteger) {
            return new ECFieldElement.C1608Fp(this.f7664q, bigInteger);
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public int getFieldSize() {
            return this.f7664q.bitLength();
        }

        @Override // org.bouncycastle.math.p012ec.ECCurve
        public ECPoint getInfinity() {
            return this.infinity;
        }

        public BigInteger getQ() {
            return this.f7664q;
        }

        public int hashCode() {
            return (this.f7654a.hashCode() ^ this.f7655b.hashCode()) ^ this.f7664q.hashCode();
        }
    }

    public abstract ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2, boolean z);

    public abstract ECPoint decodePoint(byte[] bArr);

    public abstract ECFieldElement fromBigInteger(BigInteger bigInteger);

    public ECFieldElement getA() {
        return this.f7654a;
    }

    public ECFieldElement getB() {
        return this.f7655b;
    }

    public abstract int getFieldSize();

    public abstract ECPoint getInfinity();
}
