package org.bouncycastle.jce.provider;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.DSAKey;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.DSA;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.NullDigest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.signers.DSASigner;
import org.bouncycastle.jce.interfaces.GOST3410Key;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKDSASigner.class */
public class JDKDSASigner extends SignatureSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers {
    private Digest digest;
    private SecureRandom random;
    private DSA signer;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKDSASigner$dsa224.class */
    public static class dsa224 extends JDKDSASigner {
        public dsa224() {
            super(new SHA224Digest(), new DSASigner());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKDSASigner$dsa256.class */
    public static class dsa256 extends JDKDSASigner {
        public dsa256() {
            super(new SHA256Digest(), new DSASigner());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKDSASigner$dsa384.class */
    public static class dsa384 extends JDKDSASigner {
        public dsa384() {
            super(new SHA384Digest(), new DSASigner());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKDSASigner$dsa512.class */
    public static class dsa512 extends JDKDSASigner {
        public dsa512() {
            super(new SHA512Digest(), new DSASigner());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKDSASigner$noneDSA.class */
    public static class noneDSA extends JDKDSASigner {
        public noneDSA() {
            super(new NullDigest(), new DSASigner());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKDSASigner$stdDSA.class */
    public static class stdDSA extends JDKDSASigner {
        public stdDSA() {
            super(new SHA1Digest(), new DSASigner());
        }
    }

    public JDKDSASigner(Digest digest, DSA dsa) {
        this.digest = digest;
        this.signer = dsa;
    }

    private BigInteger[] derDecode(byte[] bArr) {
        ASN1Sequence aSN1Sequence = (ASN1Sequence) ASN1Object.fromByteArray(bArr);
        return new BigInteger[]{((DERInteger) aSN1Sequence.getObjectAt(0)).getValue(), ((DERInteger) aSN1Sequence.getObjectAt(1)).getValue()};
    }

    private byte[] derEncode(BigInteger bigInteger, BigInteger bigInteger2) {
        return new DERSequence(new DERInteger[]{new DERInteger(bigInteger), new DERInteger(bigInteger2)}).getEncoded(ASN1Encodable.DER);
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) {
        AsymmetricKeyParameter generatePrivateKeyParameter = privateKey instanceof GOST3410Key ? GOST3410Util.generatePrivateKeyParameter(privateKey) : DSAUtil.generatePrivateKeyParameter(privateKey);
        SecureRandom secureRandom = this.random;
        AsymmetricKeyParameter asymmetricKeyParameter = generatePrivateKeyParameter;
        if (secureRandom != null) {
            asymmetricKeyParameter = new ParametersWithRandom(generatePrivateKeyParameter, secureRandom);
        }
        this.digest.reset();
        this.signer.init(true, asymmetricKeyParameter);
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) {
        this.random = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) {
        AsymmetricKeyParameter asymmetricKeyParameter;
        if (publicKey instanceof GOST3410Key) {
            asymmetricKeyParameter = GOST3410Util.generatePublicKeyParameter(publicKey);
        } else if (publicKey instanceof DSAKey) {
            asymmetricKeyParameter = DSAUtil.generatePublicKeyParameter(publicKey);
        } else {
            try {
                PublicKey createPublicKeyFromDERStream = JDKKeyFactory.createPublicKeyFromDERStream(publicKey.getEncoded());
                if (!(createPublicKeyFromDERStream instanceof DSAKey)) {
                    throw new InvalidKeyException("can't recognise key type in DSA based signer");
                }
                asymmetricKeyParameter = DSAUtil.generatePublicKeyParameter(createPublicKeyFromDERStream);
            } catch (Exception e) {
                throw new InvalidKeyException("can't recognise key type in DSA based signer");
            }
        }
        this.digest.reset();
        this.signer.init(false, asymmetricKeyParameter);
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public byte[] engineSign() {
        byte[] bArr = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr, 0);
        try {
            BigInteger[] generateSignature = this.signer.generateSignature(bArr);
            return derEncode(generateSignature[0], generateSignature[1]);
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) {
        this.digest.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) {
        this.digest.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) {
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr2, 0);
        try {
            BigInteger[] derDecode = derDecode(bArr);
            return this.signer.verifySignature(bArr2, derDecode[0], derDecode[1]);
        } catch (Exception e) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }
}
