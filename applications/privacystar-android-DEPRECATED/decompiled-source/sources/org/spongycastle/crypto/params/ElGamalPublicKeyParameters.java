package org.spongycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/ElGamalPublicKeyParameters.class */
public class ElGamalPublicKeyParameters extends ElGamalKeyParameters {

    /* renamed from: y */
    private BigInteger f1417y;

    public ElGamalPublicKeyParameters(BigInteger bigInteger, ElGamalParameters elGamalParameters) {
        super(false, elGamalParameters);
        this.f1417y = bigInteger;
    }

    @Override // org.spongycastle.crypto.params.ElGamalKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof ElGamalPublicKeyParameters)) {
            return false;
        }
        boolean z = false;
        if (((ElGamalPublicKeyParameters) obj).getY().equals(this.f1417y)) {
            z = false;
            if (super.equals(obj)) {
                z = true;
            }
        }
        return z;
    }

    public BigInteger getY() {
        return this.f1417y;
    }

    @Override // org.spongycastle.crypto.params.ElGamalKeyParameters
    public int hashCode() {
        return this.f1417y.hashCode() ^ super.hashCode();
    }
}
