package org.bouncycastle.crypto.tls;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsClientContextImpl.class */
public class TlsClientContextImpl implements TlsClientContext {
    private SecureRandom secureRandom;
    private SecurityParameters securityParameters;
    private Object userObject = null;

    public TlsClientContextImpl(SecureRandom secureRandom, SecurityParameters securityParameters) {
        this.secureRandom = secureRandom;
        this.securityParameters = securityParameters;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClientContext
    public SecureRandom getSecureRandom() {
        return this.secureRandom;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClientContext
    public SecurityParameters getSecurityParameters() {
        return this.securityParameters;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClientContext
    public Object getUserObject() {
        return this.userObject;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClientContext
    public void setUserObject(Object obj) {
        this.userObject = obj;
    }
}
