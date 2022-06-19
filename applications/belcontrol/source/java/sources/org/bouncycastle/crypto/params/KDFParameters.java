package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.DerivationParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/KDFParameters.class */
public class KDFParameters implements DerivationParameters {

    /* renamed from: iv */
    public byte[] f7588iv;
    public byte[] shared;

    public KDFParameters(byte[] bArr, byte[] bArr2) {
        this.shared = bArr;
        this.f7588iv = bArr2;
    }

    public byte[] getIV() {
        return this.f7588iv;
    }

    public byte[] getSharedSecret() {
        return this.shared;
    }
}
