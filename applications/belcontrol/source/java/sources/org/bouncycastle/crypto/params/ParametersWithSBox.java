package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ParametersWithSBox.class */
public class ParametersWithSBox implements CipherParameters {
    private CipherParameters parameters;
    private byte[] sBox;

    public ParametersWithSBox(CipherParameters cipherParameters, byte[] bArr) {
        this.parameters = cipherParameters;
        this.sBox = bArr;
    }

    public CipherParameters getParameters() {
        return this.parameters;
    }

    public byte[] getSBox() {
        return this.sBox;
    }
}
