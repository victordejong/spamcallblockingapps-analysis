package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.math.p012ec.ECCurve;
import org.bouncycastle.math.p012ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/ECParameterSpec.class */
public class ECParameterSpec implements AlgorithmParameterSpec {

    /* renamed from: G */
    private ECPoint f7633G;
    private ECCurve curve;

    /* renamed from: h */
    private BigInteger f7634h;

    /* renamed from: n */
    private BigInteger f7635n;
    private byte[] seed;

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        this.curve = eCCurve;
        this.f7633G = eCPoint;
        this.f7635n = bigInteger;
        this.f7634h = BigInteger.valueOf(1L);
        this.seed = null;
    }

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this.curve = eCCurve;
        this.f7633G = eCPoint;
        this.f7635n = bigInteger;
        this.f7634h = bigInteger2;
        this.seed = null;
    }

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.curve = eCCurve;
        this.f7633G = eCPoint;
        this.f7635n = bigInteger;
        this.f7634h = bigInteger2;
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
        return this.f7633G;
    }

    public BigInteger getH() {
        return this.f7634h;
    }

    public BigInteger getN() {
        return this.f7635n;
    }

    public byte[] getSeed() {
        return this.seed;
    }

    public int hashCode() {
        return getCurve().hashCode() ^ getG().hashCode();
    }
}
