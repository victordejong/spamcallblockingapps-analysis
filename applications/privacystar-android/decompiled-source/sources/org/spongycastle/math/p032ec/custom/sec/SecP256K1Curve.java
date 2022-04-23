package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECConstants;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.encoders.Hex;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP256K1Curve */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP256K1Curve.class */
public class SecP256K1Curve extends ECCurve.AbstractFp {
    private static final int SECP256K1_DEFAULT_COORDS = 2;

    /* renamed from: q */
    public static final BigInteger f1606q = new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"));
    protected SecP256K1Point infinity = new SecP256K1Point(this, null, null);

    public SecP256K1Curve() {
        super(f1606q);
        this.f1536a = fromBigInteger(ECConstants.ZERO);
        this.f1537b = fromBigInteger(BigInteger.valueOf(7L));
        this.order = new BigInteger(1, Hex.decode("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecP256K1Curve();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP256K1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP256K1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP256K1FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public int getFieldSize() {
        return f1606q.bitLength();
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f1606q;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public boolean supportsCoordinateSystem(int i) {
        return i == 2;
    }
}
