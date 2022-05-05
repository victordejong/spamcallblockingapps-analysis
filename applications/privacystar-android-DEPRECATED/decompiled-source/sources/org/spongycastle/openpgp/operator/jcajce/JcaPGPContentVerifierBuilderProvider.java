package org.spongycastle.openpgp.operator.jcajce;

import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.Provider;
import java.security.Signature;
import java.security.SignatureException;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.PGPRuntimeOperationException;
import org.spongycastle.openpgp.operator.PGPContentVerifier;
import org.spongycastle.openpgp.operator.PGPContentVerifierBuilder;
import org.spongycastle.openpgp.operator.PGPContentVerifierBuilderProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider.class */
public class JcaPGPContentVerifierBuilderProvider implements PGPContentVerifierBuilderProvider {
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());
    private JcaPGPKeyConverter keyConverter = new JcaPGPKeyConverter();

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder.class */
    private class JcaPGPContentVerifierBuilder implements PGPContentVerifierBuilder {
        private int hashAlgorithm;
        private int keyAlgorithm;

        public JcaPGPContentVerifierBuilder(int i, int i2) {
            this.keyAlgorithm = i;
            this.hashAlgorithm = i2;
        }

        @Override // org.spongycastle.openpgp.operator.PGPContentVerifierBuilder
        public PGPContentVerifier build(final PGPPublicKey pGPPublicKey) throws PGPException {
            final Signature createSignature = JcaPGPContentVerifierBuilderProvider.this.helper.createSignature(this.keyAlgorithm, this.hashAlgorithm);
            try {
                createSignature.initVerify(JcaPGPContentVerifierBuilderProvider.this.keyConverter.getPublicKey(pGPPublicKey));
                return new PGPContentVerifier() { // from class: org.spongycastle.openpgp.operator.jcajce.JcaPGPContentVerifierBuilderProvider.JcaPGPContentVerifierBuilder.1
                    @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                    public int getHashAlgorithm() {
                        return JcaPGPContentVerifierBuilder.this.hashAlgorithm;
                    }

                    @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                    public int getKeyAlgorithm() {
                        return JcaPGPContentVerifierBuilder.this.keyAlgorithm;
                    }

                    @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                    public long getKeyID() {
                        return pGPPublicKey.getKeyID();
                    }

                    @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                    public OutputStream getOutputStream() {
                        return new SignatureOutputStream(createSignature);
                    }

                    @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                    public boolean verify(byte[] bArr) {
                        try {
                            return createSignature.verify(bArr);
                        } catch (SignatureException e) {
                            throw new PGPRuntimeOperationException("unable to verify signature: " + e.getMessage(), e);
                        }
                    }
                };
            } catch (InvalidKeyException e) {
                throw new PGPException("invalid key.", e);
            }
        }
    }

    @Override // org.spongycastle.openpgp.operator.PGPContentVerifierBuilderProvider
    public PGPContentVerifierBuilder get(int i, int i2) throws PGPException {
        return new JcaPGPContentVerifierBuilder(i, i2);
    }

    public JcaPGPContentVerifierBuilderProvider setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        this.keyConverter.setProvider(str);
        return this;
    }

    public JcaPGPContentVerifierBuilderProvider setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        this.keyConverter.setProvider(provider);
        return this;
    }
}
