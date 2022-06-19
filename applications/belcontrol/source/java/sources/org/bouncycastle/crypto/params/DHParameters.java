package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/DHParameters.class */
public class DHParameters implements CipherParameters {
    private static final int DEFAULT_MINIMUM_LENGTH = 160;

    /* renamed from: g */
    private BigInteger f7557g;

    /* renamed from: j */
    private BigInteger f7558j;

    /* renamed from: l */
    private int f7559l;

    /* renamed from: m */
    private int f7560m;

    /* renamed from: p */
    private BigInteger f7561p;

    /* renamed from: q */
    private BigInteger f7562q;
    private DHValidationParameters validation;

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, null, 0);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, 0);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i) {
        this(bigInteger, bigInteger2, bigInteger3, getDefaultMParam(i), i, null, null);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, int i2) {
        this(bigInteger, bigInteger2, bigInteger3, i, i2, null, null);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i, int i2, BigInteger bigInteger4, DHValidationParameters dHValidationParameters) {
        if (i2 != 0) {
            if (i2 >= bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must be less than bitlength(p)");
            }
            if (i2 < i) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        this.f7557g = bigInteger2;
        this.f7561p = bigInteger;
        this.f7562q = bigInteger3;
        this.f7560m = i;
        this.f7559l = i2;
        this.f7558j = bigInteger4;
        this.validation = dHValidationParameters;
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, DHValidationParameters dHValidationParameters) {
        this(bigInteger, bigInteger2, bigInteger3, DEFAULT_MINIMUM_LENGTH, 0, bigInteger4, dHValidationParameters);
    }

    private static int getDefaultMParam(int i) {
        if (i == 0) {
            return DEFAULT_MINIMUM_LENGTH;
        }
        if (i >= DEFAULT_MINIMUM_LENGTH) {
            i = DEFAULT_MINIMUM_LENGTH;
        }
        return i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHParameters)) {
            return false;
        }
        DHParameters dHParameters = (DHParameters) obj;
        if (getQ() != null) {
            if (!getQ().equals(dHParameters.getQ())) {
                return false;
            }
        } else if (dHParameters.getQ() != null) {
            return false;
        }
        boolean z = false;
        if (dHParameters.getP().equals(this.f7561p)) {
            z = false;
            if (dHParameters.getG().equals(this.f7557g)) {
                z = true;
            }
        }
        return z;
    }

    public BigInteger getG() {
        return this.f7557g;
    }

    public BigInteger getJ() {
        return this.f7558j;
    }

    public int getL() {
        return this.f7559l;
    }

    public int getM() {
        return this.f7560m;
    }

    public BigInteger getP() {
        return this.f7561p;
    }

    public BigInteger getQ() {
        return this.f7562q;
    }

    public DHValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) ^ (getQ() != null ? getQ().hashCode() : 0);
    }
}
