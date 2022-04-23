package org.spongycastle.openpgp.operator.p035bc;

import java.io.OutputStream;
import java.security.SecureRandom;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.p027io.CipherOutputStream;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PGPDataEncryptor;
import org.spongycastle.openpgp.operator.PGPDataEncryptorBuilder;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcPGPDataEncryptorBuilder */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder.class */
public class BcPGPDataEncryptorBuilder implements PGPDataEncryptorBuilder {
    private int encAlgorithm;
    private SecureRandom random;
    private boolean withIntegrityPacket;

    /* renamed from: org.spongycastle.openpgp.operator.bc.BcPGPDataEncryptorBuilder$MyPGPDataEncryptor */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor.class */
    private class MyPGPDataEncryptor implements PGPDataEncryptor {

        /* renamed from: c */
        private final BufferedBlockCipher f1650c;

        MyPGPDataEncryptor(byte[] bArr) throws PGPException {
            try {
                this.f1650c = BcUtil.createStreamCipher(true, BcImplProvider.createBlockCipher(BcPGPDataEncryptorBuilder.this.encAlgorithm), BcPGPDataEncryptorBuilder.this.withIntegrityPacket, bArr);
            } catch (IllegalArgumentException e) {
                throw new PGPException("invalid parameters: " + e.getMessage(), e);
            }
        }

        @Override // org.spongycastle.openpgp.operator.PGPDataEncryptor
        public int getBlockSize() {
            return this.f1650c.getBlockSize();
        }

        @Override // org.spongycastle.openpgp.operator.PGPDataEncryptor
        public PGPDigestCalculator getIntegrityCalculator() {
            if (BcPGPDataEncryptorBuilder.this.withIntegrityPacket) {
                return new SHA1PGPDigestCalculator();
            }
            return null;
        }

        @Override // org.spongycastle.openpgp.operator.PGPDataEncryptor
        public OutputStream getOutputStream(OutputStream outputStream) {
            return new CipherOutputStream(outputStream, this.f1650c);
        }
    }

    public BcPGPDataEncryptorBuilder(int i) {
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

    public BcPGPDataEncryptorBuilder setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }

    public BcPGPDataEncryptorBuilder setWithIntegrityPacket(boolean z) {
        this.withIntegrityPacket = z;
        return this;
    }
}
