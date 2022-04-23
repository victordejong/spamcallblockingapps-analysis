package org.spongycastle.openpgp.operator;

import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKey;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPContentVerifierBuilder.class */
public interface PGPContentVerifierBuilder {
    PGPContentVerifier build(PGPPublicKey pGPPublicKey) throws PGPException;
}
