package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/DSAParameters.class */
public class DSAParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1403g;

    /* renamed from: p */
    private BigInteger f1404p;

    /* renamed from: q */
    private BigInteger f1405q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f1403g = bigInteger3;
        this.f1404p = bigInteger;
        this.f1405q = bigInteger2;
    }

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f1403g = bigInteger3;
        this.f1404p = bigInteger;
        this.f1405q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAParameters)) {
            return false;
        }
        DSAParameters dSAParameters = (DSAParameters) obj;
        boolean z = false;
        if (dSAParameters.getP().equals(this.f1404p)) {
            z = false;
            if (dSAParameters.getQ().equals(this.f1405q)) {
                z = false;
                if (dSAParameters.getG().equals(this.f1403g)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public BigInteger getG() {
        return this.f1403g;
    }

    public BigInteger getP() {
        return this.f1404p;
    }

    public BigInteger getQ() {
        return this.f1405q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
