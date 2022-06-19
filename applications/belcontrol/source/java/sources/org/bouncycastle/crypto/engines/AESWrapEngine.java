package org.bouncycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/AESWrapEngine.class */
public class AESWrapEngine extends RFC3394WrapEngine {
    public AESWrapEngine() {
        super(new AESEngine());
    }
}
