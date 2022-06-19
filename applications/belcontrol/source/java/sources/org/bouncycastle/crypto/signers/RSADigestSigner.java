package org.bouncycastle.crypto.signers;

import java.util.Hashtable;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DigestInfo;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.encodings.PKCS1Encoding;
import org.bouncycastle.crypto.engines.RSABlindedEngine;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/signers/RSADigestSigner.class */
public class RSADigestSigner implements Signer {
    private static final Hashtable oidMap;
    private final AlgorithmIdentifier algId;
    private final Digest digest;
    private boolean forSigning;
    private final AsymmetricBlockCipher rsaEngine = new PKCS1Encoding(new RSABlindedEngine());

    static {
        Hashtable hashtable = new Hashtable();
        oidMap = hashtable;
        hashtable.put("RIPEMD128", TeleTrusTObjectIdentifiers.ripemd128);
        hashtable.put("RIPEMD160", TeleTrusTObjectIdentifiers.ripemd160);
        hashtable.put("RIPEMD256", TeleTrusTObjectIdentifiers.ripemd256);
        hashtable.put("SHA-1", X509ObjectIdentifiers.id_SHA1);
        hashtable.put("SHA-224", NISTObjectIdentifiers.id_sha224);
        hashtable.put("SHA-256", NISTObjectIdentifiers.id_sha256);
        hashtable.put("SHA-384", NISTObjectIdentifiers.id_sha384);
        hashtable.put("SHA-512", NISTObjectIdentifiers.id_sha512);
        hashtable.put("MD2", PKCSObjectIdentifiers.md2);
        hashtable.put("MD4", PKCSObjectIdentifiers.md4);
        hashtable.put("MD5", PKCSObjectIdentifiers.md5);
    }

    public RSADigestSigner(Digest digest) {
        this.digest = digest;
        this.algId = new AlgorithmIdentifier((DERObjectIdentifier) oidMap.get(digest.getAlgorithmName()), DERNull.INSTANCE);
    }

    private byte[] derEncode(byte[] bArr) {
        return new DigestInfo(this.algId, bArr).getDEREncoded();
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        if (this.forSigning) {
            byte[] bArr = new byte[this.digest.getDigestSize()];
            this.digest.doFinal(bArr, 0);
            byte[] derEncode = derEncode(bArr);
            return this.rsaEngine.processBlock(derEncode, 0, derEncode.length);
        }
        throw new IllegalStateException("RSADigestSigner not initialised for signature generation.");
    }

    public String getAlgorithmName() {
        return this.digest.getAlgorithmName() + "withRSA";
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forSigning = z;
        AsymmetricKeyParameter asymmetricKeyParameter = cipherParameters instanceof ParametersWithRandom ? (AsymmetricKeyParameter) ((ParametersWithRandom) cipherParameters).getParameters() : (AsymmetricKeyParameter) cipherParameters;
        if (!z || asymmetricKeyParameter.isPrivate()) {
            if (!z && asymmetricKeyParameter.isPrivate()) {
                throw new IllegalArgumentException("verification requires public key");
            }
            reset();
            this.rsaEngine.init(z, cipherParameters);
            return;
        }
        throw new IllegalArgumentException("signing requires private key");
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.digest.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.digest.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        if (!this.forSigning) {
            int digestSize = this.digest.getDigestSize();
            byte[] bArr2 = new byte[digestSize];
            this.digest.doFinal(bArr2, 0);
            try {
                byte[] processBlock = this.rsaEngine.processBlock(bArr, 0, bArr.length);
                byte[] derEncode = derEncode(bArr2);
                if (processBlock.length == derEncode.length) {
                    for (int i = 0; i < processBlock.length; i++) {
                        if (processBlock[i] != derEncode[i]) {
                            return false;
                        }
                    }
                    return true;
                } else if (processBlock.length != derEncode.length - 2) {
                    return false;
                } else {
                    int length = (processBlock.length - digestSize) - 2;
                    int length2 = derEncode.length;
                    derEncode[1] = (byte) (derEncode[1] - 2);
                    derEncode[3] = (byte) (derEncode[3] - 2);
                    for (int i2 = 0; i2 < digestSize; i2++) {
                        if (processBlock[length + i2] != derEncode[((length2 - digestSize) - 2) + i2]) {
                            return false;
                        }
                    }
                    for (int i3 = 0; i3 < length; i3++) {
                        if (processBlock[i3] != derEncode[i3]) {
                            return false;
                        }
                    }
                    return true;
                }
            } catch (Exception e) {
                return false;
            }
        }
        throw new IllegalStateException("RSADigestSigner not initialised for verification");
    }
}
