package org.spongycastle.math.p032ec.custom.sec;

import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP224R1Point */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP224R1Point.class */
public class SecP224R1Point extends ECPoint.AbstractFp {
    public SecP224R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP224R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
        if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.withCompression = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecP224R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
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
        SecP224R1FieldElement secP224R1FieldElement = (SecP224R1FieldElement) this.f1551x;
        SecP224R1FieldElement secP224R1FieldElement2 = (SecP224R1FieldElement) this.f1552y;
        SecP224R1FieldElement secP224R1FieldElement3 = (SecP224R1FieldElement) eCPoint.getXCoord();
        SecP224R1FieldElement secP224R1FieldElement4 = (SecP224R1FieldElement) eCPoint.getYCoord();
        SecP224R1FieldElement secP224R1FieldElement5 = (SecP224R1FieldElement) this.f1553zs[0];
        SecP224R1FieldElement secP224R1FieldElement6 = (SecP224R1FieldElement) eCPoint.getZCoord(0);
        int[] createExt = Nat224.createExt();
        int[] create = Nat224.create();
        int[] create2 = Nat224.create();
        int[] create3 = Nat224.create();
        boolean isOne = secP224R1FieldElement5.isOne();
        if (isOne) {
            iArr2 = secP224R1FieldElement3.f1605x;
            iArr = secP224R1FieldElement4.f1605x;
        } else {
            SecP224R1Field.square(secP224R1FieldElement5.f1605x, create2);
            SecP224R1Field.multiply(create2, secP224R1FieldElement3.f1605x, create);
            SecP224R1Field.multiply(create2, secP224R1FieldElement5.f1605x, create2);
            SecP224R1Field.multiply(create2, secP224R1FieldElement4.f1605x, create2);
            iArr2 = create;
            iArr = create2;
        }
        boolean isOne2 = secP224R1FieldElement6.isOne();
        if (isOne2) {
            iArr4 = secP224R1FieldElement.f1605x;
            iArr3 = secP224R1FieldElement2.f1605x;
        } else {
            SecP224R1Field.square(secP224R1FieldElement6.f1605x, create3);
            SecP224R1Field.multiply(create3, secP224R1FieldElement.f1605x, createExt);
            SecP224R1Field.multiply(create3, secP224R1FieldElement6.f1605x, create3);
            SecP224R1Field.multiply(create3, secP224R1FieldElement2.f1605x, create3);
            iArr4 = createExt;
            iArr3 = create3;
        }
        int[] create4 = Nat224.create();
        SecP224R1Field.subtract(iArr4, iArr2, create4);
        SecP224R1Field.subtract(iArr3, iArr, create);
        if (Nat224.isZero(create4)) {
            return Nat224.isZero(create) ? twice() : curve.getInfinity();
        }
        SecP224R1Field.square(create4, create2);
        int[] create5 = Nat224.create();
        SecP224R1Field.multiply(create2, create4, create5);
        SecP224R1Field.multiply(create2, iArr4, create2);
        SecP224R1Field.negate(create5, create5);
        Nat224.mul(iArr3, create5, createExt);
        SecP224R1Field.reduce32(Nat224.addBothTo(create2, create2, create5), create5);
        SecP224R1FieldElement secP224R1FieldElement7 = new SecP224R1FieldElement(create3);
        SecP224R1Field.square(create, secP224R1FieldElement7.f1605x);
        SecP224R1Field.subtract(secP224R1FieldElement7.f1605x, create5, secP224R1FieldElement7.f1605x);
        SecP224R1FieldElement secP224R1FieldElement8 = new SecP224R1FieldElement(create5);
        SecP224R1Field.subtract(create2, secP224R1FieldElement7.f1605x, secP224R1FieldElement8.f1605x);
        SecP224R1Field.multiplyAddToExt(secP224R1FieldElement8.f1605x, create, createExt);
        SecP224R1Field.reduce(createExt, secP224R1FieldElement8.f1605x);
        SecP224R1FieldElement secP224R1FieldElement9 = new SecP224R1FieldElement(create4);
        if (!isOne) {
            SecP224R1Field.multiply(secP224R1FieldElement9.f1605x, secP224R1FieldElement5.f1605x, secP224R1FieldElement9.f1605x);
        }
        if (!isOne2) {
            SecP224R1Field.multiply(secP224R1FieldElement9.f1605x, secP224R1FieldElement6.f1605x, secP224R1FieldElement9.f1605x);
        }
        return new SecP224R1Point(curve, secP224R1FieldElement7, secP224R1FieldElement8, new ECFieldElement[]{secP224R1FieldElement9}, this.withCompression);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    protected ECPoint detach() {
        return new SecP224R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP224R1Point(this.curve, this.f1551x, this.f1552y.negate(), this.f1553zs, this.withCompression);
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
        SecP224R1FieldElement secP224R1FieldElement = (SecP224R1FieldElement) this.f1552y;
        if (secP224R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP224R1FieldElement secP224R1FieldElement2 = (SecP224R1FieldElement) this.f1551x;
        SecP224R1FieldElement secP224R1FieldElement3 = (SecP224R1FieldElement) this.f1553zs[0];
        int[] create = Nat224.create();
        int[] create2 = Nat224.create();
        int[] create3 = Nat224.create();
        SecP224R1Field.square(secP224R1FieldElement.f1605x, create3);
        int[] create4 = Nat224.create();
        SecP224R1Field.square(create3, create4);
        boolean isOne = secP224R1FieldElement3.isOne();
        int[] iArr = secP224R1FieldElement3.f1605x;
        if (!isOne) {
            SecP224R1Field.square(secP224R1FieldElement3.f1605x, create2);
            iArr = create2;
        }
        SecP224R1Field.subtract(secP224R1FieldElement2.f1605x, iArr, create);
        SecP224R1Field.add(secP224R1FieldElement2.f1605x, iArr, create2);
        SecP224R1Field.multiply(create2, create, create2);
        SecP224R1Field.reduce32(Nat224.addBothTo(create2, create2, create2), create2);
        SecP224R1Field.multiply(create3, secP224R1FieldElement2.f1605x, create3);
        SecP224R1Field.reduce32(Nat.shiftUpBits(7, create3, 2, 0), create3);
        SecP224R1Field.reduce32(Nat.shiftUpBits(7, create4, 3, 0, create), create);
        SecP224R1FieldElement secP224R1FieldElement4 = new SecP224R1FieldElement(create4);
        SecP224R1Field.square(create2, secP224R1FieldElement4.f1605x);
        SecP224R1Field.subtract(secP224R1FieldElement4.f1605x, create3, secP224R1FieldElement4.f1605x);
        SecP224R1Field.subtract(secP224R1FieldElement4.f1605x, create3, secP224R1FieldElement4.f1605x);
        SecP224R1FieldElement secP224R1FieldElement5 = new SecP224R1FieldElement(create3);
        SecP224R1Field.subtract(create3, secP224R1FieldElement4.f1605x, secP224R1FieldElement5.f1605x);
        SecP224R1Field.multiply(secP224R1FieldElement5.f1605x, create2, secP224R1FieldElement5.f1605x);
        SecP224R1Field.subtract(secP224R1FieldElement5.f1605x, create, secP224R1FieldElement5.f1605x);
        SecP224R1FieldElement secP224R1FieldElement6 = new SecP224R1FieldElement(create2);
        SecP224R1Field.twice(secP224R1FieldElement.f1605x, secP224R1FieldElement6.f1605x);
        if (!isOne) {
            SecP224R1Field.multiply(secP224R1FieldElement6.f1605x, secP224R1FieldElement3.f1605x, secP224R1FieldElement6.f1605x);
        }
        return new SecP224R1Point(curve, secP224R1FieldElement4, secP224R1FieldElement5, new ECFieldElement[]{secP224R1FieldElement6}, this.withCompression);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f1552y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
