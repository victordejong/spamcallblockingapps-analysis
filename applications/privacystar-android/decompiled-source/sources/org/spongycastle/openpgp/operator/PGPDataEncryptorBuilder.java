package org.spongycastle.openpgp.operator;

import java.security.SecureRandom;
import org.spongycastle.openpgp.PGPException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPDataEncryptorBuilder.class */
public interface PGPDataEncryptorBuilder {
    PGPDataEncryptor build(byte[] bArr) throws PGPException;

    int getAlgorithm();

    SecureRandom getSecureRandom();
}
