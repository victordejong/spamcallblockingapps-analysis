package org.spongycastle.openpgp.operator.jcajce;

import java.security.PrivateKey;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey.class */
public class JcaPGPPrivateKey extends PGPPrivateKey {
    private final PrivateKey privateKey;

    public JcaPGPPrivateKey(long j, PrivateKey privateKey) {
        super(j, null, null);
        this.privateKey = privateKey;
    }

    public JcaPGPPrivateKey(PGPPublicKey pGPPublicKey, PrivateKey privateKey) {
        super(pGPPublicKey.getKeyID(), pGPPublicKey.getPublicKeyPacket(), null);
        this.privateKey = privateKey;
    }

    public PrivateKey getPrivateKey() {
        return this.privateKey;
    }
}
