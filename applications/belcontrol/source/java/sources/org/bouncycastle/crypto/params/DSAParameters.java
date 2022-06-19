package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/DSAParameters.class */
public class DSAParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f7565g;

    /* renamed from: p */
    private BigInteger f7566p;

    /* renamed from: q */
    private BigInteger f7567q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f7565g = bigInteger3;
        this.f7566p = bigInteger;
        this.f7567q = bigInteger2;
    }

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f7565g = bigInteger3;
        this.f7566p = bigInteger;
        this.f7567q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAParameters)) {
            return false;
        }
        DSAParameters dSAParameters = (DSAParameters) obj;
        boolean z = false;
        if (dSAParameters.getP().equals(this.f7566p)) {
            z = false;
            if (dSAParameters.getQ().equals(this.f7567q)) {
                z = false;
                if (dSAParameters.getG().equals(this.f7565g)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public BigInteger getG() {
        return this.f7565g;
    }

    public BigInteger getP() {
        return this.f7566p;
    }

    public BigInteger getQ() {
        return this.f7567q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
