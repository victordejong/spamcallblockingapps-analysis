package org.bouncycastle.crypto.encodings;

import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/encodings/ISO9796d1Encoding.class */
public class ISO9796d1Encoding implements AsymmetricBlockCipher {
    private int bitSize;
    private AsymmetricBlockCipher engine;
    private boolean forEncryption;
    private BigInteger modulus;
    private int padBits = 0;
    private static final BigInteger SIXTEEN = BigInteger.valueOf(16);
    private static final BigInteger SIX = BigInteger.valueOf(6);
    private static byte[] shadows = {14, 3, 5, 8, 9, 4, 2, 15, 0, 13, 11, 6, 7, 10, 12, 1};
    private static byte[] inverse = {8, 15, 6, 1, 5, 2, 11, 12, 3, 4, 13, 10, 14, 9, 0, 7};

    public ISO9796d1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.engine = asymmetricBlockCipher;
    }

    private static byte[] convertOutputDecryptOnly(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            int length = byteArray.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(byteArray, 1, bArr, 0, length);
            return bArr;
        }
        return byteArray;
    }

    private byte[] decodeBlock(byte[] bArr, int i, int i2) {
        byte[] processBlock = this.engine.processBlock(bArr, i, i2);
        int i3 = (this.bitSize + 13) / 16;
        BigInteger bigInteger = new BigInteger(1, processBlock);
        BigInteger bigInteger2 = SIXTEEN;
        BigInteger mod = bigInteger.mod(bigInteger2);
        BigInteger bigInteger3 = SIX;
        if (!mod.equals(bigInteger3)) {
            if (!this.modulus.subtract(bigInteger).mod(bigInteger2).equals(bigInteger3)) {
                throw new InvalidCipherTextException("resulting integer iS or (modulus - iS) is not congruent to 6 mod 16");
            }
            bigInteger = this.modulus.subtract(bigInteger);
        }
        byte[] convertOutputDecryptOnly = convertOutputDecryptOnly(bigInteger);
        if ((convertOutputDecryptOnly[convertOutputDecryptOnly.length - 1] & 15) == 6) {
            convertOutputDecryptOnly[convertOutputDecryptOnly.length - 1] = (byte) (((convertOutputDecryptOnly[convertOutputDecryptOnly.length - 1] & 255) >>> 4) | (inverse[(convertOutputDecryptOnly[convertOutputDecryptOnly.length - 2] & 255) >> 4] << 4));
            byte[] bArr2 = shadows;
            convertOutputDecryptOnly[0] = (byte) (bArr2[convertOutputDecryptOnly[1] & 15] | (bArr2[(convertOutputDecryptOnly[1] & 255) >>> 4] << 4));
            int length = convertOutputDecryptOnly.length - 1;
            int i4 = 0;
            boolean z = false;
            int i5 = 1;
            while (length >= convertOutputDecryptOnly.length - (i3 * 2)) {
                byte[] bArr3 = shadows;
                int i6 = bArr3[convertOutputDecryptOnly[length] & 15] | (bArr3[(convertOutputDecryptOnly[length] & 255) >>> 4] << 4);
                int i7 = length - 1;
                boolean z2 = z;
                if (((convertOutputDecryptOnly[i7] ^ i6) & 255) != 0) {
                    if (z) {
                        throw new InvalidCipherTextException("invalid tsums in block");
                    }
                    i5 = (convertOutputDecryptOnly[i7] ^ i6) & 255;
                    i4 = i7;
                    z2 = true;
                }
                length -= 2;
                z = z2;
            }
            convertOutputDecryptOnly[i4] = (byte) 0;
            int length2 = (convertOutputDecryptOnly.length - i4) / 2;
            byte[] bArr4 = new byte[length2];
            for (int i8 = 0; i8 < length2; i8++) {
                bArr4[i8] = convertOutputDecryptOnly[(i8 * 2) + i4 + 1];
            }
            this.padBits = i5 - 1;
            return bArr4;
        }
        throw new InvalidCipherTextException("invalid forcing byte in block");
    }

    private byte[] encodeBlock(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = this.bitSize;
        int i8 = (i7 + 7) / 8;
        byte[] bArr2 = new byte[i8];
        int i9 = this.padBits;
        int i10 = (i7 + 13) / 16;
        int i11 = 0;
        while (true) {
            int i12 = i11;
            if (i12 >= i10) {
                break;
            }
            if (i12 > i10 - i2) {
                int i13 = i10 - i12;
                System.arraycopy(bArr, (i + i2) - i13, bArr2, i8 - i10, i13);
            } else {
                System.arraycopy(bArr, i, bArr2, i8 - (i12 + i2), i2);
            }
            i11 = i12 + i2;
        }
        for (int i14 = i8 - (i10 * 2); i14 != i8; i14 += 2) {
            byte b = bArr2[(i8 - i10) + (i14 / 2)];
            byte[] bArr3 = shadows;
            bArr2[i14] = (byte) (bArr3[b & 15] | (bArr3[(b & 255) >>> 4] << 4));
            bArr2[i14 + 1] = b;
        }
        bArr2[i8 - (i2 * 2)] = (byte) (bArr2[i3] ^ (i9 + 1));
        bArr2[i8 - 1] = (byte) ((bArr2[i4] << 4) | 6);
        if (8 - ((this.bitSize - 1) % 8) != 8) {
            bArr2[0] = (byte) (bArr2[0] & (255 >>> i5));
            bArr2[0] = (byte) ((128 >>> i5) | bArr2[0]);
            i6 = 0;
        } else {
            bArr2[0] = (byte) 0;
            bArr2[1] = (byte) (bArr2[1] | 128);
            i6 = 1;
        }
        return this.engine.processBlock(bArr2, i6, i8 - i6);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        int i = inputBlockSize;
        if (this.forEncryption) {
            i = (inputBlockSize + 1) / 2;
        }
        return i;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : (outputBlockSize + 1) / 2;
    }

    public int getPadBits() {
        return this.padBits;
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters = cipherParameters instanceof ParametersWithRandom ? (RSAKeyParameters) ((ParametersWithRandom) cipherParameters).getParameters() : (RSAKeyParameters) cipherParameters;
        this.engine.init(z, cipherParameters);
        BigInteger modulus = rSAKeyParameters.getModulus();
        this.modulus = modulus;
        this.bitSize = modulus.bitLength();
        this.forEncryption = z;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) {
        return this.forEncryption ? encodeBlock(bArr, i, i2) : decodeBlock(bArr, i, i2);
    }

    public void setPadBits(int i) {
        if (i <= 7) {
            this.padBits = i;
            return;
        }
        throw new IllegalArgumentException("padBits > 7");
    }
}
