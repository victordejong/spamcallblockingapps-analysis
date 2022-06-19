package org.bouncycastle.crypto.params;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/DSAKeyParameters.class */
public class DSAKeyParameters extends AsymmetricKeyParameter {
    private DSAParameters params;

    public DSAKeyParameters(boolean z, DSAParameters dSAParameters) {
        super(z);
        this.params = dSAParameters;
    }

    public DSAParameters getParameters() {
        return this.params;
    }
}
