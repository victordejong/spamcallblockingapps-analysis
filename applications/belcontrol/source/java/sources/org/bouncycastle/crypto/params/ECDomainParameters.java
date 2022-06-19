package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.math.p012ec.ECConstants;
import org.bouncycastle.math.p012ec.ECCurve;
import org.bouncycastle.math.p012ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ECDomainParameters.class */
public class ECDomainParameters implements ECConstants {

    /* renamed from: G */
    public ECPoint f7570G;
    public ECCurve curve;

    /* renamed from: h */
    public BigInteger f7571h;

    /* renamed from: n */
    public BigInteger f7572n;
    public byte[] seed;

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        this.curve = eCCurve;
        this.f7570G = eCPoint;
        this.f7572n = bigInteger;
        this.f7571h = ECConstants.ONE;
        this.seed = null;
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this.curve = eCCurve;
        this.f7570G = eCPoint;
        this.f7572n = bigInteger;
        this.f7571h = bigInteger2;
        this.seed = null;
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.curve = eCCurve;
        this.f7570G = eCPoint;
        this.f7572n = bigInteger;
        this.f7571h = bigInteger2;
        this.seed = bArr;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.f7570G;
    }

    public BigInteger getH() {
        return this.f7571h;
    }

    public BigInteger getN() {
        return this.f7572n;
    }

    public byte[] getSeed() {
        return this.seed;
    }
}
