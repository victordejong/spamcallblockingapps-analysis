package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat128;
import org.spongycastle.util.Arrays;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP128R1FieldElement */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP128R1FieldElement.class */
public class SecP128R1FieldElement extends ECFieldElement {

    /* renamed from: Q */
    public static final BigInteger f1570Q = SecP128R1Curve.f1567q;

    /* renamed from: x */
    protected int[] f1571x;

    public SecP128R1FieldElement() {
        this.f1571x = Nat128.create();
    }

    public SecP128R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1570Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP128R1FieldElement");
        }
        this.f1571x = SecP128R1Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecP128R1FieldElement(int[] iArr) {
        this.f1571x = iArr;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] create = Nat128.create();
        SecP128R1Field.add(this.f1571x, ((SecP128R1FieldElement) eCFieldElement).f1571x, create);
        return new SecP128R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] create = Nat128.create();
        SecP128R1Field.addOne(this.f1571x, create);
        return new SecP128R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] create = Nat128.create();
        Mod.invert(SecP128R1Field.f1569P, ((SecP128R1FieldElement) eCFieldElement).f1571x, create);
        SecP128R1Field.multiply(create, this.f1571x, create);
        return new SecP128R1FieldElement(create);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP128R1FieldElement)) {
            return false;
        }
        return Nat128.m103eq(this.f1571x, ((SecP128R1FieldElement) obj).f1571x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public String getFieldName() {
        return "SecP128R1Field";
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public int getFieldSize() {
        return f1570Q.bitLength();
    }

    public int hashCode() {
        return f1570Q.hashCode() ^ Arrays.hashCode(this.f1571x, 0, 4);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement invert() {
        int[] create = Nat128.create();
        Mod.invert(SecP128R1Field.f1569P, this.f1571x, create);
        return new SecP128R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isOne() {
        return Nat128.isOne(this.f1571x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isZero() {
        return Nat128.isZero(this.f1571x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] create = Nat128.create();
        SecP128R1Field.multiply(this.f1571x, ((SecP128R1FieldElement) eCFieldElement).f1571x, create);
        return new SecP128R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement negate() {
        int[] create = Nat128.create();
        SecP128R1Field.negate(this.f1571x, create);
        return new SecP128R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f1571x;
        if (Nat128.isZero(iArr) || Nat128.isOne(iArr)) {
            return this;
        }
        int[] create = Nat128.create();
        SecP128R1Field.square(iArr, create);
        SecP128R1Field.multiply(create, iArr, create);
        int[] create2 = Nat128.create();
        SecP128R1Field.squareN(create, 2, create2);
        SecP128R1Field.multiply(create2, create, create2);
        int[] create3 = Nat128.create();
        SecP128R1Field.squareN(create2, 4, create3);
        SecP128R1Field.multiply(create3, create2, create3);
        SecP128R1Field.squareN(create3, 2, create2);
        SecP128R1Field.multiply(create2, create, create2);
        SecP128R1Field.squareN(create2, 10, create);
        SecP128R1Field.multiply(create, create2, create);
        SecP128R1Field.squareN(create, 10, create3);
        SecP128R1Field.multiply(create3, create2, create3);
        SecP128R1Field.square(create3, create2);
        SecP128R1Field.multiply(create2, iArr, create2);
        SecP128R1Field.squareN(create2, 95, create2);
        SecP128R1Field.square(create2, create3);
        return Nat128.m103eq(iArr, create3) ? new SecP128R1FieldElement(create2) : null;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement square() {
        int[] create = Nat128.create();
        SecP128R1Field.square(this.f1571x, create);
        return new SecP128R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] create = Nat128.create();
        SecP128R1Field.subtract(this.f1571x, ((SecP128R1FieldElement) eCFieldElement).f1571x, create);
        return new SecP128R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean testBitZero() {
        boolean z = false;
        if (Nat128.getBit(this.f1571x, 0) == 1) {
            z = true;
        }
        return z;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat128.toBigInteger(this.f1571x);
    }
}
