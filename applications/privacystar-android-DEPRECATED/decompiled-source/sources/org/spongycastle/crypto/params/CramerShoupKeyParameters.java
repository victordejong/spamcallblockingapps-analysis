package org.spongycastle.crypto.params;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/CramerShoupKeyParameters.class */
public class CramerShoupKeyParameters extends AsymmetricKeyParameter {
    private CramerShoupParameters params;

    /* JADX INFO: Access modifiers changed from: protected */
    public CramerShoupKeyParameters(boolean z, CramerShoupParameters cramerShoupParameters) {
        super(z);
        this.params = cramerShoupParameters;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof CramerShoupKeyParameters)) {
            return false;
        }
        CramerShoupKeyParameters cramerShoupKeyParameters = (CramerShoupKeyParameters) obj;
        if (this.params != null) {
            return this.params.equals(cramerShoupKeyParameters.getParameters());
        }
        if (cramerShoupKeyParameters.getParameters() == null) {
            z = true;
        }
        return z;
    }

    public CramerShoupParameters getParameters() {
        return this.params;
    }

    public int hashCode() {
        int i = !isPrivate();
        int i2 = i;
        if (this.params != null) {
            i2 = i ^ this.params.hashCode();
        }
        return i2;
    }
}
