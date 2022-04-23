package org.spongycastle.math.p032ec;

import android.support.p001v4.view.InputDeviceCompat;
import java.math.BigInteger;
import java.util.Hashtable;
import org.spongycastle.math.p032ec.ECFieldElement;
/* renamed from: org.spongycastle.math.ec.ECPoint */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECPoint.class */
public abstract class ECPoint {
    protected static ECFieldElement[] EMPTY_ZS = new ECFieldElement[0];
    protected ECCurve curve;
    protected Hashtable preCompTable;
    protected boolean withCompression;

    /* renamed from: x */
    protected ECFieldElement f1551x;

    /* renamed from: y */
    protected ECFieldElement f1552y;

    /* renamed from: zs */
    protected ECFieldElement[] f1553zs;

    /* renamed from: org.spongycastle.math.ec.ECPoint$AbstractF2m */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECPoint$AbstractF2m.class */
    public static abstract class AbstractF2m extends ECPoint {
        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractF2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractF2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        protected boolean satisfiesCurveEquation() {
            ECFieldElement eCFieldElement;
            ECFieldElement eCFieldElement2;
            ECCurve curve = getCurve();
            ECFieldElement eCFieldElement3 = this.f1551x;
            ECFieldElement a = curve.getA();
            ECFieldElement b = curve.getB();
            int coordinateSystem = curve.getCoordinateSystem();
            if (coordinateSystem == 6) {
                ECFieldElement eCFieldElement4 = this.f1553zs[0];
                boolean isOne = eCFieldElement4.isOne();
                if (eCFieldElement3.isZero()) {
                    ECFieldElement square = this.f1552y.square();
                    ECFieldElement eCFieldElement5 = b;
                    if (!isOne) {
                        eCFieldElement5 = b.multiply(eCFieldElement4.square());
                    }
                    return square.equals(eCFieldElement5);
                }
                ECFieldElement eCFieldElement6 = this.f1552y;
                ECFieldElement square2 = eCFieldElement3.square();
                if (isOne) {
                    eCFieldElement = eCFieldElement6.square().add(eCFieldElement6).add(a);
                    eCFieldElement2 = square2.square().add(b);
                } else {
                    ECFieldElement square3 = eCFieldElement4.square();
                    ECFieldElement square4 = square3.square();
                    eCFieldElement = eCFieldElement6.add(eCFieldElement4).multiplyPlusProduct(eCFieldElement6, a, square3);
                    eCFieldElement2 = square2.squarePlusProduct(b, square4);
                }
                return eCFieldElement.multiply(square2).equals(eCFieldElement2);
            }
            ECFieldElement eCFieldElement7 = this.f1552y;
            ECFieldElement multiply = eCFieldElement7.add(eCFieldElement3).multiply(eCFieldElement7);
            ECFieldElement eCFieldElement8 = a;
            ECFieldElement eCFieldElement9 = b;
            ECFieldElement eCFieldElement10 = multiply;
            switch (coordinateSystem) {
                case 0:
                    break;
                default:
                    throw new IllegalStateException("unsupported coordinate system");
                case 1:
                    ECFieldElement eCFieldElement11 = this.f1553zs[0];
                    eCFieldElement8 = a;
                    eCFieldElement9 = b;
                    eCFieldElement10 = multiply;
                    if (!eCFieldElement11.isOne()) {
                        ECFieldElement multiply2 = eCFieldElement11.multiply(eCFieldElement11.square());
                        eCFieldElement10 = multiply.multiply(eCFieldElement11);
                        eCFieldElement8 = a.multiply(eCFieldElement11);
                        eCFieldElement9 = b.multiply(multiply2);
                        break;
                    }
                    break;
            }
            return eCFieldElement10.equals(eCFieldElement3.add(eCFieldElement8).multiply(eCFieldElement3.square()).add(eCFieldElement9));
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint scaleX(ECFieldElement eCFieldElement) {
            if (isInfinity()) {
                return this;
            }
            switch (getCurveCoordinateSystem()) {
                case 5:
                    ECFieldElement rawXCoord = getRawXCoord();
                    return getCurve().createRawPoint(rawXCoord, getRawYCoord().add(rawXCoord).divide(eCFieldElement).add(rawXCoord.multiply(eCFieldElement)), getRawZCoords(), this.withCompression);
                case 6:
                    ECFieldElement rawXCoord2 = getRawXCoord();
                    ECFieldElement rawYCoord = getRawYCoord();
                    ECFieldElement eCFieldElement2 = getRawZCoords()[0];
                    ECFieldElement multiply = rawXCoord2.multiply(eCFieldElement.square());
                    return getCurve().createRawPoint(multiply, rawYCoord.add(rawXCoord2).add(multiply), new ECFieldElement[]{eCFieldElement2.multiply(eCFieldElement)}, this.withCompression);
                default:
                    return ECPoint.super.scaleX(eCFieldElement);
            }
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint scaleY(ECFieldElement eCFieldElement) {
            if (isInfinity()) {
                return this;
            }
            switch (getCurveCoordinateSystem()) {
                case 5:
                case 6:
                    ECFieldElement rawXCoord = getRawXCoord();
                    return getCurve().createRawPoint(rawXCoord, getRawYCoord().add(rawXCoord).multiply(eCFieldElement).add(rawXCoord), getRawZCoords(), this.withCompression);
                default:
                    return ECPoint.super.scaleY(eCFieldElement);
            }
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint subtract(ECPoint eCPoint) {
            return eCPoint.isInfinity() ? this : add(eCPoint.negate());
        }

        public AbstractF2m tau() {
            if (isInfinity()) {
                return this;
            }
            ECCurve curve = getCurve();
            int coordinateSystem = curve.getCoordinateSystem();
            ECFieldElement eCFieldElement = this.f1551x;
            switch (coordinateSystem) {
                case 0:
                case 5:
                    return (AbstractF2m) curve.createRawPoint(eCFieldElement.square(), this.f1552y.square(), this.withCompression);
                case 1:
                case 6:
                    ECFieldElement eCFieldElement2 = this.f1552y;
                    ECFieldElement eCFieldElement3 = this.f1553zs[0];
                    return (AbstractF2m) curve.createRawPoint(eCFieldElement.square(), eCFieldElement2.square(), new ECFieldElement[]{eCFieldElement3.square()}, this.withCompression);
                case 2:
                case 3:
                case 4:
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
        }

        public AbstractF2m tauPow(int i) {
            if (isInfinity()) {
                return this;
            }
            ECCurve curve = getCurve();
            int coordinateSystem = curve.getCoordinateSystem();
            ECFieldElement eCFieldElement = this.f1551x;
            switch (coordinateSystem) {
                case 0:
                case 5:
                    return (AbstractF2m) curve.createRawPoint(eCFieldElement.squarePow(i), this.f1552y.squarePow(i), this.withCompression);
                case 1:
                case 6:
                    ECFieldElement eCFieldElement2 = this.f1552y;
                    ECFieldElement eCFieldElement3 = this.f1553zs[0];
                    return (AbstractF2m) curve.createRawPoint(eCFieldElement.squarePow(i), eCFieldElement2.squarePow(i), new ECFieldElement[]{eCFieldElement3.squarePow(i)}, this.withCompression);
                case 2:
                case 3:
                case 4:
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
        }
    }

    /* renamed from: org.spongycastle.math.ec.ECPoint$AbstractFp */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECPoint$AbstractFp.class */
    public static abstract class AbstractFp extends ECPoint {
        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractFp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractFp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        protected boolean getCompressionYTilde() {
            return getAffineYCoord().testBitZero();
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        protected boolean satisfiesCurveEquation() {
            ECFieldElement eCFieldElement = this.f1551x;
            ECFieldElement eCFieldElement2 = this.f1552y;
            ECFieldElement a = this.curve.getA();
            ECFieldElement b = this.curve.getB();
            ECFieldElement square = eCFieldElement2.square();
            ECFieldElement eCFieldElement3 = square;
            ECFieldElement eCFieldElement4 = a;
            ECFieldElement eCFieldElement5 = b;
            switch (getCurveCoordinateSystem()) {
                case 0:
                    break;
                case 1:
                    ECFieldElement eCFieldElement6 = this.f1553zs[0];
                    eCFieldElement3 = square;
                    eCFieldElement4 = a;
                    eCFieldElement5 = b;
                    if (!eCFieldElement6.isOne()) {
                        ECFieldElement square2 = eCFieldElement6.square();
                        ECFieldElement multiply = eCFieldElement6.multiply(square2);
                        eCFieldElement3 = square.multiply(eCFieldElement6);
                        eCFieldElement4 = a.multiply(square2);
                        eCFieldElement5 = b.multiply(multiply);
                        break;
                    }
                    break;
                case 2:
                case 3:
                case 4:
                    ECFieldElement eCFieldElement7 = this.f1553zs[0];
                    eCFieldElement3 = square;
                    eCFieldElement4 = a;
                    eCFieldElement5 = b;
                    if (!eCFieldElement7.isOne()) {
                        ECFieldElement square3 = eCFieldElement7.square();
                        ECFieldElement square4 = square3.square();
                        ECFieldElement multiply2 = square3.multiply(square4);
                        eCFieldElement4 = a.multiply(square4);
                        eCFieldElement5 = b.multiply(multiply2);
                        eCFieldElement3 = square;
                        break;
                    }
                    break;
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
            return eCFieldElement3.equals(eCFieldElement.square().add(eCFieldElement4).multiply(eCFieldElement).add(eCFieldElement5));
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint subtract(ECPoint eCPoint) {
            return eCPoint.isInfinity() ? this : add(eCPoint.negate());
        }
    }

    /* renamed from: org.spongycastle.math.ec.ECPoint$F2m */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECPoint$F2m.class */
    public static class F2m extends AbstractF2m {
        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            this(eCCurve, eCFieldElement, eCFieldElement2, false);
        }

        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
            if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
                throw new IllegalArgumentException("Exactly one of the field elements is null");
            }
            if (eCFieldElement != null) {
                ECFieldElement.F2m.checkFieldElements(this.f1551x, this.f1552y);
                if (eCCurve != null) {
                    ECFieldElement.F2m.checkFieldElements(this.f1551x, this.curve.getA());
                }
            }
            this.withCompression = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
            this.withCompression = z;
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint add(ECPoint eCPoint) {
            ECFieldElement eCFieldElement;
            ECFieldElement eCFieldElement2;
            ECFieldElement eCFieldElement3;
            ECFieldElement eCFieldElement4;
            ECFieldElement eCFieldElement5;
            ECFieldElement eCFieldElement6;
            if (isInfinity()) {
                return eCPoint;
            }
            if (eCPoint.isInfinity()) {
                return this;
            }
            ECCurve curve = getCurve();
            int coordinateSystem = curve.getCoordinateSystem();
            ECFieldElement eCFieldElement7 = this.f1551x;
            ECFieldElement eCFieldElement8 = eCPoint.f1551x;
            if (coordinateSystem != 6) {
                switch (coordinateSystem) {
                    case 0:
                        ECFieldElement eCFieldElement9 = this.f1552y;
                        ECFieldElement eCFieldElement10 = eCPoint.f1552y;
                        ECFieldElement add = eCFieldElement7.add(eCFieldElement8);
                        ECFieldElement add2 = eCFieldElement9.add(eCFieldElement10);
                        if (add.isZero()) {
                            return add2.isZero() ? twice() : curve.getInfinity();
                        }
                        ECFieldElement divide = add2.divide(add);
                        ECFieldElement add3 = divide.square().add(divide).add(add).add(curve.getA());
                        return new F2m(curve, add3, divide.multiply(eCFieldElement7.add(add3)).add(add3).add(eCFieldElement9), this.withCompression);
                    case 1:
                        ECFieldElement eCFieldElement11 = this.f1552y;
                        ECFieldElement eCFieldElement12 = this.f1553zs[0];
                        ECFieldElement eCFieldElement13 = eCPoint.f1552y;
                        ECFieldElement eCFieldElement14 = eCPoint.f1553zs[0];
                        boolean isOne = eCFieldElement14.isOne();
                        ECFieldElement add4 = eCFieldElement12.multiply(eCFieldElement13).add(isOne ? eCFieldElement11 : eCFieldElement11.multiply(eCFieldElement14));
                        ECFieldElement add5 = eCFieldElement12.multiply(eCFieldElement8).add(isOne ? eCFieldElement7 : eCFieldElement7.multiply(eCFieldElement14));
                        if (add5.isZero()) {
                            return add4.isZero() ? twice() : curve.getInfinity();
                        }
                        ECFieldElement square = add5.square();
                        ECFieldElement multiply = square.multiply(add5);
                        ECFieldElement multiply2 = isOne ? eCFieldElement12 : eCFieldElement12.multiply(eCFieldElement14);
                        ECFieldElement add6 = add4.add(add5);
                        ECFieldElement add7 = add6.multiplyPlusProduct(add4, square, curve.getA()).multiply(multiply2).add(multiply);
                        return new F2m(curve, add5.multiply(add7), add4.multiplyPlusProduct(eCFieldElement7, add5, eCFieldElement11).multiplyPlusProduct(isOne ? square : square.multiply(eCFieldElement14), add6, add7), new ECFieldElement[]{multiply.multiply(multiply2)}, this.withCompression);
                    default:
                        throw new IllegalStateException("unsupported coordinate system");
                }
            } else if (eCFieldElement7.isZero()) {
                return eCFieldElement8.isZero() ? curve.getInfinity() : eCPoint.add(this);
            } else {
                ECFieldElement eCFieldElement15 = this.f1552y;
                ECFieldElement eCFieldElement16 = this.f1553zs[0];
                ECFieldElement eCFieldElement17 = eCPoint.f1552y;
                ECFieldElement eCFieldElement18 = eCPoint.f1553zs[0];
                boolean isOne2 = eCFieldElement16.isOne();
                if (!isOne2) {
                    eCFieldElement2 = eCFieldElement8.multiply(eCFieldElement16);
                    eCFieldElement = eCFieldElement17.multiply(eCFieldElement16);
                } else {
                    eCFieldElement2 = eCFieldElement8;
                    eCFieldElement = eCFieldElement17;
                }
                boolean isOne3 = eCFieldElement18.isOne();
                if (!isOne3) {
                    eCFieldElement7 = eCFieldElement7.multiply(eCFieldElement18);
                    eCFieldElement3 = eCFieldElement15.multiply(eCFieldElement18);
                } else {
                    eCFieldElement3 = eCFieldElement15;
                }
                ECFieldElement add8 = eCFieldElement3.add(eCFieldElement);
                ECFieldElement add9 = eCFieldElement7.add(eCFieldElement2);
                if (add9.isZero()) {
                    return add8.isZero() ? twice() : curve.getInfinity();
                }
                if (eCFieldElement8.isZero()) {
                    ECPoint normalize = normalize();
                    ECFieldElement xCoord = normalize.getXCoord();
                    ECFieldElement yCoord = normalize.getYCoord();
                    ECFieldElement divide2 = yCoord.add(eCFieldElement17).divide(xCoord);
                    eCFieldElement6 = divide2.square().add(divide2).add(xCoord).add(curve.getA());
                    if (eCFieldElement6.isZero()) {
                        return new F2m(curve, eCFieldElement6, curve.getB().sqrt(), this.withCompression);
                    }
                    eCFieldElement5 = divide2.multiply(xCoord.add(eCFieldElement6)).add(eCFieldElement6).add(yCoord).divide(eCFieldElement6).add(eCFieldElement6);
                    eCFieldElement4 = curve.fromBigInteger(ECConstants.ONE);
                } else {
                    ECFieldElement square2 = add9.square();
                    ECFieldElement multiply3 = add8.multiply(eCFieldElement7);
                    ECFieldElement multiply4 = add8.multiply(eCFieldElement2);
                    ECFieldElement multiply5 = multiply3.multiply(multiply4);
                    if (multiply5.isZero()) {
                        return new F2m(curve, multiply5, curve.getB().sqrt(), this.withCompression);
                    }
                    ECFieldElement multiply6 = add8.multiply(square2);
                    if (!isOne3) {
                        multiply6 = multiply6.multiply(eCFieldElement18);
                    }
                    eCFieldElement5 = multiply4.add(square2).squarePlusProduct(multiply6, eCFieldElement15.add(eCFieldElement16));
                    eCFieldElement4 = multiply6;
                    if (!isOne2) {
                        eCFieldElement4 = multiply6.multiply(eCFieldElement16);
                    }
                    eCFieldElement6 = multiply5;
                }
                return new F2m(curve, eCFieldElement6, eCFieldElement5, new ECFieldElement[]{eCFieldElement4}, this.withCompression);
            }
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        protected ECPoint detach() {
            return new F2m(null, getAffineXCoord(), getAffineYCoord());
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        protected boolean getCompressionYTilde() {
            ECFieldElement rawXCoord = getRawXCoord();
            boolean z = false;
            if (rawXCoord.isZero()) {
                return false;
            }
            ECFieldElement rawYCoord = getRawYCoord();
            switch (getCurveCoordinateSystem()) {
                case 5:
                case 6:
                    if (rawYCoord.testBitZero() != rawXCoord.testBitZero()) {
                        z = true;
                    }
                    return z;
                default:
                    return rawYCoord.divide(rawXCoord).testBitZero();
            }
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECFieldElement getYCoord() {
            int curveCoordinateSystem = getCurveCoordinateSystem();
            switch (curveCoordinateSystem) {
                case 5:
                case 6:
                    ECFieldElement eCFieldElement = this.f1551x;
                    ECFieldElement eCFieldElement2 = this.f1552y;
                    if (isInfinity() || eCFieldElement.isZero()) {
                        return eCFieldElement2;
                    }
                    ECFieldElement multiply = eCFieldElement2.add(eCFieldElement).multiply(eCFieldElement);
                    ECFieldElement eCFieldElement3 = multiply;
                    if (6 == curveCoordinateSystem) {
                        ECFieldElement eCFieldElement4 = this.f1553zs[0];
                        eCFieldElement3 = multiply;
                        if (!eCFieldElement4.isOne()) {
                            eCFieldElement3 = multiply.divide(eCFieldElement4);
                        }
                    }
                    return eCFieldElement3;
                default:
                    return this.f1552y;
            }
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint negate() {
            if (isInfinity()) {
                return this;
            }
            ECFieldElement eCFieldElement = this.f1551x;
            if (eCFieldElement.isZero()) {
                return this;
            }
            switch (getCurveCoordinateSystem()) {
                case 0:
                    return new F2m(this.curve, eCFieldElement, this.f1552y.add(eCFieldElement), this.withCompression);
                case 1:
                    return new F2m(this.curve, eCFieldElement, this.f1552y.add(eCFieldElement), new ECFieldElement[]{this.f1553zs[0]}, this.withCompression);
                case 2:
                case 3:
                case 4:
                default:
                    throw new IllegalStateException("unsupported coordinate system");
                case 5:
                    return new F2m(this.curve, eCFieldElement, this.f1552y.addOne(), this.withCompression);
                case 6:
                    ECFieldElement eCFieldElement2 = this.f1552y;
                    ECFieldElement eCFieldElement3 = this.f1553zs[0];
                    return new F2m(this.curve, eCFieldElement, eCFieldElement2.add(eCFieldElement3), new ECFieldElement[]{eCFieldElement3}, this.withCompression);
            }
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint twice() {
            ECFieldElement eCFieldElement;
            if (isInfinity()) {
                return this;
            }
            ECCurve curve = getCurve();
            ECFieldElement eCFieldElement2 = this.f1551x;
            if (eCFieldElement2.isZero()) {
                return curve.getInfinity();
            }
            int coordinateSystem = curve.getCoordinateSystem();
            if (coordinateSystem != 6) {
                switch (coordinateSystem) {
                    case 0:
                        ECFieldElement add = this.f1552y.divide(eCFieldElement2).add(eCFieldElement2);
                        ECFieldElement add2 = add.square().add(add).add(curve.getA());
                        return new F2m(curve, add2, eCFieldElement2.squarePlusProduct(add2, add.addOne()), this.withCompression);
                    case 1:
                        ECFieldElement eCFieldElement3 = this.f1552y;
                        ECFieldElement eCFieldElement4 = this.f1553zs[0];
                        boolean isOne = eCFieldElement4.isOne();
                        ECFieldElement multiply = isOne ? eCFieldElement2 : eCFieldElement2.multiply(eCFieldElement4);
                        if (!isOne) {
                            eCFieldElement3 = eCFieldElement3.multiply(eCFieldElement4);
                        }
                        ECFieldElement square = eCFieldElement2.square();
                        ECFieldElement add3 = square.add(eCFieldElement3);
                        ECFieldElement square2 = multiply.square();
                        ECFieldElement add4 = add3.add(multiply);
                        ECFieldElement multiplyPlusProduct = add4.multiplyPlusProduct(add3, square2, curve.getA());
                        return new F2m(curve, multiply.multiply(multiplyPlusProduct), square.square().multiplyPlusProduct(multiply, multiplyPlusProduct, add4), new ECFieldElement[]{multiply.multiply(square2)}, this.withCompression);
                    default:
                        throw new IllegalStateException("unsupported coordinate system");
                }
            } else {
                ECFieldElement eCFieldElement5 = this.f1552y;
                ECFieldElement eCFieldElement6 = this.f1553zs[0];
                boolean isOne2 = eCFieldElement6.isOne();
                ECFieldElement multiply2 = isOne2 ? eCFieldElement5 : eCFieldElement5.multiply(eCFieldElement6);
                ECFieldElement square3 = isOne2 ? eCFieldElement6 : eCFieldElement6.square();
                ECFieldElement a = curve.getA();
                ECFieldElement multiply3 = isOne2 ? a : a.multiply(square3);
                ECFieldElement add5 = eCFieldElement5.square().add(multiply2).add(multiply3);
                if (add5.isZero()) {
                    return new F2m(curve, add5, curve.getB().sqrt(), this.withCompression);
                }
                ECFieldElement square4 = add5.square();
                ECFieldElement multiply4 = isOne2 ? add5 : add5.multiply(square3);
                ECFieldElement b = curve.getB();
                if (b.bitLength() < (curve.getFieldSize() >> 1)) {
                    ECFieldElement square5 = eCFieldElement5.add(eCFieldElement2).square();
                    ECFieldElement add6 = square5.add(add5).add(square3).multiply(square5).add(b.isOne() ? multiply3.add(square3).square() : multiply3.squarePlusProduct(b, square3.square())).add(square4);
                    if (a.isZero()) {
                        eCFieldElement = add6.add(multiply4);
                    } else {
                        eCFieldElement = add6;
                        if (!a.isOne()) {
                            eCFieldElement = add6.add(a.addOne().multiply(multiply4));
                        }
                    }
                } else {
                    if (!isOne2) {
                        eCFieldElement2 = eCFieldElement2.multiply(eCFieldElement6);
                    }
                    eCFieldElement = eCFieldElement2.squarePlusProduct(add5, multiply2).add(square4).add(multiply4);
                }
                return new F2m(curve, square4, eCFieldElement, new ECFieldElement[]{multiply4}, this.withCompression);
            }
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint twicePlus(ECPoint eCPoint) {
            if (isInfinity()) {
                return eCPoint;
            }
            if (eCPoint.isInfinity()) {
                return twice();
            }
            ECCurve curve = getCurve();
            ECFieldElement eCFieldElement = this.f1551x;
            if (eCFieldElement.isZero()) {
                return eCPoint;
            }
            if (curve.getCoordinateSystem() != 6) {
                return twice().add(eCPoint);
            }
            ECFieldElement eCFieldElement2 = eCPoint.f1551x;
            ECFieldElement eCFieldElement3 = eCPoint.f1553zs[0];
            if (eCFieldElement2.isZero() || !eCFieldElement3.isOne()) {
                return twice().add(eCPoint);
            }
            ECFieldElement eCFieldElement4 = this.f1552y;
            ECFieldElement eCFieldElement5 = this.f1553zs[0];
            ECFieldElement eCFieldElement6 = eCPoint.f1552y;
            ECFieldElement square = eCFieldElement.square();
            ECFieldElement square2 = eCFieldElement4.square();
            ECFieldElement square3 = eCFieldElement5.square();
            ECFieldElement add = curve.getA().multiply(square3).add(square2).add(eCFieldElement4.multiply(eCFieldElement5));
            ECFieldElement addOne = eCFieldElement6.addOne();
            ECFieldElement multiplyPlusProduct = curve.getA().add(addOne).multiply(square3).add(square2).multiplyPlusProduct(add, square, square3);
            ECFieldElement multiply = eCFieldElement2.multiply(square3);
            ECFieldElement square4 = multiply.add(add).square();
            if (square4.isZero()) {
                return multiplyPlusProduct.isZero() ? eCPoint.twice() : curve.getInfinity();
            }
            if (multiplyPlusProduct.isZero()) {
                return new F2m(curve, multiplyPlusProduct, curve.getB().sqrt(), this.withCompression);
            }
            ECFieldElement multiply2 = multiplyPlusProduct.square().multiply(multiply);
            ECFieldElement multiply3 = multiplyPlusProduct.multiply(square4).multiply(square3);
            return new F2m(curve, multiply2, multiplyPlusProduct.add(square4).square().multiplyPlusProduct(add, addOne, multiply3), new ECFieldElement[]{multiply3}, this.withCompression);
        }
    }

    /* renamed from: org.spongycastle.math.ec.ECPoint$Fp */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECPoint$Fp.class */
    public static class C2403Fp extends AbstractFp {
        public C2403Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            this(eCCurve, eCFieldElement, eCFieldElement2, false);
        }

        public C2403Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
            if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
                throw new IllegalArgumentException("Exactly one of the field elements is null");
            }
            this.withCompression = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C2403Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
            this.withCompression = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x03a5  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0382  */
        @Override // org.spongycastle.math.p032ec.ECPoint
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.spongycastle.math.p032ec.ECPoint add(org.spongycastle.math.p032ec.ECPoint r11) {
            /*
                Method dump skipped, instructions count: 962
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.ECPoint.C2403Fp.add(org.spongycastle.math.ec.ECPoint):org.spongycastle.math.ec.ECPoint");
        }

        protected ECFieldElement calculateJacobianModifiedW(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            ECFieldElement a = getCurve().getA();
            if (a.isZero() || eCFieldElement.isOne()) {
                return a;
            }
            ECFieldElement eCFieldElement3 = eCFieldElement2;
            if (eCFieldElement2 == null) {
                eCFieldElement3 = eCFieldElement.square();
            }
            ECFieldElement square = eCFieldElement3.square();
            ECFieldElement negate = a.negate();
            return negate.bitLength() < a.bitLength() ? square.multiply(negate).negate() : square.multiply(a);
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        protected ECPoint detach() {
            return new C2403Fp(null, getAffineXCoord(), getAffineYCoord());
        }

        protected ECFieldElement doubleProductFromSquares(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3, ECFieldElement eCFieldElement4) {
            return eCFieldElement.add(eCFieldElement2).square().subtract(eCFieldElement3).subtract(eCFieldElement4);
        }

        protected ECFieldElement eight(ECFieldElement eCFieldElement) {
            return four(two(eCFieldElement));
        }

        protected ECFieldElement four(ECFieldElement eCFieldElement) {
            return two(two(eCFieldElement));
        }

        protected ECFieldElement getJacobianModifiedW() {
            ECFieldElement eCFieldElement = this.f1553zs[1];
            ECFieldElement eCFieldElement2 = eCFieldElement;
            if (eCFieldElement == null) {
                ECFieldElement[] eCFieldElementArr = this.f1553zs;
                eCFieldElement2 = calculateJacobianModifiedW(this.f1553zs[0], null);
                eCFieldElementArr[1] = eCFieldElement2;
            }
            return eCFieldElement2;
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECFieldElement getZCoord(int i) {
            return (i == 1 && 4 == getCurveCoordinateSystem()) ? getJacobianModifiedW() : super.getZCoord(i);
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint negate() {
            if (isInfinity()) {
                return this;
            }
            ECCurve curve = getCurve();
            return curve.getCoordinateSystem() != 0 ? new C2403Fp(curve, this.f1551x, this.f1552y.negate(), this.f1553zs, this.withCompression) : new C2403Fp(curve, this.f1551x, this.f1552y.negate(), this.withCompression);
        }

        protected ECFieldElement three(ECFieldElement eCFieldElement) {
            return two(eCFieldElement).add(eCFieldElement);
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint threeTimes() {
            if (isInfinity()) {
                return this;
            }
            ECFieldElement eCFieldElement = this.f1552y;
            if (eCFieldElement.isZero()) {
                return this;
            }
            ECCurve curve = getCurve();
            int coordinateSystem = curve.getCoordinateSystem();
            if (coordinateSystem != 0) {
                return coordinateSystem != 4 ? twice().add(this) : twiceJacobianModified(false).add(this);
            }
            ECFieldElement eCFieldElement2 = this.f1551x;
            ECFieldElement two = two(eCFieldElement);
            ECFieldElement square = two.square();
            ECFieldElement add = three(eCFieldElement2.square()).add(getCurve().getA());
            ECFieldElement subtract = three(eCFieldElement2).multiply(square).subtract(add.square());
            if (subtract.isZero()) {
                return getCurve().getInfinity();
            }
            ECFieldElement invert = subtract.multiply(two).invert();
            ECFieldElement multiply = subtract.multiply(invert).multiply(add);
            ECFieldElement subtract2 = square.square().multiply(invert).subtract(multiply);
            ECFieldElement add2 = subtract2.subtract(multiply).multiply(multiply.add(subtract2)).add(eCFieldElement2);
            return new C2403Fp(curve, add2, eCFieldElement2.subtract(add2).multiply(subtract2).subtract(eCFieldElement), this.withCompression);
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint timesPow2(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("'e' cannot be negative");
            } else if (i == 0 || isInfinity()) {
                return this;
            } else {
                if (i == 1) {
                    return twice();
                }
                ECCurve curve = getCurve();
                ECFieldElement eCFieldElement = this.f1552y;
                if (eCFieldElement.isZero()) {
                    return curve.getInfinity();
                }
                int coordinateSystem = curve.getCoordinateSystem();
                ECFieldElement a = curve.getA();
                ECFieldElement eCFieldElement2 = this.f1551x;
                ECFieldElement fromBigInteger = this.f1553zs.length < 1 ? curve.fromBigInteger(ECConstants.ONE) : this.f1553zs[0];
                ECFieldElement eCFieldElement3 = eCFieldElement;
                ECFieldElement eCFieldElement4 = a;
                ECFieldElement eCFieldElement5 = eCFieldElement2;
                if (!fromBigInteger.isOne()) {
                    if (coordinateSystem != 4) {
                        eCFieldElement3 = eCFieldElement;
                        eCFieldElement4 = a;
                        eCFieldElement5 = eCFieldElement2;
                        switch (coordinateSystem) {
                            case 0:
                                break;
                            case 1:
                                ECFieldElement square = fromBigInteger.square();
                                eCFieldElement5 = eCFieldElement2.multiply(fromBigInteger);
                                eCFieldElement3 = eCFieldElement.multiply(square);
                                eCFieldElement4 = calculateJacobianModifiedW(fromBigInteger, square);
                                break;
                            case 2:
                                eCFieldElement4 = calculateJacobianModifiedW(fromBigInteger, null);
                                eCFieldElement3 = eCFieldElement;
                                eCFieldElement5 = eCFieldElement2;
                                break;
                            default:
                                throw new IllegalStateException("unsupported coordinate system");
                        }
                    } else {
                        eCFieldElement4 = getJacobianModifiedW();
                        eCFieldElement5 = eCFieldElement2;
                        eCFieldElement3 = eCFieldElement;
                    }
                }
                ECFieldElement eCFieldElement6 = fromBigInteger;
                for (int i2 = 0; i2 < i; i2++) {
                    if (eCFieldElement3.isZero()) {
                        return curve.getInfinity();
                    }
                    ECFieldElement three = three(eCFieldElement5.square());
                    ECFieldElement two = two(eCFieldElement3);
                    ECFieldElement multiply = two.multiply(eCFieldElement3);
                    ECFieldElement two2 = two(eCFieldElement5.multiply(multiply));
                    ECFieldElement two3 = two(multiply.square());
                    eCFieldElement4 = eCFieldElement4;
                    ECFieldElement eCFieldElement7 = three;
                    if (!eCFieldElement4.isZero()) {
                        eCFieldElement7 = three.add(eCFieldElement4);
                        eCFieldElement4 = two(two3.multiply(eCFieldElement4));
                    }
                    eCFieldElement5 = eCFieldElement7.square().subtract(two(two2));
                    eCFieldElement3 = eCFieldElement7.multiply(two2.subtract(eCFieldElement5)).subtract(two3);
                    eCFieldElement6 = eCFieldElement6.isOne() ? two : two.multiply(eCFieldElement6);
                }
                if (coordinateSystem == 4) {
                    return new C2403Fp(curve, eCFieldElement5, eCFieldElement3, new ECFieldElement[]{eCFieldElement6, eCFieldElement4}, this.withCompression);
                }
                switch (coordinateSystem) {
                    case 0:
                        ECFieldElement invert = eCFieldElement6.invert();
                        ECFieldElement square2 = invert.square();
                        return new C2403Fp(curve, eCFieldElement5.multiply(square2), eCFieldElement3.multiply(square2.multiply(invert)), this.withCompression);
                    case 1:
                        return new C2403Fp(curve, eCFieldElement5.multiply(eCFieldElement6), eCFieldElement3, new ECFieldElement[]{eCFieldElement6.multiply(eCFieldElement6.square())}, this.withCompression);
                    case 2:
                        return new C2403Fp(curve, eCFieldElement5, eCFieldElement3, new ECFieldElement[]{eCFieldElement6}, this.withCompression);
                    default:
                        throw new IllegalStateException("unsupported coordinate system");
                }
            }
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint twice() {
            ECFieldElement eCFieldElement;
            ECFieldElement eCFieldElement2;
            if (isInfinity()) {
                return this;
            }
            ECCurve curve = getCurve();
            ECFieldElement eCFieldElement3 = this.f1552y;
            if (eCFieldElement3.isZero()) {
                return curve.getInfinity();
            }
            int coordinateSystem = curve.getCoordinateSystem();
            ECFieldElement eCFieldElement4 = this.f1551x;
            if (coordinateSystem == 4) {
                return twiceJacobianModified(true);
            }
            switch (coordinateSystem) {
                case 0:
                    ECFieldElement divide = three(eCFieldElement4.square()).add(getCurve().getA()).divide(two(eCFieldElement3));
                    ECFieldElement subtract = divide.square().subtract(two(eCFieldElement4));
                    return new C2403Fp(curve, subtract, divide.multiply(eCFieldElement4.subtract(subtract)).subtract(eCFieldElement3), this.withCompression);
                case 1:
                    ECFieldElement eCFieldElement5 = this.f1553zs[0];
                    boolean isOne = eCFieldElement5.isOne();
                    ECFieldElement a = curve.getA();
                    ECFieldElement eCFieldElement6 = a;
                    if (!a.isZero()) {
                        eCFieldElement6 = a;
                        if (!isOne) {
                            eCFieldElement6 = a.multiply(eCFieldElement5.square());
                        }
                    }
                    ECFieldElement add = eCFieldElement6.add(three(eCFieldElement4.square()));
                    ECFieldElement multiply = isOne ? eCFieldElement3 : eCFieldElement3.multiply(eCFieldElement5);
                    ECFieldElement square = isOne ? eCFieldElement3.square() : multiply.multiply(eCFieldElement3);
                    ECFieldElement four = four(eCFieldElement4.multiply(square));
                    ECFieldElement subtract2 = add.square().subtract(two(four));
                    ECFieldElement two = two(multiply);
                    ECFieldElement multiply2 = subtract2.multiply(two);
                    ECFieldElement two2 = two(square);
                    return new C2403Fp(curve, multiply2, four.subtract(subtract2).multiply(add).subtract(two(two2.square())), new ECFieldElement[]{two(isOne ? two(two2) : two.square()).multiply(multiply)}, this.withCompression);
                case 2:
                    ECFieldElement eCFieldElement7 = this.f1553zs[0];
                    boolean isOne2 = eCFieldElement7.isOne();
                    ECFieldElement square2 = eCFieldElement3.square();
                    ECFieldElement square3 = square2.square();
                    ECFieldElement a2 = curve.getA();
                    ECFieldElement negate = a2.negate();
                    if (negate.toBigInteger().equals(BigInteger.valueOf(3L))) {
                        ECFieldElement square4 = isOne2 ? eCFieldElement7 : eCFieldElement7.square();
                        eCFieldElement = three(eCFieldElement4.add(square4).multiply(eCFieldElement4.subtract(square4)));
                        eCFieldElement2 = four(square2.multiply(eCFieldElement4));
                    } else {
                        eCFieldElement = three(eCFieldElement4.square());
                        if (isOne2) {
                            eCFieldElement = eCFieldElement.add(a2);
                        } else if (!a2.isZero()) {
                            ECFieldElement square5 = eCFieldElement7.square().square();
                            eCFieldElement = negate.bitLength() < a2.bitLength() ? eCFieldElement.subtract(square5.multiply(negate)) : eCFieldElement.add(square5.multiply(a2));
                        }
                        eCFieldElement2 = four(eCFieldElement4.multiply(square2));
                    }
                    ECFieldElement subtract3 = eCFieldElement.square().subtract(two(eCFieldElement2));
                    ECFieldElement subtract4 = eCFieldElement2.subtract(subtract3).multiply(eCFieldElement).subtract(eight(square3));
                    ECFieldElement two3 = two(eCFieldElement3);
                    ECFieldElement eCFieldElement8 = two3;
                    if (!isOne2) {
                        eCFieldElement8 = two3.multiply(eCFieldElement7);
                    }
                    return new C2403Fp(curve, subtract3, subtract4, new ECFieldElement[]{eCFieldElement8}, this.withCompression);
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
        }

        protected C2403Fp twiceJacobianModified(boolean z) {
            ECFieldElement eCFieldElement = this.f1551x;
            ECFieldElement eCFieldElement2 = this.f1552y;
            ECFieldElement eCFieldElement3 = this.f1553zs[0];
            ECFieldElement jacobianModifiedW = getJacobianModifiedW();
            ECFieldElement add = three(eCFieldElement.square()).add(jacobianModifiedW);
            ECFieldElement two = two(eCFieldElement2);
            ECFieldElement multiply = two.multiply(eCFieldElement2);
            ECFieldElement two2 = two(eCFieldElement.multiply(multiply));
            ECFieldElement subtract = add.square().subtract(two(two2));
            ECFieldElement two3 = two(multiply.square());
            ECFieldElement subtract2 = add.multiply(two2.subtract(subtract)).subtract(two3);
            ECFieldElement two4 = z ? two(two3.multiply(jacobianModifiedW)) : null;
            if (!eCFieldElement3.isOne()) {
                two = two.multiply(eCFieldElement3);
            }
            return new C2403Fp(getCurve(), subtract, subtract2, new ECFieldElement[]{two, two4}, this.withCompression);
        }

        @Override // org.spongycastle.math.p032ec.ECPoint
        public ECPoint twicePlus(ECPoint eCPoint) {
            if (this == eCPoint) {
                return threeTimes();
            }
            if (isInfinity()) {
                return eCPoint;
            }
            if (eCPoint.isInfinity()) {
                return twice();
            }
            ECFieldElement eCFieldElement = this.f1552y;
            if (eCFieldElement.isZero()) {
                return eCPoint;
            }
            ECCurve curve = getCurve();
            int coordinateSystem = curve.getCoordinateSystem();
            if (coordinateSystem != 0) {
                return coordinateSystem != 4 ? twice().add(eCPoint) : twiceJacobianModified(false).add(eCPoint);
            }
            ECFieldElement eCFieldElement2 = this.f1551x;
            ECFieldElement eCFieldElement3 = eCPoint.f1551x;
            ECFieldElement eCFieldElement4 = eCPoint.f1552y;
            ECFieldElement subtract = eCFieldElement3.subtract(eCFieldElement2);
            ECFieldElement subtract2 = eCFieldElement4.subtract(eCFieldElement);
            if (subtract.isZero()) {
                return subtract2.isZero() ? threeTimes() : this;
            }
            ECFieldElement square = subtract.square();
            ECFieldElement subtract3 = square.multiply(two(eCFieldElement2).add(eCFieldElement3)).subtract(subtract2.square());
            if (subtract3.isZero()) {
                return curve.getInfinity();
            }
            ECFieldElement invert = subtract3.multiply(subtract).invert();
            ECFieldElement multiply = subtract3.multiply(invert).multiply(subtract2);
            ECFieldElement subtract4 = two(eCFieldElement).multiply(square).multiply(subtract).multiply(invert).subtract(multiply);
            ECFieldElement add = subtract4.subtract(multiply).multiply(multiply.add(subtract4)).add(eCFieldElement3);
            return new C2403Fp(curve, add, eCFieldElement2.subtract(add).multiply(subtract4).subtract(eCFieldElement), this.withCompression);
        }

        protected ECFieldElement two(ECFieldElement eCFieldElement) {
            return eCFieldElement.add(eCFieldElement);
        }
    }

    protected ECPoint(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, getInitialZCoords(eCCurve));
    }

    protected ECPoint(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        this.preCompTable = null;
        this.curve = eCCurve;
        this.f1551x = eCFieldElement;
        this.f1552y = eCFieldElement2;
        this.f1553zs = eCFieldElementArr;
    }

    protected static ECFieldElement[] getInitialZCoords(ECCurve eCCurve) {
        int coordinateSystem = eCCurve == null ? 0 : eCCurve.getCoordinateSystem();
        if (coordinateSystem == 0 || coordinateSystem == 5) {
            return EMPTY_ZS;
        }
        ECFieldElement fromBigInteger = eCCurve.fromBigInteger(ECConstants.ONE);
        if (coordinateSystem != 6) {
            switch (coordinateSystem) {
                case 1:
                case 2:
                    break;
                case 3:
                    return new ECFieldElement[]{fromBigInteger, fromBigInteger, fromBigInteger};
                case 4:
                    return new ECFieldElement[]{fromBigInteger, eCCurve.getA()};
                default:
                    throw new IllegalArgumentException("unknown coordinate system");
            }
        }
        return new ECFieldElement[]{fromBigInteger};
    }

    public abstract ECPoint add(ECPoint eCPoint);

    protected void checkNormalized() {
        if (!isNormalized()) {
            throw new IllegalStateException("point not in normal form");
        }
    }

    protected ECPoint createScaledPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return getCurve().createRawPoint(getRawXCoord().multiply(eCFieldElement), getRawYCoord().multiply(eCFieldElement2), this.withCompression);
    }

    protected abstract ECPoint detach();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ECPoint)) {
            return false;
        }
        return equals((ECPoint) obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f7, code lost:
        if (r0.equals(r0) != false) goto L_0x00fa;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(org.spongycastle.math.p032ec.ECPoint r6) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.ECPoint.equals(org.spongycastle.math.ec.ECPoint):boolean");
    }

    public ECFieldElement getAffineXCoord() {
        checkNormalized();
        return getXCoord();
    }

    public ECFieldElement getAffineYCoord() {
        checkNormalized();
        return getYCoord();
    }

    protected abstract boolean getCompressionYTilde();

    public ECCurve getCurve() {
        return this.curve;
    }

    protected int getCurveCoordinateSystem() {
        return this.curve == null ? 0 : this.curve.getCoordinateSystem();
    }

    public final ECPoint getDetachedPoint() {
        return normalize().detach();
    }

    public byte[] getEncoded() {
        return getEncoded(this.withCompression);
    }

    public byte[] getEncoded(boolean z) {
        if (isInfinity()) {
            return new byte[1];
        }
        ECPoint normalize = normalize();
        byte[] encoded = normalize.getXCoord().getEncoded();
        if (z) {
            byte[] bArr = new byte[encoded.length + 1];
            bArr[0] = (byte) (normalize.getCompressionYTilde() ? 3 : 2);
            System.arraycopy(encoded, 0, bArr, 1, encoded.length);
            return bArr;
        }
        byte[] encoded2 = normalize.getYCoord().getEncoded();
        byte[] bArr2 = new byte[encoded.length + encoded2.length + 1];
        bArr2[0] = (byte) 4;
        System.arraycopy(encoded, 0, bArr2, 1, encoded.length);
        System.arraycopy(encoded2, 0, bArr2, encoded.length + 1, encoded2.length);
        return bArr2;
    }

    public final ECFieldElement getRawXCoord() {
        return this.f1551x;
    }

    public final ECFieldElement getRawYCoord() {
        return this.f1552y;
    }

    protected final ECFieldElement[] getRawZCoords() {
        return this.f1553zs;
    }

    public ECFieldElement getX() {
        return normalize().getXCoord();
    }

    public ECFieldElement getXCoord() {
        return this.f1551x;
    }

    public ECFieldElement getY() {
        return normalize().getYCoord();
    }

    public ECFieldElement getYCoord() {
        return this.f1552y;
    }

    public ECFieldElement getZCoord(int i) {
        return (i < 0 || i >= this.f1553zs.length) ? null : this.f1553zs[i];
    }

    public ECFieldElement[] getZCoords() {
        int length = this.f1553zs.length;
        if (length == 0) {
            return EMPTY_ZS;
        }
        ECFieldElement[] eCFieldElementArr = new ECFieldElement[length];
        System.arraycopy(this.f1553zs, 0, eCFieldElementArr, 0, length);
        return eCFieldElementArr;
    }

    public int hashCode() {
        ECCurve curve = getCurve();
        int hashCode = curve == null ? 0 : curve.hashCode() ^ (-1);
        int i = hashCode;
        if (!isInfinity()) {
            ECPoint normalize = normalize();
            i = (hashCode ^ (normalize.getXCoord().hashCode() * 17)) ^ (normalize.getYCoord().hashCode() * InputDeviceCompat.SOURCE_KEYBOARD);
        }
        return i;
    }

    public boolean isCompressed() {
        return this.withCompression;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (r3.f1553zs[0].isZero() != false) goto L_0x002a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isInfinity() {
        /*
            r3 = this;
            r0 = r3
            org.spongycastle.math.ec.ECFieldElement r0 = r0.f1551x
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002a
            r0 = r3
            org.spongycastle.math.ec.ECFieldElement r0 = r0.f1552y
            if (r0 == 0) goto L_0x002a
            r0 = r5
            r6 = r0
            r0 = r3
            org.spongycastle.math.ec.ECFieldElement[] r0 = r0.f1553zs
            int r0 = r0.length
            if (r0 <= 0) goto L_0x002c
            r0 = r5
            r6 = r0
            r0 = r3
            org.spongycastle.math.ec.ECFieldElement[] r0 = r0.f1553zs
            r1 = 0
            r0 = r0[r1]
            boolean r0 = r0.isZero()
            if (r0 == 0) goto L_0x002c
        L_0x002a:
            r0 = 1
            r6 = r0
        L_0x002c:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.ECPoint.isInfinity():boolean");
    }

    public boolean isNormalized() {
        int curveCoordinateSystem = getCurveCoordinateSystem();
        boolean z = false;
        if (curveCoordinateSystem == 0 || curveCoordinateSystem == 5 || isInfinity() || this.f1553zs[0].isOne()) {
            z = true;
        }
        return z;
    }

    public boolean isValid() {
        if (!isInfinity() && getCurve() != null) {
            return satisfiesCurveEquation() && satisfiesCofactor();
        }
        return true;
    }

    public ECPoint multiply(BigInteger bigInteger) {
        return getCurve().getMultiplier().multiply(this, bigInteger);
    }

    public abstract ECPoint negate();

    public ECPoint normalize() {
        if (isInfinity()) {
            return this;
        }
        int curveCoordinateSystem = getCurveCoordinateSystem();
        if (curveCoordinateSystem == 0 || curveCoordinateSystem == 5) {
            return this;
        }
        ECFieldElement zCoord = getZCoord(0);
        return zCoord.isOne() ? this : normalize(zCoord.invert());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ECPoint normalize(ECFieldElement eCFieldElement) {
        int curveCoordinateSystem = getCurveCoordinateSystem();
        if (curveCoordinateSystem != 6) {
            switch (curveCoordinateSystem) {
                case 1:
                    break;
                case 2:
                case 3:
                case 4:
                    ECFieldElement square = eCFieldElement.square();
                    return createScaledPoint(square, square.multiply(eCFieldElement));
                default:
                    throw new IllegalStateException("not a projective coordinate system");
            }
        }
        return createScaledPoint(eCFieldElement, eCFieldElement);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean satisfiesCofactor() {
        BigInteger cofactor = this.curve.getCofactor();
        return cofactor == null || cofactor.equals(ECConstants.ONE) || !ECAlgorithms.referenceMultiply(this, cofactor).isInfinity();
    }

    protected abstract boolean satisfiesCurveEquation();

    public ECPoint scaleX(ECFieldElement eCFieldElement) {
        return isInfinity() ? this : getCurve().createRawPoint(getRawXCoord().multiply(eCFieldElement), getRawYCoord(), getRawZCoords(), this.withCompression);
    }

    public ECPoint scaleY(ECFieldElement eCFieldElement) {
        return isInfinity() ? this : getCurve().createRawPoint(getRawXCoord(), getRawYCoord().multiply(eCFieldElement), getRawZCoords(), this.withCompression);
    }

    public abstract ECPoint subtract(ECPoint eCPoint);

    public ECPoint threeTimes() {
        return twicePlus(this);
    }

    public ECPoint timesPow2(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("'e' cannot be negative");
        }
        ECPoint eCPoint = this;
        while (true) {
            i--;
            if (i < 0) {
                return eCPoint;
            }
            eCPoint = eCPoint.twice();
        }
    }

    public String toString() {
        if (isInfinity()) {
            return "INF";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        stringBuffer.append(getRawXCoord());
        stringBuffer.append(',');
        stringBuffer.append(getRawYCoord());
        for (int i = 0; i < this.f1553zs.length; i++) {
            stringBuffer.append(',');
            stringBuffer.append(this.f1553zs[i]);
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public abstract ECPoint twice();

    public ECPoint twicePlus(ECPoint eCPoint) {
        return twice().add(eCPoint);
    }
}
