package org.spongycastle.openpgp;

import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import org.spongycastle.apache.bzip2.CBZip2OutputStream;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.bcpg.CompressionAlgorithmTags;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPCompressedDataGenerator.class */
public class PGPCompressedDataGenerator implements CompressionAlgorithmTags, StreamGenerator {
    private int algorithm;
    private int compression;
    private OutputStream dOut;
    private BCPGOutputStream pkOut;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream.class */
    public static class SafeCBZip2OutputStream extends CBZip2OutputStream {
        public SafeCBZip2OutputStream(OutputStream outputStream) throws IOException {
            super(outputStream);
        }

        @Override // org.spongycastle.apache.bzip2.CBZip2OutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream.class */
    public class SafeDeflaterOutputStream extends DeflaterOutputStream {
        public SafeDeflaterOutputStream(OutputStream outputStream, int i, boolean z) {
            super(outputStream, new Deflater(i, z));
        }

        @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            finish();
            this.def.end();
        }
    }

    public PGPCompressedDataGenerator(int i) {
        this(i, -1);
    }

    public PGPCompressedDataGenerator(int i, int i2) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
                if (i2 == -1 || (i2 >= 0 && i2 <= 9)) {
                    this.algorithm = i;
                    this.compression = i2;
                    return;
                }
                throw new IllegalArgumentException("unknown compression level: " + i2);
            default:
                throw new IllegalArgumentException("unknown compression algorithm");
        }
    }

    private void doOpen() throws IOException {
        this.pkOut.write(this.algorithm);
        switch (this.algorithm) {
            case 0:
                this.dOut = this.pkOut;
                return;
            case 1:
                this.dOut = new SafeDeflaterOutputStream(this.pkOut, this.compression, true);
                return;
            case 2:
                this.dOut = new SafeDeflaterOutputStream(this.pkOut, this.compression, false);
                return;
            case 3:
                this.dOut = new SafeCBZip2OutputStream(this.pkOut);
                return;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // org.spongycastle.openpgp.StreamGenerator
    public void close() throws IOException {
        if (this.dOut != null) {
            if (this.dOut != this.pkOut) {
                this.dOut.close();
            }
            this.dOut = null;
            this.pkOut.finish();
            this.pkOut.flush();
            this.pkOut = null;
        }
    }

    public OutputStream open(OutputStream outputStream) throws IOException {
        if (this.dOut != null) {
            throw new IllegalStateException("generator already in open state");
        }
        this.pkOut = new BCPGOutputStream(outputStream, 8);
        doOpen();
        return new WrappedGeneratorStream(this.dOut, this);
    }

    public OutputStream open(OutputStream outputStream, byte[] bArr) throws IOException, PGPException {
        if (this.dOut != null) {
            throw new IllegalStateException("generator already in open state");
        }
        this.pkOut = new BCPGOutputStream(outputStream, 8, bArr);
        doOpen();
        return new WrappedGeneratorStream(this.dOut, this);
    }
}
