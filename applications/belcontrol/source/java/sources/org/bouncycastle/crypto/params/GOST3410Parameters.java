package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/GOST3410Parameters.class */
public class GOST3410Parameters implements CipherParameters {

    /* renamed from: a */
    private BigInteger f7580a;

    /* renamed from: p */
    private BigInteger f7581p;

    /* renamed from: q */
    private BigInteger f7582q;
    private GOST3410ValidationParameters validation;

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f7581p = bigInteger;
        this.f7582q = bigInteger2;
        this.f7580a = bigInteger3;
    }

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, GOST3410ValidationParameters gOST3410ValidationParameters) {
        this.f7580a = bigInteger3;
        this.f7581p = bigInteger;
        this.f7582q = bigInteger2;
        this.validation = gOST3410ValidationParameters;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410Parameters)) {
            return false;
        }
        GOST3410Parameters gOST3410Parameters = (GOST3410Parameters) obj;
        boolean z = false;
        if (gOST3410Parameters.getP().equals(this.f7581p)) {
            z = false;
            if (gOST3410Parameters.getQ().equals(this.f7582q)) {
                z = false;
                if (gOST3410Parameters.getA().equals(this.f7580a)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public BigInteger getA() {
        return this.f7580a;
    }

    public BigInteger getP() {
        return this.f7581p;
    }

    public BigInteger getQ() {
        return this.f7582q;
    }

    public GOST3410ValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (this.f7581p.hashCode() ^ this.f7582q.hashCode()) ^ this.f7580a.hashCode();
    }
}
