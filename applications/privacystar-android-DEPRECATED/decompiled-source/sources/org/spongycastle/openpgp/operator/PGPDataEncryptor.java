package org.spongycastle.openpgp.operator;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPDataEncryptor.class */
public interface PGPDataEncryptor {
    int getBlockSize();

    PGPDigestCalculator getIntegrityCalculator();

    OutputStream getOutputStream(OutputStream outputStream);
}
