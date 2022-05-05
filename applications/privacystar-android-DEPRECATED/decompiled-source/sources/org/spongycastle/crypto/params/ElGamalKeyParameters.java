package org.spongycastle.crypto.params;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/ElGamalKeyParameters.class */
public class ElGamalKeyParameters extends AsymmetricKeyParameter {
    private ElGamalParameters params;

    /* JADX INFO: Access modifiers changed from: protected */
    public ElGamalKeyParameters(boolean z, ElGamalParameters elGamalParameters) {
        super(z);
        this.params = elGamalParameters;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof ElGamalKeyParameters)) {
            return false;
        }
        ElGamalKeyParameters elGamalKeyParameters = (ElGamalKeyParameters) obj;
        if (this.params != null) {
            return this.params.equals(elGamalKeyParameters.getParameters());
        }
        if (elGamalKeyParameters.getParameters() == null) {
            z = true;
        }
        return z;
    }

    public ElGamalParameters getParameters() {
        return this.params;
    }

    public int hashCode() {
        return this.params != null ? this.params.hashCode() : 0;
    }
}
