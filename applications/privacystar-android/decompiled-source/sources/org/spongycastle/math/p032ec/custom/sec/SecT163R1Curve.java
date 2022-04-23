package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.encoders.Hex;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecT163R1Curve */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecT163R1Curve.class */
public class SecT163R1Curve extends ECCurve.AbstractF2m {
    private static final int SecT163R1_DEFAULT_COORDS = 6;
    protected SecT163R1Point infinity = new SecT163R1Point(this, null, null);

    public SecT163R1Curve() {
        super(163, 3, 6, 7);
        this.f1536a = fromBigInteger(new BigInteger(1, Hex.decode("07B6882CAAEFA84F9554FF8428BD88E246D2782AE2")));
        this.f1537b = fromBigInteger(new BigInteger(1, Hex.decode("0713612DCDDCB40AAB946BDA29CA91F73AF958AFD9")));
        this.order = new BigInteger(1, Hex.decode("03FFFFFFFFFFFFFFFFFFFF48AAB689C29CA710279B"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT163R1Curve();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT163R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecT163R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT163FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public int getFieldSize() {
        return 163;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public int getK1() {
        return 3;
    }

    public int getK2() {
        return 6;
    }

    public int getK3() {
        return 7;
    }

    public int getM() {
        return 163;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return false;
    }

    public boolean isTrinomial() {
        return false;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public boolean supportsCoordinateSystem(int i) {
        return i == 6;
    }
}
