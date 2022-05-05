package org.spongycastle.crypto.engines;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.spongycastle.crypto.BasicAgreement;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.EphemeralKeyPair;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.KeyParser;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.IESParameters;
import org.spongycastle.crypto.params.IESWithCipherParameters;
import org.spongycastle.crypto.params.KDFParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/IESEngine.class */
public class IESEngine {

    /* renamed from: IV */
    private byte[] f1248IV;

    /* renamed from: V */
    byte[] f1249V;
    BasicAgreement agree;
    BufferedBlockCipher cipher;
    boolean forEncryption;
    DerivationFunction kdf;
    private EphemeralKeyPairGenerator keyPairGenerator;
    private KeyParser keyParser;
    Mac mac;
    byte[] macBuf;
    IESParameters param;
    CipherParameters privParam;
    CipherParameters pubParam;

    public IESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac;
        this.macBuf = new byte[mac.getMacSize()];
        this.cipher = null;
    }

    public IESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac, BufferedBlockCipher bufferedBlockCipher) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac;
        this.macBuf = new byte[mac.getMacSize()];
        this.cipher = bufferedBlockCipher;
    }

    private byte[] decryptBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        int i3;
        byte[] bArr2;
        byte[] bArr3;
        if (i2 < this.f1249V.length + this.mac.getMacSize()) {
            throw new InvalidCipherTextException("Length of input must be greater than the MAC and V combined");
        }
        if (this.cipher == null) {
            byte[] bArr4 = new byte[(i2 - this.f1249V.length) - this.mac.getMacSize()];
            bArr3 = new byte[this.param.getMacKeySize() / 8];
            byte[] bArr5 = new byte[bArr4.length + bArr3.length];
            this.kdf.generateBytes(bArr5, 0, bArr5.length);
            if (this.f1249V.length != 0) {
                System.arraycopy(bArr5, 0, bArr3, 0, bArr3.length);
                System.arraycopy(bArr5, bArr3.length, bArr4, 0, bArr4.length);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, bArr4.length);
                System.arraycopy(bArr5, bArr4.length, bArr3, 0, bArr3.length);
            }
            bArr2 = new byte[bArr4.length];
            for (int i4 = 0; i4 != bArr4.length; i4++) {
                bArr2[i4] = (byte) (bArr[(this.f1249V.length + i) + i4] ^ bArr4[i4]);
            }
            i3 = 0;
        } else {
            byte[] bArr6 = new byte[((IESWithCipherParameters) this.param).getCipherKeySize() / 8];
            bArr3 = new byte[this.param.getMacKeySize() / 8];
            byte[] bArr7 = new byte[bArr6.length + bArr3.length];
            this.kdf.generateBytes(bArr7, 0, bArr7.length);
            System.arraycopy(bArr7, 0, bArr6, 0, bArr6.length);
            System.arraycopy(bArr7, bArr6.length, bArr3, 0, bArr3.length);
            CipherParameters keyParameter = new KeyParameter(bArr6);
            if (this.f1248IV != null) {
                keyParameter = new ParametersWithIV(keyParameter, this.f1248IV);
            }
            this.cipher.init(false, keyParameter);
            bArr2 = new byte[this.cipher.getOutputSize((i2 - this.f1249V.length) - this.mac.getMacSize())];
            i3 = this.cipher.processBytes(bArr, i + this.f1249V.length, (i2 - this.f1249V.length) - this.mac.getMacSize(), bArr2, 0);
        }
        byte[] encodingV = this.param.getEncodingV();
        byte[] bArr8 = null;
        if (this.f1249V.length != 0) {
            bArr8 = getLengthTag(encodingV);
        }
        int i5 = i + i2;
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i5 - this.mac.getMacSize(), i5);
        byte[] bArr9 = new byte[copyOfRange.length];
        this.mac.init(new KeyParameter(bArr3));
        this.mac.update(bArr, i + this.f1249V.length, (i2 - this.f1249V.length) - bArr9.length);
        if (encodingV != null) {
            this.mac.update(encodingV, 0, encodingV.length);
        }
        if (this.f1249V.length != 0) {
            this.mac.update(bArr8, 0, bArr8.length);
        }
        this.mac.doFinal(bArr9, 0);
        if (Arrays.constantTimeAreEqual(copyOfRange, bArr9)) {
            return this.cipher == null ? bArr2 : Arrays.copyOfRange(bArr2, 0, i3 + this.cipher.doFinal(bArr2, i3));
        }
        throw new InvalidCipherTextException("invalid MAC");
    }

    private byte[] encryptBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        byte[] bArr2;
        byte[] bArr3;
        if (this.cipher == null) {
            byte[] bArr4 = new byte[i2];
            bArr2 = new byte[this.param.getMacKeySize() / 8];
            byte[] bArr5 = new byte[bArr4.length + bArr2.length];
            this.kdf.generateBytes(bArr5, 0, bArr5.length);
            if (this.f1249V.length != 0) {
                System.arraycopy(bArr5, 0, bArr2, 0, bArr2.length);
                System.arraycopy(bArr5, bArr2.length, bArr4, 0, bArr4.length);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, bArr4.length);
                System.arraycopy(bArr5, i2, bArr2, 0, bArr2.length);
            }
            byte[] bArr6 = new byte[i2];
            for (int i3 = 0; i3 != i2; i3++) {
                bArr6[i3] = (byte) (bArr[i + i3] ^ bArr4[i3]);
            }
            bArr3 = bArr6;
        } else {
            byte[] bArr7 = new byte[((IESWithCipherParameters) this.param).getCipherKeySize() / 8];
            bArr2 = new byte[this.param.getMacKeySize() / 8];
            byte[] bArr8 = new byte[bArr7.length + bArr2.length];
            this.kdf.generateBytes(bArr8, 0, bArr8.length);
            System.arraycopy(bArr8, 0, bArr7, 0, bArr7.length);
            System.arraycopy(bArr8, bArr7.length, bArr2, 0, bArr2.length);
            if (this.f1248IV != null) {
                this.cipher.init(true, new ParametersWithIV(new KeyParameter(bArr7), this.f1248IV));
            } else {
                this.cipher.init(true, new KeyParameter(bArr7));
            }
            byte[] bArr9 = new byte[this.cipher.getOutputSize(i2)];
            int processBytes = this.cipher.processBytes(bArr, i, i2, bArr9, 0);
            i2 = processBytes + this.cipher.doFinal(bArr9, processBytes);
            bArr3 = bArr9;
        }
        byte[] encodingV = this.param.getEncodingV();
        byte[] bArr10 = null;
        if (this.f1249V.length != 0) {
            bArr10 = getLengthTag(encodingV);
        }
        byte[] bArr11 = new byte[this.mac.getMacSize()];
        this.mac.init(new KeyParameter(bArr2));
        this.mac.update(bArr3, 0, bArr3.length);
        if (encodingV != null) {
            this.mac.update(encodingV, 0, encodingV.length);
        }
        if (this.f1249V.length != 0) {
            this.mac.update(bArr10, 0, bArr10.length);
        }
        this.mac.doFinal(bArr11, 0);
        byte[] bArr12 = new byte[this.f1249V.length + i2 + bArr11.length];
        System.arraycopy(this.f1249V, 0, bArr12, 0, this.f1249V.length);
        System.arraycopy(bArr3, 0, bArr12, this.f1249V.length, i2);
        System.arraycopy(bArr11, 0, bArr12, this.f1249V.length + i2, bArr11.length);
        return bArr12;
    }

    private void extractParams(CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.f1248IV = parametersWithIV.getIV();
            this.param = (IESParameters) parametersWithIV.getParameters();
            return;
        }
        this.f1248IV = null;
        this.param = (IESParameters) cipherParameters;
    }

    public BufferedBlockCipher getCipher() {
        return this.cipher;
    }

    protected byte[] getLengthTag(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        if (bArr != null) {
            Pack.longToBigEndian(bArr.length * 8, bArr2, 0);
        }
        return bArr2;
    }

    public Mac getMac() {
        return this.mac;
    }

    public void init(AsymmetricKeyParameter asymmetricKeyParameter, CipherParameters cipherParameters, KeyParser keyParser) {
        this.forEncryption = false;
        this.privParam = asymmetricKeyParameter;
        this.keyParser = keyParser;
        extractParams(cipherParameters);
    }

    public void init(AsymmetricKeyParameter asymmetricKeyParameter, CipherParameters cipherParameters, EphemeralKeyPairGenerator ephemeralKeyPairGenerator) {
        this.forEncryption = true;
        this.pubParam = asymmetricKeyParameter;
        this.keyPairGenerator = ephemeralKeyPairGenerator;
        extractParams(cipherParameters);
    }

    public void init(boolean z, CipherParameters cipherParameters, CipherParameters cipherParameters2, CipherParameters cipherParameters3) {
        this.forEncryption = z;
        this.privParam = cipherParameters;
        this.pubParam = cipherParameters2;
        this.f1249V = new byte[0];
        extractParams(cipherParameters3);
    }

    public byte[] processBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (this.forEncryption) {
            if (this.keyPairGenerator != null) {
                EphemeralKeyPair generate = this.keyPairGenerator.generate();
                this.privParam = generate.getKeyPair().getPrivate();
                this.f1249V = generate.getEncodedPublicKey();
            }
        } else if (this.keyParser != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i, i2);
            try {
                this.pubParam = this.keyParser.readKey(byteArrayInputStream);
                this.f1249V = Arrays.copyOfRange(bArr, i, (i2 - byteArrayInputStream.available()) + i);
            } catch (IOException e) {
                throw new InvalidCipherTextException("unable to recover ephemeral public key: " + e.getMessage(), e);
            } catch (IllegalArgumentException e2) {
                throw new InvalidCipherTextException("unable to recover ephemeral public key: " + e2.getMessage(), e2);
            }
        }
        this.agree.init(this.privParam);
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(this.agree.getFieldSize(), this.agree.calculateAgreement(this.pubParam));
        byte[] bArr2 = asUnsignedByteArray;
        if (this.f1249V.length != 0) {
            bArr2 = Arrays.concatenate(this.f1249V, asUnsignedByteArray);
            Arrays.fill(asUnsignedByteArray, (byte) 0);
        }
        try {
            this.kdf.init(new KDFParameters(bArr2, this.param.getDerivationV()));
            return this.forEncryption ? encryptBlock(bArr, i, i2) : decryptBlock(bArr, i, i2);
        } finally {
            Arrays.fill(bArr2, (byte) 0);
        }
    }
}
