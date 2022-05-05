package org.spongycastle.openpgp.operator.p035bc;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PBEDataDecryptorFactory;
import org.spongycastle.openpgp.operator.PGPDataDecryptor;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcPBEDataDecryptorFactory */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPBEDataDecryptorFactory.class */
public class BcPBEDataDecryptorFactory extends PBEDataDecryptorFactory {
    public BcPBEDataDecryptorFactory(char[] cArr, BcPGPDigestCalculatorProvider bcPGPDigestCalculatorProvider) {
        super(cArr, bcPGPDigestCalculatorProvider);
    }

    @Override // org.spongycastle.openpgp.operator.PGPDataDecryptorFactory
    public PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException {
        return BcUtil.createDataDecryptor(z, BcImplProvider.createBlockCipher(i), bArr);
    }

    @Override // org.spongycastle.openpgp.operator.PBEDataDecryptorFactory
    public byte[] recoverSessionData(int i, byte[] bArr, byte[] bArr2) throws PGPException {
        if (bArr2 != null) {
            try {
                if (bArr2.length > 0) {
                    BlockCipher createBlockCipher = BcImplProvider.createBlockCipher(i);
                    BufferedBlockCipher createSymmetricKeyWrapper = BcUtil.createSymmetricKeyWrapper(false, createBlockCipher, bArr, new byte[createBlockCipher.getBlockSize()]);
                    byte[] bArr3 = new byte[bArr2.length];
                    createSymmetricKeyWrapper.doFinal(bArr3, createSymmetricKeyWrapper.processBytes(bArr2, 0, bArr2.length, bArr3, 0));
                    return bArr3;
                }
            } catch (Exception e) {
                throw new PGPException("Exception recovering session info", e);
            }
        }
        byte[] bArr4 = new byte[bArr.length + 1];
        bArr4[0] = (byte) i;
        System.arraycopy(bArr, 0, bArr4, 1, bArr.length);
        return bArr4;
    }
}
