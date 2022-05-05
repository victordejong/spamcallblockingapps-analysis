package org.spongycastle.openpgp.operator;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPDigestCalculator.class */
public interface PGPDigestCalculator {
    int getAlgorithm();

    byte[] getDigest();

    OutputStream getOutputStream();

    void reset();
}
