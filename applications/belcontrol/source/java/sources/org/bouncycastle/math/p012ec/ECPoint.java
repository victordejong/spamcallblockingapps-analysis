package org.bouncycastle.math.p012ec;

import java.math.BigInteger;
import org.bouncycastle.asn1.p009x9.X9IntegerConverter;
import org.bouncycastle.math.p012ec.ECCurve;
import org.bouncycastle.math.p012ec.ECFieldElement;
/* renamed from: org.bouncycastle.math.ec.ECPoint */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECPoint.class */
public abstract class ECPoint {
    private static X9IntegerConverter converter = new X9IntegerConverter();
    public ECCurve curve;
    public ECMultiplier multiplier = null;
    public PreCompInfo preCompInfo = null;
    public boolean withCompression;

    /* renamed from: x */
    public ECFieldElement f7673x;

    /* renamed from: y */
    public ECFieldElement f7674y;

    /* renamed from: org.bouncycastle.math.ec.ECPoint$F2m */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECPoint$F2m.class */
    public static class F2m extends ECPoint {
        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            this(eCCurve, eCFieldElement, eCFieldElement2, false);
        }

        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
            if ((eCFieldElement == null || eCFieldElement2 != null) && (eCFieldElement != null || eCFieldElement2 == null)) {
                if (eCFieldElement != null) {
                    ECFieldElement.F2m.checkFieldElements(this.f7673x, this.f7674y);
                    if (eCCurve != null) {
                        ECFieldElement.F2m.checkFieldElements(this.f7673x, this.curve.getA());
                    }
                }
                this.withCompression = z;
                return;
            }
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }

        private static void checkPoints(ECPoint eCPoint, ECPoint eCPoint2) {
            if (eCPoint.curve.equals(eCPoint2.curve)) {
                return;
            }
            throw new IllegalArgumentException("Only points on the same curve can be added or subtracted");
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public ECPoint add(ECPoint eCPoint) {
            checkPoints(this, eCPoint);
            return addSimple((F2m) eCPoint);
        }

        public F2m addSimple(F2m f2m) {
            if (isInfinity()) {
                return f2m;
            }
            if (f2m.isInfinity()) {
                return this;
            }
            ECFieldElement.F2m f2m2 = (ECFieldElement.F2m) f2m.getX();
            ECFieldElement.F2m f2m3 = (ECFieldElement.F2m) f2m.getY();
            if (this.f7673x.equals(f2m2)) {
                return (F2m) (this.f7674y.equals(f2m3) ? twice() : this.curve.getInfinity());
            }
            ECFieldElement eCFieldElement = (ECFieldElement.F2m) this.f7674y.add(f2m3).divide(this.f7673x.add(f2m2));
            ECFieldElement.F2m f2m4 = (ECFieldElement.F2m) eCFieldElement.square().add(eCFieldElement).add(this.f7673x).add(f2m2).add(this.curve.getA());
            return new F2m(this.curve, f2m4, (ECFieldElement.F2m) eCFieldElement.multiply(this.f7673x.add(f2m4)).add(f2m4).add(this.f7674y), this.withCompression);
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public void assertECMultiplier() {
            synchronized (this) {
                if (this.multiplier == null) {
                    this.multiplier = ((ECCurve.F2m) this.curve).isKoblitz() ? new WTauNafMultiplier() : new WNafMultiplier();
                }
            }
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public byte[] getEncoded() {
            byte[] bArr;
            if (isInfinity()) {
                return new byte[1];
            }
            int byteLength = ECPoint.converter.getByteLength(this.f7673x);
            byte[] integerToBytes = ECPoint.converter.integerToBytes(getX().toBigInteger(), byteLength);
            if (this.withCompression) {
                bArr = new byte[byteLength + 1];
                bArr[0] = (byte) 2;
                if (!getX().toBigInteger().equals(ECConstants.ZERO) && getY().multiply(getX().invert()).toBigInteger().testBit(0)) {
                    bArr[0] = (byte) 3;
                }
                System.arraycopy(integerToBytes, 0, bArr, 1, byteLength);
            } else {
                byte[] integerToBytes2 = ECPoint.converter.integerToBytes(getY().toBigInteger(), byteLength);
                bArr = new byte[byteLength + byteLength + 1];
                bArr[0] = (byte) 4;
                System.arraycopy(integerToBytes, 0, bArr, 1, byteLength);
                System.arraycopy(integerToBytes2, 0, bArr, byteLength + 1, byteLength);
            }
            return bArr;
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public ECPoint negate() {
            return new F2m(this.curve, getX(), getY().add(getX()), this.withCompression);
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public ECPoint subtract(ECPoint eCPoint) {
            checkPoints(this, eCPoint);
            return subtractSimple((F2m) eCPoint);
        }

        public F2m subtractSimple(F2m f2m) {
            return f2m.isInfinity() ? this : addSimple((F2m) f2m.negate());
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public ECPoint twice() {
            if (isInfinity()) {
                return this;
            }
            if (this.f7673x.toBigInteger().signum() == 0) {
                return this.curve.getInfinity();
            }
            ECFieldElement eCFieldElement = this.f7673x;
            ECFieldElement eCFieldElement2 = (ECFieldElement.F2m) eCFieldElement.add(this.f7674y.divide(eCFieldElement));
            ECFieldElement.F2m f2m = (ECFieldElement.F2m) eCFieldElement2.square().add(eCFieldElement2).add(this.curve.getA());
            ECFieldElement fromBigInteger = this.curve.fromBigInteger(ECConstants.ONE);
            return new F2m(this.curve, f2m, (ECFieldElement.F2m) this.f7673x.square().add(f2m.multiply(eCFieldElement2.add(fromBigInteger))), this.withCompression);
        }
    }

    /* renamed from: org.bouncycastle.math.ec.ECPoint$Fp */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/math/ec/ECPoint$Fp.class */
    public static class C1609Fp extends ECPoint {
        public C1609Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            this(eCCurve, eCFieldElement, eCFieldElement2, false);
        }

        public C1609Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
            if ((eCFieldElement == null || eCFieldElement2 != null) && (eCFieldElement != null || eCFieldElement2 == null)) {
                this.withCompression = z;
                return;
            }
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public ECPoint add(ECPoint eCPoint) {
            if (isInfinity()) {
                return eCPoint;
            }
            if (eCPoint.isInfinity()) {
                return this;
            }
            if (this.f7673x.equals(eCPoint.f7673x)) {
                return this.f7674y.equals(eCPoint.f7674y) ? twice() : this.curve.getInfinity();
            }
            ECFieldElement divide = eCPoint.f7674y.subtract(this.f7674y).divide(eCPoint.f7673x.subtract(this.f7673x));
            ECFieldElement subtract = divide.square().subtract(this.f7673x).subtract(eCPoint.f7673x);
            return new C1609Fp(this.curve, subtract, divide.multiply(this.f7673x.subtract(subtract)).subtract(this.f7674y));
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public void assertECMultiplier() {
            synchronized (this) {
                if (this.multiplier == null) {
                    this.multiplier = new WNafMultiplier();
                }
            }
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public byte[] getEncoded() {
            if (isInfinity()) {
                return new byte[1];
            }
            int byteLength = ECPoint.converter.getByteLength(this.f7673x);
            if (this.withCompression) {
                int i = getY().toBigInteger().testBit(0) ? 3 : 2;
                byte[] integerToBytes = ECPoint.converter.integerToBytes(getX().toBigInteger(), byteLength);
                byte[] bArr = new byte[integerToBytes.length + 1];
                bArr[0] = (byte) i;
                System.arraycopy(integerToBytes, 0, bArr, 1, integerToBytes.length);
                return bArr;
            }
            byte[] integerToBytes2 = ECPoint.converter.integerToBytes(getX().toBigInteger(), byteLength);
            byte[] integerToBytes3 = ECPoint.converter.integerToBytes(getY().toBigInteger(), byteLength);
            byte[] bArr2 = new byte[integerToBytes2.length + integerToBytes3.length + 1];
            bArr2[0] = (byte) 4;
            System.arraycopy(integerToBytes2, 0, bArr2, 1, integerToBytes2.length);
            System.arraycopy(integerToBytes3, 0, bArr2, integerToBytes2.length + 1, integerToBytes3.length);
            return bArr2;
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public ECPoint negate() {
            return new C1609Fp(this.curve, this.f7673x, this.f7674y.negate(), this.withCompression);
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public ECPoint subtract(ECPoint eCPoint) {
            return eCPoint.isInfinity() ? this : add(eCPoint.negate());
        }

        @Override // org.bouncycastle.math.p012ec.ECPoint
        public ECPoint twice() {
            if (isInfinity()) {
                return this;
            }
            if (this.f7674y.toBigInteger().signum() == 0) {
                return this.curve.getInfinity();
            }
            ECFieldElement fromBigInteger = this.curve.fromBigInteger(BigInteger.valueOf(2L));
            ECFieldElement divide = this.f7673x.square().multiply(this.curve.fromBigInteger(BigInteger.valueOf(3L))).add(this.curve.f7654a).divide(this.f7674y.multiply(fromBigInteger));
            ECFieldElement subtract = divide.square().subtract(this.f7673x.multiply(fromBigInteger));
            return new C1609Fp(this.curve, subtract, divide.multiply(this.f7673x.subtract(subtract)).subtract(this.f7674y), this.withCompression);
        }
    }

    public ECPoint(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this.curve = eCCurve;
        this.f7673x = eCFieldElement;
        this.f7674y = eCFieldElement2;
    }

    public abstract ECPoint add(ECPoint eCPoint);

    public void assertECMultiplier() {
        synchronized (this) {
            if (this.multiplier == null) {
                this.multiplier = new FpNafMultiplier();
            }
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ECPoint)) {
            return false;
        }
        ECPoint eCPoint = (ECPoint) obj;
        if (isInfinity()) {
            return eCPoint.isInfinity();
        }
        if (!this.f7673x.equals(eCPoint.f7673x) || !this.f7674y.equals(eCPoint.f7674y)) {
            z = false;
        }
        return z;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public abstract byte[] getEncoded();

    public ECFieldElement getX() {
        return this.f7673x;
    }

    public ECFieldElement getY() {
        return this.f7674y;
    }

    public int hashCode() {
        if (isInfinity()) {
            return 0;
        }
        return this.f7673x.hashCode() ^ this.f7674y.hashCode();
    }

    public boolean isCompressed() {
        return this.withCompression;
    }

    public boolean isInfinity() {
        return this.f7673x == null && this.f7674y == null;
    }

    public ECPoint multiply(BigInteger bigInteger) {
        if (bigInteger.signum() >= 0) {
            if (isInfinity()) {
                return this;
            }
            if (bigInteger.signum() == 0) {
                return this.curve.getInfinity();
            }
            assertECMultiplier();
            return this.multiplier.multiply(this, bigInteger, this.preCompInfo);
        }
        throw new IllegalArgumentException("The multiplicator cannot be negative");
    }

    public abstract ECPoint negate();

    public void setPreCompInfo(PreCompInfo preCompInfo) {
        this.preCompInfo = preCompInfo;
    }

    public abstract ECPoint subtract(ECPoint eCPoint);

    public abstract ECPoint twice();
}
