package org.spongycastle.openpgp.operator.jcajce;

import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.openpgp.operator.PGPDigestCalculatorProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder.class */
public class JcaPGPDigestCalculatorProviderBuilder {
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder$DigestOutputStream.class */
    private class DigestOutputStream extends OutputStream {
        private MessageDigest dig;

        DigestOutputStream(MessageDigest messageDigest) {
            this.dig = messageDigest;
        }

        byte[] getDigest() {
            return this.dig.digest();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.dig.update((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.dig.update(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.dig.update(bArr, i, i2);
        }
    }

    public PGPDigestCalculatorProvider build() throws PGPException {
        return new PGPDigestCalculatorProvider() { // from class: org.spongycastle.openpgp.operator.jcajce.JcaPGPDigestCalculatorProviderBuilder.1
            @Override // org.spongycastle.openpgp.operator.PGPDigestCalculatorProvider
            public PGPDigestCalculator get(final int i) throws PGPException {
                try {
                    final MessageDigest createDigest = JcaPGPDigestCalculatorProviderBuilder.this.helper.createDigest(i);
                    final DigestOutputStream digestOutputStream = new DigestOutputStream(createDigest);
                    return new PGPDigestCalculator() { // from class: org.spongycastle.openpgp.operator.jcajce.JcaPGPDigestCalculatorProviderBuilder.1.1
                        @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
                        public int getAlgorithm() {
                            return i;
                        }

                        @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
                        public byte[] getDigest() {
                            return digestOutputStream.getDigest();
                        }

                        @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
                        public OutputStream getOutputStream() {
                            return digestOutputStream;
                        }

                        @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
                        public void reset() {
                            createDigest.reset();
                        }
                    };
                } catch (GeneralSecurityException e) {
                    throw new PGPException("exception on setup: " + e, e);
                }
            }
        };
    }

    public JcaPGPDigestCalculatorProviderBuilder setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JcaPGPDigestCalculatorProviderBuilder setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }
}
