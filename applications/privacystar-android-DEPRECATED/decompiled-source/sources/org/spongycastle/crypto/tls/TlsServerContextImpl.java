package org.spongycastle.crypto.tls;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsServerContextImpl.class */
class TlsServerContextImpl extends AbstractTlsContext implements TlsServerContext {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TlsServerContextImpl(SecureRandom secureRandom, SecurityParameters securityParameters) {
        super(secureRandom, securityParameters);
    }

    @Override // org.spongycastle.crypto.tls.TlsContext
    public boolean isServer() {
        return true;
    }
}
