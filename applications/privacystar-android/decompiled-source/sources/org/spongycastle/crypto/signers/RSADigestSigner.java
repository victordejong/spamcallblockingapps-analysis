package org.spongycastle.crypto.signers;

import java.io.IOException;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DigestInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.spongycastle.pqc.jcajce.spec.SPHINCS256KeyGenParameterSpec;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/signers/RSADigestSigner.class */
public class RSADigestSigner implements Signer {
    private static final Hashtable oidMap = new Hashtable();
    private final AlgorithmIdentifier algId;
    private final Digest digest;
    private boolean forSigning;
    private final AsymmetricBlockCipher rsaEngine;

    static {
        oidMap.put("RIPEMD128", TeleTrusTObjectIdentifiers.ripemd128);
        oidMap.put("RIPEMD160", TeleTrusTObjectIdentifiers.ripemd160);
        oidMap.put("RIPEMD256", TeleTrusTObjectIdentifiers.ripemd256);
        oidMap.put("SHA-1", X509ObjectIdentifiers.id_SHA1);
        oidMap.put(McElieceCCA2KeyGenParameterSpec.SHA224, NISTObjectIdentifiers.id_sha224);
        oidMap.put("SHA-256", NISTObjectIdentifiers.id_sha256);
        oidMap.put(McElieceCCA2KeyGenParameterSpec.SHA384, NISTObjectIdentifiers.id_sha384);
        oidMap.put(McElieceCCA2KeyGenParameterSpec.SHA512, NISTObjectIdentifiers.id_sha512);
        oidMap.put("SHA-512/224", NISTObjectIdentifiers.id_sha512_224);
        oidMap.put("SHA-512/256", NISTObjectIdentifiers.id_sha512_256);
        oidMap.put("SHA3-224", NISTObjectIdentifiers.id_sha3_224);
        oidMap.put(SPHINCS256KeyGenParameterSpec.SHA3_256, NISTObjectIdentifiers.id_sha3_256);
        oidMap.put("SHA3-384", NISTObjectIdentifiers.id_sha3_384);
        oidMap.put("SHA3-512", NISTObjectIdentifiers.id_sha3_512);
        oidMap.put("MD2", PKCSObjectIdentifiers.md2);
        oidMap.put("MD4", PKCSObjectIdentifiers.md4);
        oidMap.put("MD5", PKCSObjectIdentifiers.md5);
    }

    public RSADigestSigner(Digest digest) {
        this(digest, (ASN1ObjectIdentifier) oidMap.get(digest.getAlgorithmName()));
    }

    public RSADigestSigner(Digest digest, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.rsaEngine = new PKCS1Encoding(new RSABlindedEngine());
        this.digest = digest;
        this.algId = new AlgorithmIdentifier(aSN1ObjectIdentifier, DERNull.INSTANCE);
    }

    private byte[] derEncode(byte[] bArr) throws IOException {
        return new DigestInfo(this.algId, bArr).getEncoded(ASN1Encoding.DER);
    }

    @Override // org.spongycastle.crypto.Signer
    public byte[] generateSignature() throws CryptoException, DataLengthException {
        if (!this.forSigning) {
            throw new IllegalStateException("RSADigestSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr, 0);
        try {
            byte[] derEncode = derEncode(bArr);
            return this.rsaEngine.processBlock(derEncode, 0, derEncode.length);
        } catch (IOException e) {
            throw new CryptoException("unable to encode signature: " + e.getMessage(), e);
        }
    }

    public String getAlgorithmName() {
        return this.digest.getAlgorithmName() + "withRSA";
    }

    @Override // org.spongycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forSigning = z;
        AsymmetricKeyParameter asymmetricKeyParameter = cipherParameters instanceof ParametersWithRandom ? (AsymmetricKeyParameter) ((ParametersWithRandom) cipherParameters).getParameters() : (AsymmetricKeyParameter) cipherParameters;
        if (z && !asymmetricKeyParameter.isPrivate()) {
            throw new IllegalArgumentException("signing requires private key");
        } else if (z || !asymmetricKeyParameter.isPrivate()) {
            reset();
            this.rsaEngine.init(z, cipherParameters);
        } else {
            throw new IllegalArgumentException("verification requires public key");
        }
    }

    @Override // org.spongycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
    }

    @Override // org.spongycastle.crypto.Signer
    public void update(byte b) {
        this.digest.update(b);
    }

    @Override // org.spongycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.digest.update(bArr, i, i2);
    }

    @Override // org.spongycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        if (this.forSigning) {
            throw new IllegalStateException("RSADigestSigner not initialised for verification");
        }
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        boolean z = false;
        this.digest.doFinal(bArr2, 0);
        try {
            byte[] processBlock = this.rsaEngine.processBlock(bArr, 0, bArr.length);
            byte[] derEncode = derEncode(bArr2);
            if (processBlock.length == derEncode.length) {
                return Arrays.constantTimeAreEqual(processBlock, derEncode);
            }
            if (processBlock.length == derEncode.length - 2) {
                int length = (processBlock.length - bArr2.length) - 2;
                int length2 = derEncode.length;
                int length3 = bArr2.length;
                derEncode[1] = (byte) (derEncode[1] - 2);
                derEncode[3] = (byte) (derEncode[3] - 2);
                int i = 0;
                for (int i2 = 0; i2 < bArr2.length; i2++) {
                    i |= processBlock[length + i2] ^ derEncode[((length2 - length3) - 2) + i2];
                }
                int i3 = i;
                for (int i4 = 0; i4 < length; i4++) {
                    i3 |= processBlock[i4] ^ derEncode[i4];
                }
                if (i3 == 0) {
                    z = true;
                }
                return z;
            }
            Arrays.constantTimeAreEqual(derEncode, derEncode);
            return false;
        } catch (Exception e) {
            return false;
        }
    }
}
