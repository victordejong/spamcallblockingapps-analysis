package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/ElGamalParameters.class */
public class ElGamalParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f1413g;

    /* renamed from: l */
    private int f1414l;

    /* renamed from: p */
    private BigInteger f1415p;

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, 0);
    }

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        this.f1413g = bigInteger2;
        this.f1415p = bigInteger;
        this.f1414l = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ElGamalParameters)) {
            return false;
        }
        ElGamalParameters elGamalParameters = (ElGamalParameters) obj;
        boolean z = false;
        if (elGamalParameters.getP().equals(this.f1415p)) {
            z = false;
            if (elGamalParameters.getG().equals(this.f1413g)) {
                z = false;
                if (elGamalParameters.getL() == this.f1414l) {
                    z = true;
                }
            }
        }
        return z;
    }

    public BigInteger getG() {
        return this.f1413g;
    }

    public int getL() {
        return this.f1414l;
    }

    public BigInteger getP() {
        return this.f1415p;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) + this.f1414l;
    }
}
