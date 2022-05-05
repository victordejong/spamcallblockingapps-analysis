package org.spongycastle.openpgp.operator.p035bc;

import java.security.SecureRandom;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PBEKeyEncryptionMethodGenerator;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcPBEKeyEncryptionMethodGenerator */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPBEKeyEncryptionMethodGenerator.class */
public class BcPBEKeyEncryptionMethodGenerator extends PBEKeyEncryptionMethodGenerator {
    public BcPBEKeyEncryptionMethodGenerator(char[] cArr) {
        this(cArr, new SHA1PGPDigestCalculator());
    }

    public BcPBEKeyEncryptionMethodGenerator(char[] cArr, int i) {
        super(cArr, new SHA1PGPDigestCalculator(), i);
    }

    public BcPBEKeyEncryptionMethodGenerator(char[] cArr, PGPDigestCalculator pGPDigestCalculator) {
        super(cArr, pGPDigestCalculator);
    }

    public BcPBEKeyEncryptionMethodGenerator(char[] cArr, PGPDigestCalculator pGPDigestCalculator, int i) {
        super(cArr, pGPDigestCalculator, i);
    }

    @Override // org.spongycastle.openpgp.operator.PBEKeyEncryptionMethodGenerator
    protected byte[] encryptSessionInfo(int i, byte[] bArr, byte[] bArr2) throws PGPException {
        try {
            BlockCipher createBlockCipher = BcImplProvider.createBlockCipher(i);
            BufferedBlockCipher createSymmetricKeyWrapper = BcUtil.createSymmetricKeyWrapper(true, createBlockCipher, bArr, new byte[createBlockCipher.getBlockSize()]);
            byte[] bArr3 = new byte[bArr2.length];
            createSymmetricKeyWrapper.doFinal(bArr3, createSymmetricKeyWrapper.processBytes(bArr2, 0, bArr2.length, bArr3, 0));
            return bArr3;
        } catch (InvalidCipherTextException e) {
            throw new PGPException("encryption failed: " + e.getMessage(), e);
        }
    }

    @Override // org.spongycastle.openpgp.operator.PBEKeyEncryptionMethodGenerator
    public PBEKeyEncryptionMethodGenerator setSecureRandom(SecureRandom secureRandom) {
        super.setSecureRandom(secureRandom);
        return this;
    }
}
