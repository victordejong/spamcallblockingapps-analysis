package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/RSAPrivateCrtKeyParameters.class */
public class RSAPrivateCrtKeyParameters extends RSAKeyParameters {

    /* renamed from: dP */
    private BigInteger f1438dP;

    /* renamed from: dQ */
    private BigInteger f1439dQ;

    /* renamed from: e */
    private BigInteger f1440e;

    /* renamed from: p */
    private BigInteger f1441p;

    /* renamed from: q */
    private BigInteger f1442q;
    private BigInteger qInv;

    public RSAPrivateCrtKeyParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        super(true, bigInteger, bigInteger3);
        this.f1440e = bigInteger2;
        this.f1441p = bigInteger4;
        this.f1442q = bigInteger5;
        this.f1438dP = bigInteger6;
        this.f1439dQ = bigInteger7;
        this.qInv = bigInteger8;
    }

    public BigInteger getDP() {
        return this.f1438dP;
    }

    public BigInteger getDQ() {
        return this.f1439dQ;
    }

    public BigInteger getP() {
        return this.f1441p;
    }

    public BigInteger getPublicExponent() {
        return this.f1440e;
    }

    public BigInteger getQ() {
        return this.f1442q;
    }

    public BigInteger getQInv() {
        return this.qInv;
    }
}
