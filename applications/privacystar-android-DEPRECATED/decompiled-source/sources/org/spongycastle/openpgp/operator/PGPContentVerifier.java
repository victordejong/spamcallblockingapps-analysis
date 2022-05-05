package org.spongycastle.openpgp.operator;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPContentVerifier.class */
public interface PGPContentVerifier {
    int getHashAlgorithm();

    int getKeyAlgorithm();

    long getKeyID();

    OutputStream getOutputStream();

    boolean verify(byte[] bArr);
}
