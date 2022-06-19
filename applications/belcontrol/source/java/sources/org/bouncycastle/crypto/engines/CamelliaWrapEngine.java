package org.bouncycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/CamelliaWrapEngine.class */
public class CamelliaWrapEngine extends RFC3394WrapEngine {
    public CamelliaWrapEngine() {
        super(new CamelliaEngine());
    }
}
