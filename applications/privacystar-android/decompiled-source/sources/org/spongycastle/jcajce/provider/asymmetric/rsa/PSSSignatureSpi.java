package org.spongycastle.jcajce.provider.asymmetric.rsa;

import com.privacystar.core.util.text.Text;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.PSSSigner;
import org.spongycastle.jcajce.provider.util.DigestFactory;
import org.spongycastle.jcajce.util.BCJcaJceHelper;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.spongycastle.pqc.jcajce.spec.SPHINCS256KeyGenParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi.class */
public class PSSSignatureSpi extends SignatureSpi {
    private Digest contentDigest;
    private AlgorithmParameters engineParams;
    private final JcaJceHelper helper;
    private boolean isRaw;
    private Digest mgfDigest;
    private PSSParameterSpec originalSpec;
    private PSSParameterSpec paramSpec;
    private PSSSigner pss;
    private int saltLength;
    private AsymmetricBlockCipher signer;
    private byte trailer;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest.class */
    public class NullPssDigest implements Digest {
        private Digest baseDigest;
        private ByteArrayOutputStream bOut = new ByteArrayOutputStream();
        private boolean oddTime = true;

        public NullPssDigest(Digest digest) {
            this.baseDigest = digest;
        }

        @Override // org.spongycastle.crypto.Digest
        public int doFinal(byte[] bArr, int i) {
            byte[] byteArray = this.bOut.toByteArray();
            if (this.oddTime) {
                System.arraycopy(byteArray, 0, bArr, i, byteArray.length);
            } else {
                this.baseDigest.update(byteArray, 0, byteArray.length);
                this.baseDigest.doFinal(bArr, i);
            }
            reset();
            this.oddTime = !this.oddTime;
            return byteArray.length;
        }

        @Override // org.spongycastle.crypto.Digest
        public String getAlgorithmName() {
            return Text.NULL;
        }

        public int getByteLength() {
            return 0;
        }

        @Override // org.spongycastle.crypto.Digest
        public int getDigestSize() {
            return this.baseDigest.getDigestSize();
        }

        @Override // org.spongycastle.crypto.Digest
        public void reset() {
            this.bOut.reset();
            this.baseDigest.reset();
        }

        @Override // org.spongycastle.crypto.Digest
        public void update(byte b) {
            this.bOut.write(b);
        }

        @Override // org.spongycastle.crypto.Digest
        public void update(byte[] bArr, int i, int i2) {
            this.bOut.write(bArr, i, i2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$PSSwithRSA.class */
    public static class PSSwithRSA extends PSSSignatureSpi {
        public PSSwithRSA() {
            super(new RSABlindedEngine(), null);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA1withRSA.class */
    public static class SHA1withRSA extends PSSSignatureSpi {
        public SHA1withRSA() {
            super(new RSABlindedEngine(), PSSParameterSpec.DEFAULT);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA224withRSA.class */
    public static class SHA224withRSA extends PSSSignatureSpi {
        public SHA224withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec(McElieceCCA2KeyGenParameterSpec.SHA224, "MGF1", new MGF1ParameterSpec(McElieceCCA2KeyGenParameterSpec.SHA224), 28, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA256withRSA.class */
    public static class SHA256withRSA extends PSSSignatureSpi {
        public SHA256withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec("SHA-256", "MGF1", new MGF1ParameterSpec("SHA-256"), 32, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA384withRSA.class */
    public static class SHA384withRSA extends PSSSignatureSpi {
        public SHA384withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec(McElieceCCA2KeyGenParameterSpec.SHA384, "MGF1", new MGF1ParameterSpec(McElieceCCA2KeyGenParameterSpec.SHA384), 48, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA3_224withRSA.class */
    public static class SHA3_224withRSA extends PSSSignatureSpi {
        public SHA3_224withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec("SHA3-224", "MGF1", new MGF1ParameterSpec("SHA3-224"), 28, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA3_256withRSA.class */
    public static class SHA3_256withRSA extends PSSSignatureSpi {
        public SHA3_256withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec(SPHINCS256KeyGenParameterSpec.SHA3_256, "MGF1", new MGF1ParameterSpec(SPHINCS256KeyGenParameterSpec.SHA3_256), 32, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA3_384withRSA.class */
    public static class SHA3_384withRSA extends PSSSignatureSpi {
        public SHA3_384withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec("SHA3-384", "MGF1", new MGF1ParameterSpec("SHA3-384"), 48, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA3_512withRSA.class */
    public static class SHA3_512withRSA extends PSSSignatureSpi {
        public SHA3_512withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec("SHA3-512", "MGF1", new MGF1ParameterSpec("SHA3-512"), 64, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA512_224withRSA.class */
    public static class SHA512_224withRSA extends PSSSignatureSpi {
        public SHA512_224withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec("SHA-512(224)", "MGF1", new MGF1ParameterSpec("SHA-512(224)"), 28, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA512_256withRSA.class */
    public static class SHA512_256withRSA extends PSSSignatureSpi {
        public SHA512_256withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec("SHA-512(256)", "MGF1", new MGF1ParameterSpec("SHA-512(256)"), 32, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA512withRSA.class */
    public static class SHA512withRSA extends PSSSignatureSpi {
        public SHA512withRSA() {
            super(new RSABlindedEngine(), new PSSParameterSpec(McElieceCCA2KeyGenParameterSpec.SHA512, "MGF1", new MGF1ParameterSpec(McElieceCCA2KeyGenParameterSpec.SHA512), 64, 1));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$nonePSS.class */
    public static class nonePSS extends PSSSignatureSpi {
        public nonePSS() {
            super(new RSABlindedEngine(), null, true);
        }
    }

    protected PSSSignatureSpi(AsymmetricBlockCipher asymmetricBlockCipher, PSSParameterSpec pSSParameterSpec) {
        this(asymmetricBlockCipher, pSSParameterSpec, false);
    }

    protected PSSSignatureSpi(AsymmetricBlockCipher asymmetricBlockCipher, PSSParameterSpec pSSParameterSpec, boolean z) {
        this.helper = new BCJcaJceHelper();
        this.signer = asymmetricBlockCipher;
        this.originalSpec = pSSParameterSpec;
        if (pSSParameterSpec == null) {
            this.paramSpec = PSSParameterSpec.DEFAULT;
        } else {
            this.paramSpec = pSSParameterSpec;
        }
        this.mgfDigest = DigestFactory.getDigest(this.paramSpec.getDigestAlgorithm());
        this.saltLength = this.paramSpec.getSaltLength();
        this.trailer = getTrailer(this.paramSpec.getTrailerField());
        this.isRaw = z;
        setupContentDigest();
    }

    private byte getTrailer(int i) {
        if (i == 1) {
            return (byte) -68;
        }
        throw new IllegalArgumentException("unknown trailer field");
    }

    private void setupContentDigest() {
        if (this.isRaw) {
            this.contentDigest = new NullPssDigest(this.mgfDigest);
        } else {
            this.contentDigest = this.mgfDigest;
        }
    }

    @Override // java.security.SignatureSpi
    protected Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected AlgorithmParameters engineGetParameters() {
        if (this.engineParams == null && this.paramSpec != null) {
            try {
                this.engineParams = this.helper.createAlgorithmParameters("PSS");
                this.engineParams.init(this.paramSpec);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.engineParams;
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof RSAPrivateKey)) {
            throw new InvalidKeyException("Supplied key is not a RSAPrivateKey instance");
        }
        this.pss = new PSSSigner(this.signer, this.contentDigest, this.mgfDigest, this.saltLength, this.trailer);
        this.pss.init(true, RSAUtil.generatePrivateKeyParameter((RSAPrivateKey) privateKey));
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        if (!(privateKey instanceof RSAPrivateKey)) {
            throw new InvalidKeyException("Supplied key is not a RSAPrivateKey instance");
        }
        this.pss = new PSSSigner(this.signer, this.contentDigest, this.mgfDigest, this.saltLength, this.trailer);
        this.pss.init(true, new ParametersWithRandom(RSAUtil.generatePrivateKeyParameter((RSAPrivateKey) privateKey), secureRandom));
    }

    @Override // java.security.SignatureSpi
    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof RSAPublicKey)) {
            throw new InvalidKeyException("Supplied key is not a RSAPublicKey instance");
        }
        this.pss = new PSSSigner(this.signer, this.contentDigest, this.mgfDigest, this.saltLength, this.trailer);
        this.pss.init(false, RSAUtil.generatePublicKeyParameter((RSAPublicKey) publicKey));
    }

    @Override // java.security.SignatureSpi
    protected void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        if (algorithmParameterSpec instanceof PSSParameterSpec) {
            PSSParameterSpec pSSParameterSpec = (PSSParameterSpec) algorithmParameterSpec;
            if (this.originalSpec != null && !DigestFactory.isSameDigest(this.originalSpec.getDigestAlgorithm(), pSSParameterSpec.getDigestAlgorithm())) {
                throw new InvalidAlgorithmParameterException("parameter must be using " + this.originalSpec.getDigestAlgorithm());
            } else if (!pSSParameterSpec.getMGFAlgorithm().equalsIgnoreCase("MGF1") && !pSSParameterSpec.getMGFAlgorithm().equals(PKCSObjectIdentifiers.id_mgf1.getId())) {
                throw new InvalidAlgorithmParameterException("unknown mask generation function specified");
            } else if (!(pSSParameterSpec.getMGFParameters() instanceof MGF1ParameterSpec)) {
                throw new InvalidAlgorithmParameterException("unknown MGF parameters");
            } else {
                MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) pSSParameterSpec.getMGFParameters();
                if (!DigestFactory.isSameDigest(mGF1ParameterSpec.getDigestAlgorithm(), pSSParameterSpec.getDigestAlgorithm())) {
                    throw new InvalidAlgorithmParameterException("digest algorithm for MGF should be the same as for PSS parameters.");
                }
                Digest digest = DigestFactory.getDigest(mGF1ParameterSpec.getDigestAlgorithm());
                if (digest == null) {
                    throw new InvalidAlgorithmParameterException("no match on MGF digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
                }
                this.engineParams = null;
                this.paramSpec = pSSParameterSpec;
                this.mgfDigest = digest;
                this.saltLength = this.paramSpec.getSaltLength();
                this.trailer = getTrailer(this.paramSpec.getTrailerField());
                setupContentDigest();
            }
        } else {
            throw new InvalidAlgorithmParameterException("Only PSSParameterSpec supported");
        }
    }

    @Override // java.security.SignatureSpi
    protected byte[] engineSign() throws SignatureException {
        try {
            return this.pss.generateSignature();
        } catch (CryptoException e) {
            throw new SignatureException(e.getMessage());
        }
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte b) throws SignatureException {
        this.pss.update(b);
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.pss.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    protected boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.pss.verifySignature(bArr);
    }
}
