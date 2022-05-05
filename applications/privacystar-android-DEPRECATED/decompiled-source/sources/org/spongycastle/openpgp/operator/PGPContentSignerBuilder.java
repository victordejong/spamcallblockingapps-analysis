package org.spongycastle.openpgp.operator;

import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPrivateKey;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPContentSignerBuilder.class */
public interface PGPContentSignerBuilder {
    PGPContentSigner build(int i, PGPPrivateKey pGPPrivateKey) throws PGPException;
}
