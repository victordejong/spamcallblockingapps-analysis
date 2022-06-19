package org.bouncycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/DHPublicKeyParameters.class */
public class DHPublicKeyParameters extends DHKeyParameters {

    /* renamed from: y */
    private BigInteger f7564y;

    public DHPublicKeyParameters(BigInteger bigInteger, DHParameters dHParameters) {
        super(false, dHParameters);
        this.f7564y = bigInteger;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof DHPublicKeyParameters)) {
            return false;
        }
        boolean z = false;
        if (((DHPublicKeyParameters) obj).getY().equals(this.f7564y)) {
            z = false;
            if (super.equals(obj)) {
                z = true;
            }
        }
        return z;
    }

    public BigInteger getY() {
        return this.f7564y;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public int hashCode() {
        return this.f7564y.hashCode() ^ super.hashCode();
    }
}
