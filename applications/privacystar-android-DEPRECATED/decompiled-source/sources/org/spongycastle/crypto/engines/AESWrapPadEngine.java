package org.spongycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/AESWrapPadEngine.class */
public class AESWrapPadEngine extends RFC5649WrapEngine {
    public AESWrapPadEngine() {
        super(new AESEngine());
    }
}
