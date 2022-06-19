package org.bouncycastle.crypto.tls;

import org.bouncycastle.crypto.DSA;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DSAPublicKeyParameters;
import org.bouncycastle.crypto.signers.DSASigner;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsDSSSigner.class */
public class TlsDSSSigner extends TlsDSASigner {
    @Override // org.bouncycastle.crypto.tls.TlsDSASigner
    public DSA createDSAImpl() {
        return new DSASigner();
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public boolean isValidPublicKey(AsymmetricKeyParameter asymmetricKeyParameter) {
        return asymmetricKeyParameter instanceof DSAPublicKeyParameters;
    }
}
