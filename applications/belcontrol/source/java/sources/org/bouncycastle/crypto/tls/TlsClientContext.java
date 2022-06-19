package org.bouncycastle.crypto.tls;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsClientContext.class */
public interface TlsClientContext {
    SecureRandom getSecureRandom();

    SecurityParameters getSecurityParameters();

    Object getUserObject();

    void setUserObject(Object obj);
}
