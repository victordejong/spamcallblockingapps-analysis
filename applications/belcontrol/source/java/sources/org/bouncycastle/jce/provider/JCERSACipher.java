package org.bouncycastle.jce.provider;

import com.millennialmedia.internal.PlayList;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.encodings.ISO9796d1Encoding;
import org.bouncycastle.crypto.encodings.OAEPEncoding;
import org.bouncycastle.crypto.encodings.PKCS1Encoding;
import org.bouncycastle.crypto.engines.RSABlindedEngine;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCERSACipher.class */
public class JCERSACipher extends WrapCipherSpi {
    private ByteArrayOutputStream bOut;
    private AsymmetricBlockCipher cipher;
    private AlgorithmParameters engineParams;
    private AlgorithmParameterSpec paramSpec;
    private boolean privateKeyOnly;
    private boolean publicKeyOnly;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCERSACipher$ISO9796d1Padding.class */
    public static class ISO9796d1Padding extends JCERSACipher {
        public ISO9796d1Padding() {
            super(new ISO9796d1Encoding(new RSABlindedEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCERSACipher$NoPadding.class */
    public static class NoPadding extends JCERSACipher {
        public NoPadding() {
            super(new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCERSACipher$OAEPPadding.class */
    public static class OAEPPadding extends JCERSACipher {
        public OAEPPadding() {
            super(OAEPParameterSpec.DEFAULT);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCERSACipher$PKCS1v1_5Padding.class */
    public static class PKCS1v1_5Padding extends JCERSACipher {
        public PKCS1v1_5Padding() {
            super(new PKCS1Encoding(new RSABlindedEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCERSACipher$PKCS1v1_5Padding_PrivateOnly.class */
    public static class PKCS1v1_5Padding_PrivateOnly extends JCERSACipher {
        public PKCS1v1_5Padding_PrivateOnly() {
            super(false, true, new PKCS1Encoding(new RSABlindedEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCERSACipher$PKCS1v1_5Padding_PublicOnly.class */
    public static class PKCS1v1_5Padding_PublicOnly extends JCERSACipher {
        public PKCS1v1_5Padding_PublicOnly() {
            super(true, false, new PKCS1Encoding(new RSABlindedEngine()));
        }
    }

    public JCERSACipher(OAEPParameterSpec oAEPParameterSpec) {
        this.publicKeyOnly = false;
        this.privateKeyOnly = false;
        this.bOut = new ByteArrayOutputStream();
        try {
            initFromSpec(oAEPParameterSpec);
        } catch (NoSuchPaddingException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    public JCERSACipher(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.publicKeyOnly = false;
        this.privateKeyOnly = false;
        this.bOut = new ByteArrayOutputStream();
        this.cipher = asymmetricBlockCipher;
    }

    public JCERSACipher(boolean z, boolean z2, AsymmetricBlockCipher asymmetricBlockCipher) {
        this.publicKeyOnly = false;
        this.privateKeyOnly = false;
        this.bOut = new ByteArrayOutputStream();
        this.publicKeyOnly = z;
        this.privateKeyOnly = z2;
        this.cipher = asymmetricBlockCipher;
    }

    private void initFromSpec(OAEPParameterSpec oAEPParameterSpec) {
        MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) oAEPParameterSpec.getMGFParameters();
        Digest digest = JCEDigestUtil.getDigest(mGF1ParameterSpec.getDigestAlgorithm());
        if (digest != null) {
            this.cipher = new OAEPEncoding(new RSABlindedEngine(), digest, ((PSource.PSpecified) oAEPParameterSpec.getPSource()).getValue());
            this.paramSpec = oAEPParameterSpec;
            return;
        }
        throw new NoSuchPaddingException("no match on OAEP constructor for digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (bArr != null) {
            this.bOut.write(bArr, i, i2);
        }
        if (this.cipher instanceof RSABlindedEngine) {
            if (this.bOut.size() > this.cipher.getInputBlockSize() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
            }
        } else if (this.bOut.size() > this.cipher.getInputBlockSize()) {
            throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
        }
        try {
            byte[] byteArray = this.bOut.toByteArray();
            this.bOut.reset();
            byte[] processBlock = this.cipher.processBlock(byteArray, 0, byteArray.length);
            for (int i4 = 0; i4 != processBlock.length; i4++) {
                bArr2[i3 + i4] = processBlock[i4];
            }
            return processBlock.length;
        } catch (InvalidCipherTextException e) {
            throw new BadPaddingException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            this.bOut.write(bArr, i, i2);
        }
        if (this.cipher instanceof RSABlindedEngine) {
            if (this.bOut.size() > this.cipher.getInputBlockSize() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
            }
        } else if (this.bOut.size() > this.cipher.getInputBlockSize()) {
            throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
        }
        try {
            byte[] byteArray = this.bOut.toByteArray();
            this.bOut.reset();
            return this.cipher.processBlock(byteArray, 0, byteArray.length);
        } catch (InvalidCipherTextException e) {
            throw new BadPaddingException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        try {
            return this.cipher.getInputBlockSize();
        } catch (NullPointerException e) {
            throw new IllegalStateException("RSA Cipher not initialised");
        }
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        return null;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        BigInteger modulus;
        if (key instanceof RSAPrivateKey) {
            modulus = ((RSAPrivateKey) key).getModulus();
        } else if (!(key instanceof RSAPublicKey)) {
            throw new IllegalArgumentException("not an RSA key!");
        } else {
            modulus = ((RSAPublicKey) key).getModulus();
        }
        return modulus.bitLength();
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        try {
            return this.cipher.getOutputBlockSize();
        } catch (NullPointerException e) {
            throw new IllegalStateException("RSA Cipher not initialised");
        }
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() {
        if (this.engineParams == null && this.paramSpec != null) {
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("OAEP", BouncyCastleProvider.PROVIDER_NAME);
                this.engineParams = algorithmParameters;
                algorithmParameters.init(this.paramSpec);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.engineParams;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(OAEPParameterSpec.class);
            } catch (InvalidParameterSpecException e) {
                throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + e.toString(), e);
            }
        } else {
            parameterSpec = null;
        }
        this.engineParams = algorithmParameters;
        engineInit(i, key, parameterSpec, secureRandom);
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, SecureRandom secureRandom) {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new RuntimeException("Eeeek! " + e.toString(), e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [javax.crypto.spec.OAEPParameterSpec, boolean] */
    /* JADX WARN: Type inference failed for: r0v17, types: [javax.crypto.spec.OAEPParameterSpec, boolean] */
    /* JADX WARN: Type inference failed for: r0v20, types: [javax.crypto.spec.OAEPParameterSpec, org.bouncycastle.crypto.Digest] */
    /* JADX WARN: Type inference failed for: r0v21, types: [javax.crypto.spec.OAEPParameterSpec, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v26, types: [javax.crypto.spec.OAEPParameterSpec, org.bouncycastle.crypto.Digest] */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.lang.StringBuilder, java.security.spec.MGF1ParameterSpec] */
    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        CipherParameters cipherParameters;
        AsymmetricBlockCipher asymmetricBlockCipher;
        if (algorithmParameterSpec == null || (algorithmParameterSpec instanceof OAEPParameterSpec)) {
            if (key instanceof RSAPublicKey) {
                if (this.privateKeyOnly) {
                    throw new InvalidKeyException("mode 1 requires RSAPrivateKey");
                }
                cipherParameters = RSAUtil.generatePublicKeyParameter((RSAPublicKey) key);
            } else if (!(key instanceof RSAPrivateKey)) {
                throw new InvalidKeyException("unknown key type passed to RSA");
            } else {
                if (this.publicKeyOnly) {
                    throw new InvalidKeyException("mode 2 requires RSAPublicKey");
                }
                cipherParameters = RSAUtil.generatePrivateKeyParameter((RSAPrivateKey) key);
            }
            if (algorithmParameterSpec != null) {
                this.paramSpec = algorithmParameterSpec;
                ?? equalsIgnoreCase = ((OAEPParameterSpec) algorithmParameterSpec).getMGFAlgorithm().equalsIgnoreCase("MGF1");
                OAEPParameterSpec oAEPParameterSpec = equalsIgnoreCase;
                if (equalsIgnoreCase == 0) {
                    boolean equals = equalsIgnoreCase.getMGFAlgorithm().equals(PKCSObjectIdentifiers.id_mgf1.getId());
                    oAEPParameterSpec = equals;
                    if (!equals) {
                        throw new InvalidAlgorithmParameterException("unknown mask generation function specified");
                    }
                }
                ?? r0 = oAEPParameterSpec.getMGFParameters() instanceof MGF1ParameterSpec;
                if (r0 == 0) {
                    throw new InvalidAlgorithmParameterException("unkown MGF parameters");
                }
                ?? digest = JCEDigestUtil.getDigest(r0.getDigestAlgorithm());
                if (digest == 0) {
                    ?? sb = new StringBuilder();
                    sb.append("no match on digest algorithm: ");
                    sb.append(sb.getDigestAlgorithm());
                    throw new InvalidAlgorithmParameterException(sb.toString());
                }
                ?? digest2 = JCEDigestUtil.getDigest(((MGF1ParameterSpec) digest.getMGFParameters()).getDigestAlgorithm());
                if (digest2 == 0) {
                    ?? sb2 = new StringBuilder();
                    sb2.append("no match on MGF digest algorithm: ");
                    sb2.append(sb2.getDigestAlgorithm());
                    throw new InvalidAlgorithmParameterException(sb2.toString());
                }
                this.cipher = new OAEPEncoding(new RSABlindedEngine(), digest2, digest2, ((PSource.PSpecified) digest2.getPSource()).getValue());
            }
            CipherParameters cipherParameters2 = cipherParameters;
            if (!(this.cipher instanceof RSABlindedEngine)) {
                cipherParameters2 = secureRandom != null ? new ParametersWithRandom(cipherParameters, secureRandom) : new ParametersWithRandom(cipherParameters, new SecureRandom());
            }
            boolean z = true;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            throw new InvalidParameterException("unknown opmode " + i + " passed to RSA");
                        }
                    }
                }
                asymmetricBlockCipher = this.cipher;
                z = false;
                asymmetricBlockCipher.init(z, cipherParameters2);
                return;
            }
            asymmetricBlockCipher = this.cipher;
            asymmetricBlockCipher.init(z, cipherParameters2);
            return;
        }
        throw new IllegalArgumentException("unknown parameter type.");
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public void engineSetMode(String str) {
        String upperCase = Strings.toUpperCase(str);
        if (upperCase.equals("NONE") || upperCase.equals("ECB")) {
            return;
        }
        if (upperCase.equals("1")) {
            this.privateKeyOnly = true;
            this.publicKeyOnly = false;
        } else if (upperCase.equals(PlayList.VERSION)) {
            this.privateKeyOnly = false;
            this.publicKeyOnly = true;
        } else {
            throw new NoSuchAlgorithmException("can't support mode " + str);
        }
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public void engineSetPadding(String str) {
        OAEPParameterSpec oAEPParameterSpec;
        AsymmetricBlockCipher iSO9796d1Encoding;
        String upperCase = Strings.toUpperCase(str);
        if (upperCase.equals("NOPADDING")) {
            iSO9796d1Encoding = new RSABlindedEngine();
        } else if (upperCase.equals("PKCS1PADDING")) {
            iSO9796d1Encoding = new PKCS1Encoding(new RSABlindedEngine());
        } else if (!upperCase.equals("ISO9796-1PADDING")) {
            if (upperCase.equals("OAEPWITHMD5ANDMGF1PADDING")) {
                oAEPParameterSpec = new OAEPParameterSpec("MD5", "MGF1", new MGF1ParameterSpec("MD5"), PSource.PSpecified.DEFAULT);
            } else if (upperCase.equals("OAEPPADDING") || upperCase.equals("OAEPWITHSHA1ANDMGF1PADDING") || upperCase.equals("OAEPWITHSHA-1ANDMGF1PADDING")) {
                oAEPParameterSpec = OAEPParameterSpec.DEFAULT;
            } else if (upperCase.equals("OAEPWITHSHA224ANDMGF1PADDING") || upperCase.equals("OAEPWITHSHA-224ANDMGF1PADDING")) {
                oAEPParameterSpec = new OAEPParameterSpec("SHA-224", "MGF1", new MGF1ParameterSpec("SHA-224"), PSource.PSpecified.DEFAULT);
            } else if (upperCase.equals("OAEPWITHSHA256ANDMGF1PADDING") || upperCase.equals("OAEPWITHSHA-256ANDMGF1PADDING")) {
                oAEPParameterSpec = new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT);
            } else if (upperCase.equals("OAEPWITHSHA384ANDMGF1PADDING") || upperCase.equals("OAEPWITHSHA-384ANDMGF1PADDING")) {
                oAEPParameterSpec = new OAEPParameterSpec("SHA-384", "MGF1", MGF1ParameterSpec.SHA384, PSource.PSpecified.DEFAULT);
            } else if (!upperCase.equals("OAEPWITHSHA512ANDMGF1PADDING") && !upperCase.equals("OAEPWITHSHA-512ANDMGF1PADDING")) {
                throw new NoSuchPaddingException(str + " unavailable with RSA.");
            } else {
                oAEPParameterSpec = new OAEPParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, PSource.PSpecified.DEFAULT);
            }
            initFromSpec(oAEPParameterSpec);
            return;
        } else {
            iSO9796d1Encoding = new ISO9796d1Encoding(new RSABlindedEngine());
        }
        this.cipher = iSO9796d1Encoding;
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.bOut.write(bArr, i, i2);
        if (this.cipher instanceof RSABlindedEngine) {
            if (this.bOut.size() > this.cipher.getInputBlockSize() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
            }
            return 0;
        } else if (this.bOut.size() > this.cipher.getInputBlockSize()) {
            throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
        } else {
            return 0;
        }
    }

    @Override // org.bouncycastle.jce.provider.WrapCipherSpi, javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        this.bOut.write(bArr, i, i2);
        if (this.cipher instanceof RSABlindedEngine) {
            if (this.bOut.size() > this.cipher.getInputBlockSize() + 1) {
                throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
            }
            return null;
        } else if (this.bOut.size() > this.cipher.getInputBlockSize()) {
            throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
        } else {
            return null;
        }
    }
}
