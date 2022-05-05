package org.spongycastle.openpgp.operator;

import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPDataDecryptor.class */
public interface PGPDataDecryptor {
    int getBlockSize();

    InputStream getInputStream(InputStream inputStream);

    PGPDigestCalculator getIntegrityCalculator();
}
