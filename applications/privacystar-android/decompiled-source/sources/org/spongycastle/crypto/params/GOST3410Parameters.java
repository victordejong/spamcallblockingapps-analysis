package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/GOST3410Parameters.class */
public class GOST3410Parameters implements CipherParameters {

    /* renamed from: a */
    private BigInteger f1418a;

    /* renamed from: p */
    private BigInteger f1419p;

    /* renamed from: q */
    private BigInteger f1420q;
    private GOST3410ValidationParameters validation;

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f1419p = bigInteger;
        this.f1420q = bigInteger2;
        this.f1418a = bigInteger3;
    }

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, GOST3410ValidationParameters gOST3410ValidationParameters) {
        this.f1418a = bigInteger3;
        this.f1419p = bigInteger;
        this.f1420q = bigInteger2;
        this.validation = gOST3410ValidationParameters;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410Parameters)) {
            return false;
        }
        GOST3410Parameters gOST3410Parameters = (GOST3410Parameters) obj;
        boolean z = false;
        if (gOST3410Parameters.getP().equals(this.f1419p)) {
            z = false;
            if (gOST3410Parameters.getQ().equals(this.f1420q)) {
                z = false;
                if (gOST3410Parameters.getA().equals(this.f1418a)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public BigInteger getA() {
        return this.f1418a;
    }

    public BigInteger getP() {
        return this.f1419p;
    }

    public BigInteger getQ() {
        return this.f1420q;
    }

    public GOST3410ValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (this.f1419p.hashCode() ^ this.f1420q.hashCode()) ^ this.f1418a.hashCode();
    }
}
