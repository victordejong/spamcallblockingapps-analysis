package org.spongycastle.openpgp;

import java.io.IOException;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.bcpg.SymmetricKeyAlgorithmTags;
import org.spongycastle.openpgp.operator.PGPDataEncryptorBuilder;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.openpgp.operator.PGPKeyEncryptionMethodGenerator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPEncryptedDataGenerator.class */
public class PGPEncryptedDataGenerator implements SymmetricKeyAlgorithmTags, StreamGenerator {
    public static final int S2K_SHA1 = 2;
    public static final int S2K_SHA224 = 11;
    public static final int S2K_SHA256 = 8;
    public static final int S2K_SHA384 = 9;
    public static final int S2K_SHA512 = 10;
    private OutputStream cOut;
    private PGPDataEncryptorBuilder dataEncryptorBuilder;
    private int defAlgorithm;
    private PGPDigestCalculator digestCalc;
    private OutputStream genOut;
    private List methods;
    private boolean oldFormat;
    private BCPGOutputStream pOut;
    private SecureRandom rand;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream.class */
    public class ClosableBCPGOutputStream extends BCPGOutputStream {
        public ClosableBCPGOutputStream(OutputStream outputStream, int i, long j) throws IOException {
            super(outputStream, i, j);
        }

        public ClosableBCPGOutputStream(OutputStream outputStream, int i, long j, boolean z) throws IOException {
            super(outputStream, i, j, z);
        }

        public ClosableBCPGOutputStream(OutputStream outputStream, int i, byte[] bArr) throws IOException {
            super(outputStream, i, bArr);
        }

        @Override // org.spongycastle.bcpg.BCPGOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            finish();
        }
    }

    public PGPEncryptedDataGenerator(PGPDataEncryptorBuilder pGPDataEncryptorBuilder) {
        this(pGPDataEncryptorBuilder, false);
    }

    public PGPEncryptedDataGenerator(PGPDataEncryptorBuilder pGPDataEncryptorBuilder, boolean z) {
        this.oldFormat = false;
        this.methods = new ArrayList();
        this.dataEncryptorBuilder = pGPDataEncryptorBuilder;
        this.oldFormat = z;
        this.defAlgorithm = this.dataEncryptorBuilder.getAlgorithm();
        this.rand = this.dataEncryptorBuilder.getSecureRandom();
    }

    private void addCheckSum(byte[] bArr) {
        int i = 0;
        for (int i2 = 1; i2 != bArr.length - 2; i2++) {
            i += bArr[i2] & 255;
        }
        bArr[bArr.length - 2] = (byte) (i >> 8);
        bArr[bArr.length - 1] = (byte) i;
    }

    private byte[] createSessionInfo(int i, byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 3];
        bArr2[0] = (byte) i;
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        addCheckSum(bArr2);
        return bArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0158 A[Catch: Exception -> 0x0275, TRY_ENTER, TryCatch #0 {Exception -> 0x0275, blocks: (B:20:0x013b, B:22:0x0158, B:24:0x015f, B:25:0x0192, B:26:0x01bb, B:28:0x01c2, B:29:0x01e3, B:31:0x01fb, B:33:0x0216, B:35:0x0232), top: B:40:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01bb A[Catch: Exception -> 0x0275, TRY_ENTER, TryCatch #0 {Exception -> 0x0275, blocks: (B:20:0x013b, B:22:0x0158, B:24:0x015f, B:25:0x0192, B:26:0x01bb, B:28:0x01c2, B:29:0x01e3, B:31:0x01fb, B:33:0x0216, B:35:0x0232), top: B:40:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0216 A[Catch: Exception -> 0x0275, TryCatch #0 {Exception -> 0x0275, blocks: (B:20:0x013b, B:22:0x0158, B:24:0x015f, B:25:0x0192, B:26:0x01bb, B:28:0x01c2, B:29:0x01e3, B:31:0x01fb, B:33:0x0216, B:35:0x0232), top: B:40:0x013b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.io.OutputStream open(java.io.OutputStream r10, long r11, byte[] r13) throws java.io.IOException, org.spongycastle.openpgp.PGPException, java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.openpgp.PGPEncryptedDataGenerator.open(java.io.OutputStream, long, byte[]):java.io.OutputStream");
    }

    public void addMethod(PGPKeyEncryptionMethodGenerator pGPKeyEncryptionMethodGenerator) {
        this.methods.add(pGPKeyEncryptionMethodGenerator);
    }

    @Override // org.spongycastle.openpgp.StreamGenerator
    public void close() throws IOException {
        if (this.cOut != null) {
            if (this.digestCalc != null) {
                new BCPGOutputStream(this.genOut, 19, 20L).flush();
                this.cOut.write(this.digestCalc.getDigest());
            }
            this.cOut.close();
            this.cOut = null;
            this.pOut = null;
        }
    }

    public OutputStream open(OutputStream outputStream, long j) throws IOException, PGPException {
        return open(outputStream, j, null);
    }

    public OutputStream open(OutputStream outputStream, byte[] bArr) throws IOException, PGPException {
        return open(outputStream, 0L, bArr);
    }
}
