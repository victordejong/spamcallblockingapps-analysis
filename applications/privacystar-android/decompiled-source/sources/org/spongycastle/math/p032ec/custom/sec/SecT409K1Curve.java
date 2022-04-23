package org.spongycastle.math.p032ec.custom.sec;

import com.zendesk.service.HttpConstants;
import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECMultiplier;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.math.p032ec.WTauNafMultiplier;
import org.spongycastle.util.encoders.Hex;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecT409K1Curve */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecT409K1Curve.class */
public class SecT409K1Curve extends ECCurve.AbstractF2m {
    private static final int SecT409K1_DEFAULT_COORDS = 6;
    protected SecT409K1Point infinity = new SecT409K1Point(this, null, null);

    public SecT409K1Curve() {
        super(HttpConstants.HTTP_CONFLICT, 87, 0, 0);
        this.f1536a = fromBigInteger(BigInteger.valueOf(0L));
        this.f1537b = fromBigInteger(BigInteger.valueOf(1L));
        this.order = new BigInteger(1, Hex.decode("7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF"));
        this.cofactor = BigInteger.valueOf(4L);
        this.coord = 6;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    protected ECCurve cloneCurve() {
        return new SecT409K1Curve();
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    protected ECMultiplier createDefaultMultiplier() {
        return new WTauNafMultiplier();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT409K1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecT409K1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT409FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public int getFieldSize() {
        return HttpConstants.HTTP_CONFLICT;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
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

    @Override // org.spongycastle.math.p032ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return true;
    }

    public boolean isTrinomial() {
        return true;
    }

    @Override // org.spongycastle.math.p032ec.ECCurve
    public boolean supportsCoordinateSystem(int i) {
        return i == 6;
    }
}
