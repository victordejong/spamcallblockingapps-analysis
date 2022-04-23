package org.spongycastle.math.p032ec.custom.sec;

import com.zendesk.service.HttpConstants;
import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat448;
import org.spongycastle.util.Arrays;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecT409FieldElement */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecT409FieldElement.class */
public class SecT409FieldElement extends ECFieldElement {

    /* renamed from: x */
    protected long[] f1633x;

    public SecT409FieldElement() {
        this.f1633x = Nat448.create64();
    }

    public SecT409FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 409) {
            throw new IllegalArgumentException("x value invalid for SecT409FieldElement");
        }
        this.f1633x = SecT409Field.fromBigInteger(bigInteger);
    }

    protected SecT409FieldElement(long[] jArr) {
        this.f1633x = jArr;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] create64 = Nat448.create64();
        SecT409Field.add(this.f1633x, ((SecT409FieldElement) eCFieldElement).f1633x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] create64 = Nat448.create64();
        SecT409Field.addOne(this.f1633x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecT409FieldElement)) {
            return false;
        }
        return Nat448.eq64(this.f1633x, ((SecT409FieldElement) obj).f1633x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public String getFieldName() {
        return "SecT409Field";
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public int getFieldSize() {
        return HttpConstants.HTTP_CONFLICT;
    }

    public int getK1() {
        return 87;
    }

    public int getK2() {
        return 0;
    }

    public int getK3() {
        return 0;
    }

    public int getM() {
        return HttpConstants.HTTP_CONFLICT;
    }

    public int getRepresentation() {
        return 2;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1633x, 0, 7) ^ 4090087;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement invert() {
        long[] create64 = Nat448.create64();
        SecT409Field.invert(this.f1633x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isOne() {
        return Nat448.isOne64(this.f1633x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isZero() {
        return Nat448.isZero64(this.f1633x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] create64 = Nat448.create64();
        SecT409Field.multiply(this.f1633x, ((SecT409FieldElement) eCFieldElement).f1633x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return multiplyPlusProduct(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f1633x;
        long[] jArr2 = ((SecT409FieldElement) eCFieldElement).f1633x;
        long[] jArr3 = ((SecT409FieldElement) eCFieldElement2).f1633x;
        long[] jArr4 = ((SecT409FieldElement) eCFieldElement3).f1633x;
        long[] create64 = Nat.create64(13);
        SecT409Field.multiplyAddToExt(jArr, jArr2, create64);
        SecT409Field.multiplyAddToExt(jArr3, jArr4, create64);
        long[] create642 = Nat448.create64();
        SecT409Field.reduce(create64, create642);
        return new SecT409FieldElement(create642);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] create64 = Nat448.create64();
        SecT409Field.sqrt(this.f1633x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement square() {
        long[] create64 = Nat448.create64();
        SecT409Field.square(this.f1633x, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return squarePlusProduct(eCFieldElement, eCFieldElement2);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f1633x;
        long[] jArr2 = ((SecT409FieldElement) eCFieldElement).f1633x;
        long[] jArr3 = ((SecT409FieldElement) eCFieldElement2).f1633x;
        long[] create64 = Nat.create64(13);
        SecT409Field.squareAddToExt(jArr, create64);
        SecT409Field.multiplyAddToExt(jArr2, jArr3, create64);
        long[] create642 = Nat448.create64();
        SecT409Field.reduce(create64, create642);
        return new SecT409FieldElement(create642);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement squarePow(int i) {
        if (i < 1) {
            return this;
        }
        long[] create64 = Nat448.create64();
        SecT409Field.squareN(this.f1633x, i, create64);
        return new SecT409FieldElement(create64);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        return add(eCFieldElement);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean testBitZero() {
        boolean z = false;
        if ((this.f1633x[0] & 1) != 0) {
            z = true;
        }
        return z;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat448.toBigInteger64(this.f1633x);
    }
}
