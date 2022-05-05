package org.spongycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/spec/ECParameterSpec.class */
public class ECParameterSpec implements AlgorithmParameterSpec {

    /* renamed from: G */
    private ECPoint f1516G;
    private ECCurve curve;

    /* renamed from: h */
    private BigInteger f1517h;

    /* renamed from: n */
    private BigInteger f1518n;
    private byte[] seed;

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        this.curve = eCCurve;
        this.f1516G = eCPoint.normalize();
        this.f1518n = bigInteger;
        this.f1517h = BigInteger.valueOf(1L);
        this.seed = null;
    }

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this.curve = eCCurve;
        this.f1516G = eCPoint.normalize();
        this.f1518n = bigInteger;
        this.f1517h = bigInteger2;
        this.seed = null;
    }

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.curve = eCCurve;
        this.f1516G = eCPoint.normalize();
        this.f1518n = bigInteger;
        this.f1517h = bigInteger2;
        this.seed = bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ECParameterSpec)) {
            return false;
        }
        ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
        boolean z = false;
        if (getCurve().equals(eCParameterSpec.getCurve())) {
            z = false;
            if (getG().equals(eCParameterSpec.getG())) {
                z = true;
            }
        }
        return z;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.f1516G;
    }

    public BigInteger getH() {
        return this.f1517h;
    }

    public BigInteger getN() {
        return this.f1518n;
    }

    public byte[] getSeed() {
        return this.seed;
    }

    public int hashCode() {
        return getCurve().hashCode() ^ getG().hashCode();
    }
}
