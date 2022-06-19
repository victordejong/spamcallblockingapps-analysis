package org.bouncycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ElGamalPublicKeyParameters.class */
public class ElGamalPublicKeyParameters extends ElGamalKeyParameters {

    /* renamed from: y */
    private BigInteger f7579y;

    public ElGamalPublicKeyParameters(BigInteger bigInteger, ElGamalParameters elGamalParameters) {
        super(false, elGamalParameters);
        this.f7579y = bigInteger;
    }

    @Override // org.bouncycastle.crypto.params.ElGamalKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof ElGamalPublicKeyParameters)) {
            return false;
        }
        boolean z = false;
        if (((ElGamalPublicKeyParameters) obj).getY().equals(this.f7579y)) {
            z = false;
            if (super.equals(obj)) {
                z = true;
            }
        }
        return z;
    }

    public BigInteger getY() {
        return this.f7579y;
    }

    @Override // org.bouncycastle.crypto.params.ElGamalKeyParameters
    public int hashCode() {
        return this.f7579y.hashCode() ^ super.hashCode();
    }
}
