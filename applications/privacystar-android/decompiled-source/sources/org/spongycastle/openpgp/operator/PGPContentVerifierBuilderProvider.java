package org.spongycastle.openpgp.operator;

import org.spongycastle.openpgp.PGPException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPContentVerifierBuilderProvider.class */
public interface PGPContentVerifierBuilderProvider {
    PGPContentVerifierBuilder get(int i, int i2) throws PGPException;
}
