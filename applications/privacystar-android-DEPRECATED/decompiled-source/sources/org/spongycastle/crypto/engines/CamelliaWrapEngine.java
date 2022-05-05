package org.spongycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/CamelliaWrapEngine.class */
public class CamelliaWrapEngine extends RFC3394WrapEngine {
    public CamelliaWrapEngine() {
        super(new CamelliaEngine());
    }
}
