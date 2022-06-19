package org.bouncycastle.crypto.tls;

import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsBlockCipher.class */
public class TlsBlockCipher implements TlsCipher {
    public TlsClientContext context;
    public BlockCipher decryptCipher;
    public BlockCipher encryptCipher;
    public TlsMac readMac;
    public TlsMac writeMac;

    public TlsBlockCipher(TlsClientContext tlsClientContext, BlockCipher blockCipher, BlockCipher blockCipher2, Digest digest, Digest digest2, int i) {
        this.context = tlsClientContext;
        this.encryptCipher = blockCipher;
        this.decryptCipher = blockCipher2;
        int i2 = i * 2;
        int digestSize = digest.getDigestSize();
        int digestSize2 = digest2.getDigestSize();
        int blockSize = blockCipher.getBlockSize();
        int blockSize2 = blockCipher2.getBlockSize();
        SecurityParameters securityParameters = tlsClientContext.getSecurityParameters();
        byte[] PRF = TlsUtils.PRF(securityParameters.masterSecret, "key expansion", TlsUtils.concat(securityParameters.serverRandom, securityParameters.clientRandom), digestSize + i2 + digestSize2 + blockSize + blockSize2);
        this.writeMac = new TlsMac(digest, PRF, 0, digest.getDigestSize());
        int digestSize3 = digest.getDigestSize() + 0;
        this.readMac = new TlsMac(digest2, PRF, digestSize3, digest2.getDigestSize());
        int digestSize4 = digestSize3 + digest2.getDigestSize();
        initCipher(true, blockCipher, PRF, i, digestSize4, digestSize4 + i2);
        int i3 = digestSize4 + i;
        initCipher(false, blockCipher2, PRF, i, i3, i3 + i + blockCipher.getBlockSize());
    }

    public int chooseExtraPadBlocks(SecureRandom secureRandom, int i) {
        return Math.min(lowestBitSet(secureRandom.nextInt()), i);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010d  */
    @Override // org.bouncycastle.crypto.tls.TlsCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] decodeCiphertext(short r7, byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.tls.TlsBlockCipher.decodeCiphertext(short, byte[], int, int):byte[]");
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] encodePlaintext(short s, byte[] bArr, int i, int i2) {
        int i3;
        int blockSize = this.encryptCipher.getBlockSize();
        int size = blockSize - (((this.writeMac.getSize() + i2) + 1) % blockSize);
        int chooseExtraPadBlocks = size + (chooseExtraPadBlocks(this.context.getSecureRandom(), (255 - size) / blockSize) * blockSize);
        int size2 = this.writeMac.getSize() + i2 + chooseExtraPadBlocks + 1;
        byte[] bArr2 = new byte[size2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        byte[] calculateMac = this.writeMac.calculateMac(s, bArr, i, i2);
        System.arraycopy(calculateMac, 0, bArr2, i2, calculateMac.length);
        int length = calculateMac.length;
        int i4 = 0;
        while (true) {
            if (i4 <= chooseExtraPadBlocks) {
                bArr2[i4 + i2 + length] = (byte) chooseExtraPadBlocks;
                i4++;
            }
        }
        for (i3 = 0; i3 < size2; i3 += blockSize) {
            this.encryptCipher.processBlock(bArr2, i3, bArr2, i3);
        }
        return bArr2;
    }

    public void initCipher(boolean z, BlockCipher blockCipher, byte[] bArr, int i, int i2, int i3) {
        blockCipher.init(z, new ParametersWithIV(new KeyParameter(bArr, i2, i), bArr, i3, blockCipher.getBlockSize()));
    }

    public int lowestBitSet(int i) {
        if (i == 0) {
            return 32;
        }
        int i2 = 0;
        while ((i & 1) == 0) {
            i2++;
            i >>= 1;
        }
        return i2;
    }
}
