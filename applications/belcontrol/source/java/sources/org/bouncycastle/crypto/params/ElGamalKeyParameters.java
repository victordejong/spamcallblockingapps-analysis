package org.bouncycastle.crypto.params;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ElGamalKeyParameters.class */
public class ElGamalKeyParameters extends AsymmetricKeyParameter {
    private ElGamalParameters params;

    public ElGamalKeyParameters(boolean z, ElGamalParameters elGamalParameters) {
        super(z);
        this.params = elGamalParameters;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof ElGamalKeyParameters)) {
            return false;
        }
        ElGamalParameters elGamalParameters = this.params;
        ElGamalParameters parameters = ((ElGamalKeyParameters) obj).getParameters();
        if (elGamalParameters != null) {
            return elGamalParameters.equals(parameters);
        }
        if (parameters == null) {
            z = true;
        }
        return z;
    }

    public ElGamalParameters getParameters() {
        return this.params;
    }

    public int hashCode() {
        ElGamalParameters elGamalParameters = this.params;
        return elGamalParameters != null ? elGamalParameters.hashCode() : 0;
    }
}
