package org.bouncycastle.crypto.params;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ECKeyParameters.class */
public class ECKeyParameters extends AsymmetricKeyParameter {
    public ECDomainParameters params;

    public ECKeyParameters(boolean z, ECDomainParameters eCDomainParameters) {
        super(z);
        this.params = eCDomainParameters;
    }

    public ECDomainParameters getParameters() {
        return this.params;
    }
}
