package org.bouncycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters.class */
public class RSAPrivateCrtKeyParameters extends RSAKeyParameters {

    /* renamed from: dP */
    private BigInteger f7592dP;

    /* renamed from: dQ */
    private BigInteger f7593dQ;

    /* renamed from: e */
    private BigInteger f7594e;

    /* renamed from: p */
    private BigInteger f7595p;

    /* renamed from: q */
    private BigInteger f7596q;
    private BigInteger qInv;

    public RSAPrivateCrtKeyParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        super(true, bigInteger, bigInteger3);
        this.f7594e = bigInteger2;
        this.f7595p = bigInteger4;
        this.f7596q = bigInteger5;
        this.f7592dP = bigInteger6;
        this.f7593dQ = bigInteger7;
        this.qInv = bigInteger8;
    }

    public BigInteger getDP() {
        return this.f7592dP;
    }

    public BigInteger getDQ() {
        return this.f7593dQ;
    }

    public BigInteger getP() {
        return this.f7595p;
    }

    public BigInteger getPublicExponent() {
        return this.f7594e;
    }

    public BigInteger getQ() {
        return this.f7596q;
    }

    public BigInteger getQInv() {
        return this.qInv;
    }
}
