package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;
import org.spongycastle.util.Arrays;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP224R1FieldElement */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP224R1FieldElement.class */
public class SecP224R1FieldElement extends ECFieldElement {

    /* renamed from: Q */
    public static final BigInteger f1604Q = SecP224R1Curve.f1600q;

    /* renamed from: x */
    protected int[] f1605x;

    public SecP224R1FieldElement() {
        this.f1605x = Nat224.create();
    }

    public SecP224R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1604Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224R1FieldElement");
        }
        this.f1605x = SecP224R1Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecP224R1FieldElement(int[] iArr) {
        this.f1605x = iArr;
    }

    /* renamed from: RM */
    private static void m107RM(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7) {
        SecP224R1Field.multiply(iArr5, iArr3, iArr7);
        SecP224R1Field.multiply(iArr7, iArr, iArr7);
        SecP224R1Field.multiply(iArr4, iArr2, iArr6);
        SecP224R1Field.add(iArr6, iArr7, iArr6);
        SecP224R1Field.multiply(iArr4, iArr3, iArr7);
        Nat224.copy(iArr6, iArr4);
        SecP224R1Field.multiply(iArr5, iArr2, iArr5);
        SecP224R1Field.add(iArr5, iArr7, iArr5);
        SecP224R1Field.square(iArr5, iArr6);
        SecP224R1Field.multiply(iArr6, iArr, iArr6);
    }

    /* renamed from: RP */
    private static void m106RP(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        Nat224.copy(iArr, iArr4);
        int[] create = Nat224.create();
        int[] create2 = Nat224.create();
        for (int i = 0; i < 7; i++) {
            Nat224.copy(iArr2, create);
            Nat224.copy(iArr3, create2);
            int i2 = 1 << i;
            while (true) {
                i2--;
                if (i2 >= 0) {
                    m105RS(iArr2, iArr3, iArr4, iArr5);
                }
            }
            m107RM(iArr, create, create2, iArr2, iArr3, iArr4, iArr5);
        }
    }

    /* renamed from: RS */
    private static void m105RS(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        SecP224R1Field.multiply(iArr2, iArr, iArr2);
        SecP224R1Field.twice(iArr2, iArr2);
        SecP224R1Field.square(iArr, iArr4);
        SecP224R1Field.add(iArr3, iArr4, iArr);
        SecP224R1Field.multiply(iArr3, iArr4, iArr3);
        SecP224R1Field.reduce32(Nat.shiftUpBits(7, iArr3, 2, 0), iArr3);
    }

    private static boolean isSquare(int[] iArr) {
        int[] create = Nat224.create();
        int[] create2 = Nat224.create();
        Nat224.copy(iArr, create);
        for (int i = 0; i < 7; i++) {
            Nat224.copy(create, create2);
            SecP224R1Field.squareN(create, 1 << i, create);
            SecP224R1Field.multiply(create, create2, create);
        }
        SecP224R1Field.squareN(create, 95, create);
        return Nat224.isOne(create);
    }

    private static boolean trySqrt(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] create = Nat224.create();
        Nat224.copy(iArr2, create);
        int[] create2 = Nat224.create();
        create2[0] = 1;
        int[] create3 = Nat224.create();
        m106RP(iArr, create, create2, create3, iArr3);
        int[] create4 = Nat224.create();
        int[] create5 = Nat224.create();
        for (int i = 1; i < 96; i++) {
            Nat224.copy(create, create4);
            Nat224.copy(create2, create5);
            m105RS(create, create2, create3, iArr3);
            if (Nat224.isZero(create)) {
                Mod.invert(SecP224R1Field.f1602P, create5, iArr3);
                SecP224R1Field.multiply(iArr3, create4, iArr3);
                return true;
            }
        }
        return false;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] create = Nat224.create();
        SecP224R1Field.add(this.f1605x, ((SecP224R1FieldElement) eCFieldElement).f1605x, create);
        return new SecP224R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] create = Nat224.create();
        SecP224R1Field.addOne(this.f1605x, create);
        return new SecP224R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] create = Nat224.create();
        Mod.invert(SecP224R1Field.f1602P, ((SecP224R1FieldElement) eCFieldElement).f1605x, create);
        SecP224R1Field.multiply(create, this.f1605x, create);
        return new SecP224R1FieldElement(create);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP224R1FieldElement)) {
            return false;
        }
        return Nat224.m100eq(this.f1605x, ((SecP224R1FieldElement) obj).f1605x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public String getFieldName() {
        return "SecP224R1Field";
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public int getFieldSize() {
        return f1604Q.bitLength();
    }

    public int hashCode() {
        return f1604Q.hashCode() ^ Arrays.hashCode(this.f1605x, 0, 7);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement invert() {
        int[] create = Nat224.create();
        Mod.invert(SecP224R1Field.f1602P, this.f1605x, create);
        return new SecP224R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isOne() {
        return Nat224.isOne(this.f1605x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isZero() {
        return Nat224.isZero(this.f1605x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] create = Nat224.create();
        SecP224R1Field.multiply(this.f1605x, ((SecP224R1FieldElement) eCFieldElement).f1605x, create);
        return new SecP224R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement negate() {
        int[] create = Nat224.create();
        SecP224R1Field.negate(this.f1605x, create);
        return new SecP224R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f1605x;
        if (Nat224.isZero(iArr) || Nat224.isOne(iArr)) {
            return this;
        }
        int[] create = Nat224.create();
        SecP224R1Field.negate(iArr, create);
        int[] random = Mod.random(SecP224R1Field.f1602P);
        int[] create2 = Nat224.create();
        SecP224R1FieldElement secP224R1FieldElement = null;
        if (!isSquare(iArr)) {
            return null;
        }
        while (!trySqrt(create, random, create2)) {
            SecP224R1Field.addOne(random, random);
        }
        SecP224R1Field.square(create2, random);
        if (Nat224.m100eq(iArr, random)) {
            secP224R1FieldElement = new SecP224R1FieldElement(create2);
        }
        return secP224R1FieldElement;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement square() {
        int[] create = Nat224.create();
        SecP224R1Field.square(this.f1605x, create);
        return new SecP224R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] create = Nat224.create();
        SecP224R1Field.subtract(this.f1605x, ((SecP224R1FieldElement) eCFieldElement).f1605x, create);
        return new SecP224R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean testBitZero() {
        boolean z = false;
        if (Nat224.getBit(this.f1605x, 0) == 1) {
            z = true;
        }
        return z;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat224.toBigInteger(this.f1605x);
    }
}
