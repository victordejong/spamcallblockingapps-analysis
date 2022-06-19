package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.DerivationParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ISO18033KDFParameters.class */
public class ISO18033KDFParameters implements DerivationParameters {
    public byte[] seed;

    public ISO18033KDFParameters(byte[] bArr) {
        this.seed = bArr;
    }

    public byte[] getSeed() {
        return this.seed;
    }
}
