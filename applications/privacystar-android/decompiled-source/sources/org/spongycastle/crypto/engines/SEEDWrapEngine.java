package org.spongycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/SEEDWrapEngine.class */
public class SEEDWrapEngine extends RFC3394WrapEngine {
    public SEEDWrapEngine() {
        super(new SEEDEngine());
    }
}
