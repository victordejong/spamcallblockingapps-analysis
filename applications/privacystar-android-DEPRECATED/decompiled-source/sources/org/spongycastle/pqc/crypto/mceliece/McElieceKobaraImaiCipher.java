package org.spongycastle.pqc.crypto.mceliece;

import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.prng.DigestRandomGenerator;
import org.spongycastle.pqc.crypto.MessageEncryptor;
import org.spongycastle.pqc.math.linearalgebra.ByteUtils;
import org.spongycastle.pqc.math.linearalgebra.GF2Vector;
import org.spongycastle.pqc.math.linearalgebra.IntegerFunctions;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher.class */
public class McElieceKobaraImaiCipher implements MessageEncryptor {
    private static final String DEFAULT_PRNG_NAME = "SHA1PRNG";
    public static final String OID = "1.3.6.1.4.1.8301.3.1.3.4.2.3";
    public static final byte[] PUBLIC_CONSTANT = "a predetermined public constant".getBytes();
    private boolean forEncryption;

    /* renamed from: k */
    private int f1705k;
    McElieceCCA2KeyParameters key;
    private Digest messDigest;

    /* renamed from: n */
    private int f1706n;

    /* renamed from: sr */
    private SecureRandom f1707sr;

    /* renamed from: t */
    private int f1708t;

    private void initCipherDecrypt(McElieceCCA2PrivateKeyParameters mcElieceCCA2PrivateKeyParameters) {
        this.messDigest = Utils.getDigest(mcElieceCCA2PrivateKeyParameters.getDigest());
        this.f1706n = mcElieceCCA2PrivateKeyParameters.getN();
        this.f1705k = mcElieceCCA2PrivateKeyParameters.getK();
        this.f1708t = mcElieceCCA2PrivateKeyParameters.getT();
    }

    private void initCipherEncrypt(McElieceCCA2PublicKeyParameters mcElieceCCA2PublicKeyParameters) {
        this.messDigest = Utils.getDigest(mcElieceCCA2PublicKeyParameters.getDigest());
        this.f1706n = mcElieceCCA2PublicKeyParameters.getN();
        this.f1705k = mcElieceCCA2PublicKeyParameters.getK();
        this.f1708t = mcElieceCCA2PublicKeyParameters.getT();
    }

    public int getKeySize(McElieceCCA2KeyParameters mcElieceCCA2KeyParameters) {
        if (mcElieceCCA2KeyParameters instanceof McElieceCCA2PublicKeyParameters) {
            return ((McElieceCCA2PublicKeyParameters) mcElieceCCA2KeyParameters).getN();
        }
        if (mcElieceCCA2KeyParameters instanceof McElieceCCA2PrivateKeyParameters) {
            return ((McElieceCCA2PrivateKeyParameters) mcElieceCCA2KeyParameters).getN();
        }
        throw new IllegalArgumentException("unsupported type");
    }

    @Override // org.spongycastle.pqc.crypto.MessageEncryptor
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forEncryption = z;
        if (!z) {
            this.key = (McElieceCCA2PrivateKeyParameters) cipherParameters;
            initCipherDecrypt((McElieceCCA2PrivateKeyParameters) this.key);
        } else if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.f1707sr = parametersWithRandom.getRandom();
            this.key = (McElieceCCA2PublicKeyParameters) parametersWithRandom.getParameters();
            initCipherEncrypt((McElieceCCA2PublicKeyParameters) this.key);
        } else {
            this.f1707sr = new SecureRandom();
            this.key = (McElieceCCA2PublicKeyParameters) cipherParameters;
            initCipherEncrypt((McElieceCCA2PublicKeyParameters) this.key);
        }
    }

    @Override // org.spongycastle.pqc.crypto.MessageEncryptor
    public byte[] messageDecrypt(byte[] bArr) throws InvalidCipherTextException {
        byte[] bArr2;
        byte[] bArr3;
        if (this.forEncryption) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i = this.f1706n >> 3;
        if (bArr.length < i) {
            throw new InvalidCipherTextException("Bad Padding: Ciphertext too short.");
        }
        int digestSize = this.messDigest.getDigestSize();
        int i2 = this.f1705k >> 3;
        int length = bArr.length - i;
        if (length > 0) {
            byte[][] split = ByteUtils.split(bArr, length);
            bArr3 = split[0];
            bArr2 = split[1];
        } else {
            bArr3 = new byte[0];
            bArr2 = bArr;
        }
        GF2Vector[] decryptionPrimitive = McElieceCCA2Primitives.decryptionPrimitive((McElieceCCA2PrivateKeyParameters) this.key, GF2Vector.OS2VP(this.f1706n, bArr2));
        byte[] encoded = decryptionPrimitive[0].getEncoded();
        GF2Vector gF2Vector = decryptionPrimitive[1];
        byte[] bArr4 = encoded;
        if (encoded.length > i2) {
            bArr4 = ByteUtils.subArray(encoded, 0, i2);
        }
        byte[] concatenate = ByteUtils.concatenate(ByteUtils.concatenate(bArr3, Conversions.decode(this.f1706n, this.f1708t, gF2Vector)), bArr4);
        int length2 = concatenate.length - digestSize;
        byte[][] split2 = ByteUtils.split(concatenate, digestSize);
        byte[] bArr5 = split2[0];
        byte[] bArr6 = split2[1];
        byte[] bArr7 = new byte[this.messDigest.getDigestSize()];
        this.messDigest.update(bArr6, 0, bArr6.length);
        this.messDigest.doFinal(bArr7, 0);
        while (true) {
            digestSize--;
            if (digestSize < 0) {
                break;
            }
            bArr7[digestSize] = (byte) (bArr7[digestSize] ^ bArr5[digestSize]);
        }
        DigestRandomGenerator digestRandomGenerator = new DigestRandomGenerator(new SHA1Digest());
        digestRandomGenerator.addSeedMaterial(bArr7);
        byte[] bArr8 = new byte[length2];
        digestRandomGenerator.nextBytes(bArr8);
        for (int i3 = length2 - 1; i3 >= 0; i3--) {
            bArr8[i3] = (byte) (bArr8[i3] ^ bArr6[i3]);
        }
        if (bArr8.length < length2) {
            throw new InvalidCipherTextException("Bad Padding: invalid ciphertext");
        }
        byte[][] split3 = ByteUtils.split(bArr8, length2 - PUBLIC_CONSTANT.length);
        byte[] bArr9 = split3[0];
        if (ByteUtils.equals(split3[1], PUBLIC_CONSTANT)) {
            return bArr9;
        }
        throw new InvalidCipherTextException("Bad Padding: invalid ciphertext");
    }

    @Override // org.spongycastle.pqc.crypto.MessageEncryptor
    public byte[] messageEncrypt(byte[] bArr) {
        if (!this.forEncryption) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int digestSize = this.messDigest.getDigestSize();
        int i = this.f1705k >> 3;
        int bitLength = (IntegerFunctions.binomial(this.f1706n, this.f1708t).bitLength() - 1) >> 3;
        int length = ((i + bitLength) - digestSize) - PUBLIC_CONSTANT.length;
        int i2 = length;
        if (bArr.length > length) {
            i2 = bArr.length;
        }
        int length2 = PUBLIC_CONSTANT.length + i2;
        int i3 = ((length2 + digestSize) - i) - bitLength;
        byte[] bArr2 = new byte[length2];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(PUBLIC_CONSTANT, 0, bArr2, i2, PUBLIC_CONSTANT.length);
        byte[] bArr3 = new byte[digestSize];
        this.f1707sr.nextBytes(bArr3);
        DigestRandomGenerator digestRandomGenerator = new DigestRandomGenerator(new SHA1Digest());
        digestRandomGenerator.addSeedMaterial(bArr3);
        byte[] bArr4 = new byte[length2];
        digestRandomGenerator.nextBytes(bArr4);
        for (int i4 = length2 - 1; i4 >= 0; i4--) {
            bArr4[i4] = (byte) (bArr4[i4] ^ bArr2[i4]);
        }
        byte[] bArr5 = new byte[this.messDigest.getDigestSize()];
        this.messDigest.update(bArr4, 0, bArr4.length);
        this.messDigest.doFinal(bArr5, 0);
        for (int i5 = digestSize - 1; i5 >= 0; i5--) {
            bArr5[i5] = (byte) (bArr5[i5] ^ bArr3[i5]);
        }
        byte[] concatenate = ByteUtils.concatenate(bArr5, bArr4);
        byte[] bArr6 = new byte[0];
        if (i3 > 0) {
            bArr6 = new byte[i3];
            System.arraycopy(concatenate, 0, bArr6, 0, i3);
        }
        byte[] bArr7 = new byte[bitLength];
        System.arraycopy(concatenate, i3, bArr7, 0, bitLength);
        byte[] bArr8 = new byte[i];
        System.arraycopy(concatenate, bitLength + i3, bArr8, 0, i);
        byte[] encoded = McElieceCCA2Primitives.encryptionPrimitive((McElieceCCA2PublicKeyParameters) this.key, GF2Vector.OS2VP(this.f1705k, bArr8), Conversions.encode(this.f1706n, this.f1708t, bArr7)).getEncoded();
        return i3 > 0 ? ByteUtils.concatenate(bArr6, encoded) : encoded;
    }
}
