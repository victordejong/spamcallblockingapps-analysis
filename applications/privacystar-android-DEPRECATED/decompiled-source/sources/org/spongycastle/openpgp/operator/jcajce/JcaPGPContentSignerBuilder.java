package org.spongycastle.openpgp.operator.jcajce;

import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPRuntimeOperationException;
import org.spongycastle.openpgp.operator.PGPContentSigner;
import org.spongycastle.openpgp.operator.PGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.util.p039io.TeeOutputStream;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder.class */
public class JcaPGPContentSignerBuilder implements PGPContentSignerBuilder {
    private int hashAlgorithm;
    private int keyAlgorithm;
    private SecureRandom random;
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());
    private JcaPGPDigestCalculatorProviderBuilder digestCalculatorProviderBuilder = new JcaPGPDigestCalculatorProviderBuilder();
    private JcaPGPKeyConverter keyConverter = new JcaPGPKeyConverter();

    public JcaPGPContentSignerBuilder(int i, int i2) {
        this.keyAlgorithm = i;
        this.hashAlgorithm = i2;
    }

    public PGPContentSigner build(final int i, final long j, PrivateKey privateKey) throws PGPException {
        final PGPDigestCalculator pGPDigestCalculator = this.digestCalculatorProviderBuilder.build().get(this.hashAlgorithm);
        final Signature createSignature = this.helper.createSignature(this.keyAlgorithm, this.hashAlgorithm);
        try {
            if (this.random != null) {
                createSignature.initSign(privateKey, this.random);
            } else {
                createSignature.initSign(privateKey);
            }
            return new PGPContentSigner() { // from class: org.spongycastle.openpgp.operator.jcajce.JcaPGPContentSignerBuilder.1
                @Override // org.spongycastle.openpgp.operator.PGPContentSigner
                public byte[] getDigest() {
                    return pGPDigestCalculator.getDigest();
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentSigner
                public int getHashAlgorithm() {
                    return JcaPGPContentSignerBuilder.this.hashAlgorithm;
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentSigner
                public int getKeyAlgorithm() {
                    return JcaPGPContentSignerBuilder.this.keyAlgorithm;
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentSigner
                public long getKeyID() {
                    return j;
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentSigner
                public OutputStream getOutputStream() {
                    return new TeeOutputStream(new SignatureOutputStream(createSignature), pGPDigestCalculator.getOutputStream());
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentSigner
                public byte[] getSignature() {
                    try {
                        return createSignature.sign();
                    } catch (SignatureException e) {
                        throw new PGPRuntimeOperationException("Unable to create signature: " + e.getMessage(), e);
                    }
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentSigner
                public int getType() {
                    return i;
                }
            };
        } catch (InvalidKeyException e) {
            throw new PGPException("invalid key.", e);
        }
    }

    @Override // org.spongycastle.openpgp.operator.PGPContentSignerBuilder
    public PGPContentSigner build(int i, PGPPrivateKey pGPPrivateKey) throws PGPException {
        return pGPPrivateKey instanceof JcaPGPPrivateKey ? build(i, pGPPrivateKey.getKeyID(), ((JcaPGPPrivateKey) pGPPrivateKey).getPrivateKey()) : build(i, pGPPrivateKey.getKeyID(), this.keyConverter.getPrivateKey(pGPPrivateKey));
    }

    public JcaPGPContentSignerBuilder setDigestProvider(String str) {
        this.digestCalculatorProviderBuilder.setProvider(str);
        return this;
    }

    public JcaPGPContentSignerBuilder setDigestProvider(Provider provider) {
        this.digestCalculatorProviderBuilder.setProvider(provider);
        return this;
    }

    public JcaPGPContentSignerBuilder setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        this.keyConverter.setProvider(str);
        this.digestCalculatorProviderBuilder.setProvider(str);
        return this;
    }

    public JcaPGPContentSignerBuilder setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        this.keyConverter.setProvider(provider);
        this.digestCalculatorProviderBuilder.setProvider(provider);
        return this;
    }

    public JcaPGPContentSignerBuilder setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }
}
