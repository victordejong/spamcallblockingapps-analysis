package org.spongycastle.operator.jcajce;

import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.operator.ContentSigner;
import org.spongycastle.operator.DefaultSignatureAlgorithmIdentifierFinder;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.operator.OperatorStreamException;
import org.spongycastle.operator.RuntimeOperatorException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/jcajce/JcaContentSignerBuilder.class */
public class JcaContentSignerBuilder {
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());
    private SecureRandom random;
    private AlgorithmIdentifier sigAlgId;
    private String signatureAlgorithm;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream.class */
    private class SignatureOutputStream extends OutputStream {
        private Signature sig;

        SignatureOutputStream(Signature signature) {
            this.sig = signature;
        }

        byte[] getSignature() throws SignatureException {
            return this.sig.sign();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            try {
                this.sig.update((byte) i);
            } catch (SignatureException e) {
                throw new OperatorStreamException("exception in content signer: " + e.getMessage(), e);
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            try {
                this.sig.update(bArr);
            } catch (SignatureException e) {
                throw new OperatorStreamException("exception in content signer: " + e.getMessage(), e);
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.sig.update(bArr, i, i2);
            } catch (SignatureException e) {
                throw new OperatorStreamException("exception in content signer: " + e.getMessage(), e);
            }
        }
    }

    public JcaContentSignerBuilder(String str) {
        this.signatureAlgorithm = str;
        this.sigAlgId = new DefaultSignatureAlgorithmIdentifierFinder().find(str);
    }

    public ContentSigner build(PrivateKey privateKey) throws OperatorCreationException {
        try {
            final Signature createSignature = this.helper.createSignature(this.sigAlgId);
            if (this.random != null) {
                createSignature.initSign(privateKey, this.random);
            } else {
                createSignature.initSign(privateKey);
            }
            return new ContentSigner() { // from class: org.spongycastle.operator.jcajce.JcaContentSignerBuilder.1
                private SignatureOutputStream stream;

                {
                    this.stream = new SignatureOutputStream(createSignature);
                }

                @Override // org.spongycastle.operator.ContentSigner
                public AlgorithmIdentifier getAlgorithmIdentifier() {
                    return JcaContentSignerBuilder.this.sigAlgId;
                }

                @Override // org.spongycastle.operator.ContentSigner
                public OutputStream getOutputStream() {
                    return this.stream;
                }

                @Override // org.spongycastle.operator.ContentSigner
                public byte[] getSignature() {
                    try {
                        return this.stream.getSignature();
                    } catch (SignatureException e) {
                        throw new RuntimeOperatorException("exception obtaining signature: " + e.getMessage(), e);
                    }
                }
            };
        } catch (GeneralSecurityException e) {
            throw new OperatorCreationException("cannot create signer: " + e.getMessage(), e);
        }
    }

    public JcaContentSignerBuilder setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JcaContentSignerBuilder setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }

    public JcaContentSignerBuilder setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }
}
