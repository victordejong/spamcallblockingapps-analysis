package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ElGamalParameters.class */
public class ElGamalParameters implements CipherParameters {

    /* renamed from: g */
    private BigInteger f7575g;

    /* renamed from: l */
    private int f7576l;

    /* renamed from: p */
    private BigInteger f7577p;

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, 0);
    }

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        this.f7575g = bigInteger2;
        this.f7577p = bigInteger;
        this.f7576l = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ElGamalParameters)) {
            return false;
        }
        ElGamalParameters elGamalParameters = (ElGamalParameters) obj;
        boolean z = false;
        if (elGamalParameters.getP().equals(this.f7577p)) {
            z = false;
            if (elGamalParameters.getG().equals(this.f7575g)) {
                z = false;
                if (elGamalParameters.getL() == this.f7576l) {
                    z = true;
                }
            }
        }
        return z;
    }

    public BigInteger getG() {
        return this.f7575g;
    }

    public int getL() {
        return this.f7576l;
    }

    public BigInteger getP() {
        return this.f7577p;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) + this.f7576l;
    }
}
