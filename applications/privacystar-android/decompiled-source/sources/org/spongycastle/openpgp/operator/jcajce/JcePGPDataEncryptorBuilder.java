package org.spongycastle.openpgp.operator.jcajce;

import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PGPDataEncryptor;
import org.spongycastle.openpgp.operator.PGPDataEncryptorBuilder;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder.class */
public class JcePGPDataEncryptorBuilder implements PGPDataEncryptorBuilder {
    private int encAlgorithm;
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());
    private SecureRandom random;
    private boolean withIntegrityPacket;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor.class */
    private class MyPGPDataEncryptor implements PGPDataEncryptor {

        /* renamed from: c */
        private final Cipher f1653c;

        MyPGPDataEncryptor(byte[] bArr) throws PGPException {
            this.f1653c = JcePGPDataEncryptorBuilder.this.helper.createStreamCipher(JcePGPDataEncryptorBuilder.this.encAlgorithm, JcePGPDataEncryptorBuilder.this.withIntegrityPacket);
            try {
                if (JcePGPDataEncryptorBuilder.this.withIntegrityPacket) {
                    this.f1653c.init(1, PGPUtil.makeSymmetricKey(JcePGPDataEncryptorBuilder.this.encAlgorithm, bArr), new IvParameterSpec(new byte[this.f1653c.getBlockSize()]));
                    return;
                }
                this.f1653c.init(1, PGPUtil.makeSymmetricKey(JcePGPDataEncryptorBuilder.this.encAlgorithm, bArr));
            } catch (InvalidAlgorithmParameterException e) {
                throw new PGPException("imvalid algorithm parameter: " + e.getMessage(), e);
            } catch (InvalidKeyException e2) {
                throw new PGPException("invalid key: " + e2.getMessage(), e2);
            }
        }

        @Override // org.spongycastle.openpgp.operator.PGPDataEncryptor
        public int getBlockSize() {
            return this.f1653c.getBlockSize();
        }

        @Override // org.spongycastle.openpgp.operator.PGPDataEncryptor
        public PGPDigestCalculator getIntegrityCalculator() {
            if (JcePGPDataEncryptorBuilder.this.withIntegrityPacket) {
                return new SHA1PGPDigestCalculator();
            }
            return null;
        }

        @Override // org.spongycastle.openpgp.operator.PGPDataEncryptor
        public OutputStream getOutputStream(OutputStream outputStream) {
            return new CipherOutputStream(outputStream, this.f1653c);
        }
    }

    public JcePGPDataEncryptorBuilder(int i) {
        this.encAlgorithm = i;
        if (i == 0) {
            throw new IllegalArgumentException("null cipher specified");
        }
    }

    @Override // org.spongycastle.openpgp.operator.PGPDataEncryptorBuilder
    public PGPDataEncryptor build(byte[] bArr) throws PGPException {
        return new MyPGPDataEncryptor(bArr);
    }

    @Override // org.spongycastle.openpgp.operator.PGPDataEncryptorBuilder
    public int getAlgorithm() {
        return this.encAlgorithm;
    }

    @Override // org.spongycastle.openpgp.operator.PGPDataEncryptorBuilder
    public SecureRandom getSecureRandom() {
        if (this.random == null) {
            this.random = new SecureRandom();
        }
        return this.random;
    }

    public JcePGPDataEncryptorBuilder setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JcePGPDataEncryptorBuilder setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }

    public JcePGPDataEncryptorBuilder setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }

    public JcePGPDataEncryptorBuilder setWithIntegrityPacket(boolean z) {
        this.withIntegrityPacket = z;
        return this;
    }
}
