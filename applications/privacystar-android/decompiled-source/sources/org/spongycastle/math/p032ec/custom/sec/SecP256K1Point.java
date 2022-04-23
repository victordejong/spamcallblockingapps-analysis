package org.spongycastle.math.p032ec.custom.sec;

import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP256K1Point */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP256K1Point.class */
public class SecP256K1Point extends ECPoint.AbstractFp {
    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
        if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.withCompression = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.withCompression = z;
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        if (this == eCPoint) {
            return twice();
        }
        ECCurve curve = getCurve();
        SecP256K1FieldElement secP256K1FieldElement = (SecP256K1FieldElement) this.f1551x;
        SecP256K1FieldElement secP256K1FieldElement2 = (SecP256K1FieldElement) this.f1552y;
        SecP256K1FieldElement secP256K1FieldElement3 = (SecP256K1FieldElement) eCPoint.getXCoord();
        SecP256K1FieldElement secP256K1FieldElement4 = (SecP256K1FieldElement) eCPoint.getYCoord();
        SecP256K1FieldElement secP256K1FieldElement5 = (SecP256K1FieldElement) this.f1553zs[0];
        SecP256K1FieldElement secP256K1FieldElement6 = (SecP256K1FieldElement) eCPoint.getZCoord(0);
        int[] createExt = Nat256.createExt();
        int[] create = Nat256.create();
        int[] create2 = Nat256.create();
        int[] create3 = Nat256.create();
        boolean isOne = secP256K1FieldElement5.isOne();
        if (isOne) {
            iArr = secP256K1FieldElement3.f1610x;
            iArr2 = secP256K1FieldElement4.f1610x;
        } else {
            SecP256K1Field.square(secP256K1FieldElement5.f1610x, create2);
            SecP256K1Field.multiply(create2, secP256K1FieldElement3.f1610x, create);
            SecP256K1Field.multiply(create2, secP256K1FieldElement5.f1610x, create2);
            SecP256K1Field.multiply(create2, secP256K1FieldElement4.f1610x, create2);
            iArr = create;
            iArr2 = create2;
        }
        boolean isOne2 = secP256K1FieldElement6.isOne();
        if (isOne2) {
            iArr4 = secP256K1FieldElement.f1610x;
            iArr3 = secP256K1FieldElement2.f1610x;
        } else {
            SecP256K1Field.square(secP256K1FieldElement6.f1610x, create3);
            SecP256K1Field.multiply(create3, secP256K1FieldElement.f1610x, createExt);
            SecP256K1Field.multiply(create3, secP256K1FieldElement6.f1610x, create3);
            SecP256K1Field.multiply(create3, secP256K1FieldElement2.f1610x, create3);
            iArr4 = createExt;
            iArr3 = create3;
        }
        int[] create4 = Nat256.create();
        SecP256K1Field.subtract(iArr4, iArr, create4);
        SecP256K1Field.subtract(iArr3, iArr2, create);
        if (Nat256.isZero(create4)) {
            return Nat256.isZero(create) ? twice() : curve.getInfinity();
        }
        SecP256K1Field.square(create4, create2);
        int[] create5 = Nat256.create();
        SecP256K1Field.multiply(create2, create4, create5);
        SecP256K1Field.multiply(create2, iArr4, create2);
        SecP256K1Field.negate(create5, create5);
        Nat256.mul(iArr3, create5, createExt);
        SecP256K1Field.reduce32(Nat256.addBothTo(create2, create2, create5), create5);
        SecP256K1FieldElement secP256K1FieldElement7 = new SecP256K1FieldElement(create3);
        SecP256K1Field.square(create, secP256K1FieldElement7.f1610x);
        SecP256K1Field.subtract(secP256K1FieldElement7.f1610x, create5, secP256K1FieldElement7.f1610x);
        SecP256K1FieldElement secP256K1FieldElement8 = new SecP256K1FieldElement(create5);
        SecP256K1Field.subtract(create2, secP256K1FieldElement7.f1610x, secP256K1FieldElement8.f1610x);
        SecP256K1Field.multiplyAddToExt(secP256K1FieldElement8.f1610x, create, createExt);
        SecP256K1Field.reduce(createExt, secP256K1FieldElement8.f1610x);
        SecP256K1FieldElement secP256K1FieldElement9 = new SecP256K1FieldElement(create4);
        if (!isOne) {
            SecP256K1Field.multiply(secP256K1FieldElement9.f1610x, secP256K1FieldElement5.f1610x, secP256K1FieldElement9.f1610x);
        }
        if (!isOne2) {
            SecP256K1Field.multiply(secP256K1FieldElement9.f1610x, secP256K1FieldElement6.f1610x, secP256K1FieldElement9.f1610x);
        }
        return new SecP256K1Point(curve, secP256K1FieldElement7, secP256K1FieldElement8, new ECFieldElement[]{secP256K1FieldElement9}, this.withCompression);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    protected ECPoint detach() {
        return new SecP256K1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP256K1Point(this.curve, this.f1551x, this.f1552y.negate(), this.f1553zs, this.withCompression);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint threeTimes() {
        return (isInfinity() || this.f1552y.isZero()) ? this : twice().add(this);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        SecP256K1FieldElement secP256K1FieldElement = (SecP256K1FieldElement) this.f1552y;
        if (secP256K1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP256K1FieldElement secP256K1FieldElement2 = (SecP256K1FieldElement) this.f1551x;
        SecP256K1FieldElement secP256K1FieldElement3 = (SecP256K1FieldElement) this.f1553zs[0];
        int[] create = Nat256.create();
        SecP256K1Field.square(secP256K1FieldElement.f1610x, create);
        int[] create2 = Nat256.create();
        SecP256K1Field.square(create, create2);
        int[] create3 = Nat256.create();
        SecP256K1Field.square(secP256K1FieldElement2.f1610x, create3);
        SecP256K1Field.reduce32(Nat256.addBothTo(create3, create3, create3), create3);
        SecP256K1Field.multiply(create, secP256K1FieldElement2.f1610x, create);
        SecP256K1Field.reduce32(Nat.shiftUpBits(8, create, 2, 0), create);
        int[] create4 = Nat256.create();
        SecP256K1Field.reduce32(Nat.shiftUpBits(8, create2, 3, 0, create4), create4);
        SecP256K1FieldElement secP256K1FieldElement4 = new SecP256K1FieldElement(create2);
        SecP256K1Field.square(create3, secP256K1FieldElement4.f1610x);
        SecP256K1Field.subtract(secP256K1FieldElement4.f1610x, create, secP256K1FieldElement4.f1610x);
        SecP256K1Field.subtract(secP256K1FieldElement4.f1610x, create, secP256K1FieldElement4.f1610x);
        SecP256K1FieldElement secP256K1FieldElement5 = new SecP256K1FieldElement(create);
        SecP256K1Field.subtract(create, secP256K1FieldElement4.f1610x, secP256K1FieldElement5.f1610x);
        SecP256K1Field.multiply(secP256K1FieldElement5.f1610x, create3, secP256K1FieldElement5.f1610x);
        SecP256K1Field.subtract(secP256K1FieldElement5.f1610x, create4, secP256K1FieldElement5.f1610x);
        SecP256K1FieldElement secP256K1FieldElement6 = new SecP256K1FieldElement(create3);
        SecP256K1Field.twice(secP256K1FieldElement.f1610x, secP256K1FieldElement6.f1610x);
        if (!secP256K1FieldElement3.isOne()) {
            SecP256K1Field.multiply(secP256K1FieldElement6.f1610x, secP256K1FieldElement3.f1610x, secP256K1FieldElement6.f1610x);
        }
        return new SecP256K1Point(curve, secP256K1FieldElement4, secP256K1FieldElement5, new ECFieldElement[]{secP256K1FieldElement6}, this.withCompression);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f1552y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
