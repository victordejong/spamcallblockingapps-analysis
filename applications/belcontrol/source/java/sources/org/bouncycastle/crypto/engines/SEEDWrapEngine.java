package org.bouncycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/SEEDWrapEngine.class */
public class SEEDWrapEngine extends RFC3394WrapEngine {
    public SEEDWrapEngine() {
        super(new SEEDEngine());
    }
}
