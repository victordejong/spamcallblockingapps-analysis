package org.spongycastle.math.p032ec.custom.djb;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.encoders.Hex;
/* renamed from: org.spongycastle.math.ec.custom.djb.Curve25519 */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/djb/Curve25519.class */
public class Curve25519 extends ECCurve.AbstractFp {
    private static final int Curve25519_DEFAULT_COORDS = 4;

    /* renamed from: q */
    public static final BigInteger f1556q = Nat256.toBigInteger(Curve25519Field.f1558P);
    protected Curve25519Point infinity = new Curve25519Point(this, null, null);

    public Curve25519() {
        super(f1556q);
        this.f1536a = fromBigInteger(new BigInteger(1, Hex.decode("2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144")));
        this.f1537b = fromBigInteger(new BigInteger(1, Hex.decode("7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864")));
        this.order = new BigInteger(1, Hex.decode("1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"));
        this.cofactor = BigInteger.valueOf(8L);
        this.coord = 4;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    protected ECCurve cloneCurve() {
        return new Curve25519();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new Curve25519Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new Curve25519Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new Curve25519FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public int getFieldSize() {
        return f1556q.bitLength();
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f1556q;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public boolean supportsCoordinateSystem(int i) {
        return i == 4;
    }
}
