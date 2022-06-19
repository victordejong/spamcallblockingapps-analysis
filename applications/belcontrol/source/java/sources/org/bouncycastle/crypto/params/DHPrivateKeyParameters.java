package org.bouncycastle.crypto.params;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/DHPrivateKeyParameters.class */
public class DHPrivateKeyParameters extends DHKeyParameters {

    /* renamed from: x */
    private BigInteger f7563x;

    public DHPrivateKeyParameters(BigInteger bigInteger, DHParameters dHParameters) {
        super(true, dHParameters);
        this.f7563x = bigInteger;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof DHPrivateKeyParameters)) {
            return false;
        }
        boolean z = false;
        if (((DHPrivateKeyParameters) obj).getX().equals(this.f7563x)) {
            z = false;
            if (super.equals(obj)) {
                z = true;
            }
        }
        return z;
    }

    public BigInteger getX() {
        return this.f7563x;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public int hashCode() {
        return this.f7563x.hashCode() ^ super.hashCode();
    }
}
