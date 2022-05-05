package org.spongycastle.openssl;

import java.io.IOException;
import org.spongycastle.operator.OperatorCreationException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/PEMEncryptedKeyPair.class */
public class PEMEncryptedKeyPair {
    private final String dekAlgName;

    /* renamed from: iv */
    private final byte[] f1654iv;
    private final byte[] keyBytes;
    private final PEMKeyPairParser parser;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PEMEncryptedKeyPair(String str, byte[] bArr, byte[] bArr2, PEMKeyPairParser pEMKeyPairParser) {
        this.dekAlgName = str;
        this.f1654iv = bArr;
        this.keyBytes = bArr2;
        this.parser = pEMKeyPairParser;
    }

    public PEMKeyPair decryptKeyPair(PEMDecryptorProvider pEMDecryptorProvider) throws IOException {
        try {
            return this.parser.parse(pEMDecryptorProvider.get(this.dekAlgName).decrypt(this.keyBytes, this.f1654iv));
        } catch (IOException e) {
            throw e;
        } catch (OperatorCreationException e2) {
            throw new PEMException("cannot create extraction operator: " + e2.getMessage(), e2);
        } catch (Exception e3) {
            throw new PEMException("exception processing key pair: " + e3.getMessage(), e3);
        }
    }
}
