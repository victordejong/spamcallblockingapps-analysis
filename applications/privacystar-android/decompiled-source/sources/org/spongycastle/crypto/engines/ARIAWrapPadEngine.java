package org.spongycastle.crypto.engines;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/ARIAWrapPadEngine.class */
public class ARIAWrapPadEngine extends RFC5649WrapEngine {
    public ARIAWrapPadEngine() {
        super(new ARIAEngine());
    }
}
