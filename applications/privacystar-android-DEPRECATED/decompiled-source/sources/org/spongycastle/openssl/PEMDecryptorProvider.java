package org.spongycastle.openssl;

import org.spongycastle.operator.OperatorCreationException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/PEMDecryptorProvider.class */
public interface PEMDecryptorProvider {
    PEMDecryptor get(String str) throws OperatorCreationException;
}
