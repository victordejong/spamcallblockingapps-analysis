package org.spongycastle.pqc.crypto.ntru;

import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.math.ntru.polynomial.DenseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;
import org.spongycastle.pqc.math.ntru.polynomial.ProductFormPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.SparseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.TernaryPolynomial;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/ntru/NTRUEngine.class */
public class NTRUEngine implements AsymmetricBlockCipher {
    private boolean forEncryption;
    private NTRUEncryptionParameters params;
    private NTRUEncryptionPrivateKeyParameters privKey;
    private NTRUEncryptionPublicKeyParameters pubKey;
    private SecureRandom random;

    private IntegerPolynomial MGF(byte[] bArr, int i, int i2, boolean z) {
        Digest digest = this.params.hashAlg;
        int digestSize = digest.getDigestSize();
        byte[] bArr2 = new byte[i2 * digestSize];
        byte[] bArr3 = bArr;
        if (z) {
            bArr3 = calcHash(digest, bArr);
        }
        int i3 = 0;
        while (i3 < i2) {
            digest.update(bArr3, 0, bArr3.length);
            putInt(digest, i3);
            System.arraycopy(calcHash(digest), 0, bArr2, i3 * digestSize, digestSize);
            i3++;
        }
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(i);
        byte[] bArr4 = bArr2;
        while (true) {
            int i4 = 0;
            for (int i5 = 0; i5 != bArr4.length; i5++) {
                int i6 = bArr4[i5] & 255;
                if (i6 < 243) {
                    for (int i7 = 0; i7 < 4; i7++) {
                        int i8 = i6 % 3;
                        integerPolynomial.coeffs[i4] = i8 - 1;
                        i4++;
                        if (i4 == i) {
                            return integerPolynomial;
                        }
                        i6 = (i6 - i8) / 3;
                    }
                    integerPolynomial.coeffs[i4] = i6 - 1;
                    i4++;
                    if (i4 == i) {
                        return integerPolynomial;
                    }
                }
            }
            if (i4 >= i) {
                return integerPolynomial;
            }
            digest.update(bArr3, 0, bArr3.length);
            putInt(digest, i3);
            bArr4 = calcHash(digest);
            i3++;
        }
    }

    private byte[] buildSData(byte[] bArr, byte[] bArr2, int i, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[bArr.length + i + bArr3.length + bArr4.length];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr5, bArr.length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr5, bArr.length + bArr2.length, bArr3.length);
        System.arraycopy(bArr4, 0, bArr5, bArr.length + bArr2.length + bArr3.length, bArr4.length);
        return bArr5;
    }

    private byte[] calcHash(Digest digest) {
        byte[] bArr = new byte[digest.getDigestSize()];
        digest.doFinal(bArr, 0);
        return bArr;
    }

    private byte[] calcHash(Digest digest, byte[] bArr) {
        byte[] bArr2 = new byte[digest.getDigestSize()];
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, 0);
        return bArr2;
    }

    private byte[] copyOf(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        if (i >= bArr.length) {
            i = bArr.length;
        }
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    private byte[] decrypt(byte[] bArr, NTRUEncryptionPrivateKeyParameters nTRUEncryptionPrivateKeyParameters) throws InvalidCipherTextException {
        Polynomial polynomial = nTRUEncryptionPrivateKeyParameters.f1745t;
        IntegerPolynomial integerPolynomial = nTRUEncryptionPrivateKeyParameters.f1743fp;
        IntegerPolynomial integerPolynomial2 = nTRUEncryptionPrivateKeyParameters.f1744h;
        int i = this.params.f1736N;
        int i2 = this.params.f1742q;
        int i3 = this.params.f1738db;
        int i4 = this.params.maxMsgLenBytes;
        int i5 = this.params.dm0;
        int i6 = this.params.pkLen;
        int i7 = this.params.minCallsMask;
        boolean z = this.params.hashSeed;
        byte[] bArr2 = this.params.oid;
        if (i4 > 255) {
            throw new DataLengthException("maxMsgLenBytes values bigger than 255 are not supported");
        }
        int i8 = i3 / 8;
        IntegerPolynomial fromBinary = IntegerPolynomial.fromBinary(bArr, i, i2);
        IntegerPolynomial decrypt = decrypt(fromBinary, polynomial, integerPolynomial);
        if (decrypt.count(-1) < i5) {
            throw new InvalidCipherTextException("Less than dm0 coefficients equal -1");
        } else if (decrypt.count(0) < i5) {
            throw new InvalidCipherTextException("Less than dm0 coefficients equal 0");
        } else if (decrypt.count(1) < i5) {
            throw new InvalidCipherTextException("Less than dm0 coefficients equal 1");
        } else {
            IntegerPolynomial integerPolynomial3 = (IntegerPolynomial) fromBinary.clone();
            integerPolynomial3.sub(decrypt);
            integerPolynomial3.modPositive(i2);
            IntegerPolynomial integerPolynomial4 = (IntegerPolynomial) integerPolynomial3.clone();
            integerPolynomial4.modPositive(4);
            decrypt.sub(MGF(integerPolynomial4.toBinary(4), i, i7, z));
            decrypt.mod3();
            byte[] binary3Sves = decrypt.toBinary3Sves();
            byte[] bArr3 = new byte[i8];
            System.arraycopy(binary3Sves, 0, bArr3, 0, i8);
            int i9 = 255 & binary3Sves[i8];
            if (i9 > i4) {
                throw new InvalidCipherTextException("Message too long: " + i9 + ">" + i4);
            }
            byte[] bArr4 = new byte[i9];
            int i10 = i8 + 1;
            System.arraycopy(binary3Sves, i10, bArr4, 0, i9);
            int length = binary3Sves.length;
            int i11 = i10 + i9;
            byte[] bArr5 = new byte[length - i11];
            System.arraycopy(binary3Sves, i11, bArr5, 0, bArr5.length);
            if (!Arrays.constantTimeAreEqual(bArr5, new byte[bArr5.length])) {
                throw new InvalidCipherTextException("The message is not followed by zeroes");
            }
            IntegerPolynomial mult = generateBlindingPoly(buildSData(bArr2, bArr4, i9, bArr3, copyOf(integerPolynomial2.toBinary(i2), i6 / 8)), bArr4).mult(integerPolynomial2);
            mult.modPositive(i2);
            if (mult.equals(integerPolynomial3)) {
                return bArr4;
            }
            throw new InvalidCipherTextException("Invalid message encoding");
        }
    }

    private byte[] encrypt(byte[] bArr, NTRUEncryptionPublicKeyParameters nTRUEncryptionPublicKeyParameters) {
        IntegerPolynomial integerPolynomial = nTRUEncryptionPublicKeyParameters.f1746h;
        int i = this.params.f1736N;
        int i2 = this.params.f1742q;
        int i3 = this.params.maxMsgLenBytes;
        int i4 = this.params.f1738db;
        int i5 = this.params.bufferLenBits;
        int i6 = this.params.dm0;
        int i7 = this.params.pkLen;
        int i8 = this.params.minCallsMask;
        boolean z = this.params.hashSeed;
        byte[] bArr2 = this.params.oid;
        int length = bArr.length;
        if (i3 > 255) {
            throw new IllegalArgumentException("llen values bigger than 1 are not supported");
        } else if (length > i3) {
            throw new DataLengthException("Message too long: " + length + ">" + i3);
        } else {
            while (true) {
                byte[] bArr3 = new byte[i4 / 8];
                this.random.nextBytes(bArr3);
                byte[] bArr4 = new byte[(i3 + 1) - length];
                byte[] bArr5 = new byte[i5 / 8];
                System.arraycopy(bArr3, 0, bArr5, 0, bArr3.length);
                bArr5[bArr3.length] = (byte) length;
                System.arraycopy(bArr, 0, bArr5, bArr3.length + 1, bArr.length);
                System.arraycopy(bArr4, 0, bArr5, bArr3.length + 1 + bArr.length, bArr4.length);
                IntegerPolynomial fromBinary3Sves = IntegerPolynomial.fromBinary3Sves(bArr5, i);
                IntegerPolynomial mult = generateBlindingPoly(buildSData(bArr2, bArr, length, bArr3, copyOf(integerPolynomial.toBinary(i2), i7 / 8)), bArr5).mult(integerPolynomial, i2);
                IntegerPolynomial integerPolynomial2 = (IntegerPolynomial) mult.clone();
                integerPolynomial2.modPositive(4);
                fromBinary3Sves.add(MGF(integerPolynomial2.toBinary(4), i, i8, z));
                fromBinary3Sves.mod3();
                if (fromBinary3Sves.count(-1) >= i6 && fromBinary3Sves.count(0) >= i6 && fromBinary3Sves.count(1) >= i6) {
                    mult.add(fromBinary3Sves, i2);
                    mult.ensurePositive(i2);
                    return mult.toBinary(i2);
                }
            }
        }
    }

    private int[] generateBlindingCoeffs(IndexGenerator indexGenerator, int i) {
        int[] iArr = new int[this.params.f1736N];
        for (int i2 = -1; i2 <= 1; i2 += 2) {
            int i3 = 0;
            while (i3 < i) {
                int nextIndex = indexGenerator.nextIndex();
                if (iArr[nextIndex] == 0) {
                    iArr[nextIndex] = i2;
                    i3++;
                }
            }
        }
        return iArr;
    }

    private Polynomial generateBlindingPoly(byte[] bArr, byte[] bArr2) {
        IndexGenerator indexGenerator = new IndexGenerator(bArr, this.params);
        if (this.params.polyType == 1) {
            return new ProductFormPolynomial(new SparseTernaryPolynomial(generateBlindingCoeffs(indexGenerator, this.params.dr1)), new SparseTernaryPolynomial(generateBlindingCoeffs(indexGenerator, this.params.dr2)), new SparseTernaryPolynomial(generateBlindingCoeffs(indexGenerator, this.params.dr3)));
        }
        int i = this.params.f1741dr;
        boolean z = this.params.sparse;
        int[] generateBlindingCoeffs = generateBlindingCoeffs(indexGenerator, i);
        return z ? new SparseTernaryPolynomial(generateBlindingCoeffs) : new DenseTernaryPolynomial(generateBlindingCoeffs);
    }

    private int log2(int i) {
        if (i == 2048) {
            return 11;
        }
        throw new IllegalStateException("log2 not fully implemented");
    }

    private void putInt(Digest digest, int i) {
        digest.update((byte) (i >> 24));
        digest.update((byte) (i >> 16));
        digest.update((byte) (i >> 8));
        digest.update((byte) i);
    }

    protected IntegerPolynomial decrypt(IntegerPolynomial integerPolynomial, Polynomial polynomial, IntegerPolynomial integerPolynomial2) {
        IntegerPolynomial integerPolynomial3;
        if (this.params.fastFp) {
            IntegerPolynomial mult = polynomial.mult(integerPolynomial, this.params.f1742q);
            mult.mult(3);
            mult.add(integerPolynomial);
            integerPolynomial3 = mult;
        } else {
            integerPolynomial3 = polynomial.mult(integerPolynomial, this.params.f1742q);
        }
        integerPolynomial3.center0(this.params.f1742q);
        integerPolynomial3.mod3();
        if (!this.params.fastFp) {
            integerPolynomial3 = new DenseTernaryPolynomial(integerPolynomial3).mult(integerPolynomial2, 3);
        }
        integerPolynomial3.center0(3);
        return integerPolynomial3;
    }

    protected IntegerPolynomial encrypt(IntegerPolynomial integerPolynomial, TernaryPolynomial ternaryPolynomial, IntegerPolynomial integerPolynomial2) {
        IntegerPolynomial mult = ternaryPolynomial.mult(integerPolynomial2, this.params.f1742q);
        mult.add(integerPolynomial, this.params.f1742q);
        mult.ensurePositive(this.params.f1742q);
        return mult;
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.params.maxMsgLenBytes;
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return ((this.params.f1736N * log2(this.params.f1742q)) + 7) / 8;
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forEncryption = z;
        if (z) {
            if (cipherParameters instanceof ParametersWithRandom) {
                ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
                this.random = parametersWithRandom.getRandom();
                this.pubKey = (NTRUEncryptionPublicKeyParameters) parametersWithRandom.getParameters();
            } else {
                this.random = new SecureRandom();
                this.pubKey = (NTRUEncryptionPublicKeyParameters) cipherParameters;
            }
            this.params = this.pubKey.getParameters();
            return;
        }
        this.privKey = (NTRUEncryptionPrivateKeyParameters) cipherParameters;
        this.params = this.privKey.getParameters();
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return this.forEncryption ? encrypt(bArr2, this.pubKey) : decrypt(bArr2, this.privKey);
    }
}
