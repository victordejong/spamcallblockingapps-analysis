package org.apache.commons.p018io.input;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import org.apache.commons.p018io.Charsets;
/* renamed from: org.apache.commons.io.input.ReversedLinesFileReader */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/ReversedLinesFileReader.class */
public class ReversedLinesFileReader implements Closeable {
    private final int avoidNewlineSplitBufferSize;
    private final int blockSize;
    private final int byteDecrement;
    private FilePart currentFilePart;
    private final Charset encoding;
    private final byte[][] newLineSequences;
    private final RandomAccessFile randomAccessFile;
    private final long totalBlockCount;
    private final long totalByteLength;
    private boolean trailingNewlineOfFileSkipped;

    /* renamed from: org.apache.commons.io.input.ReversedLinesFileReader$FilePart */
    /* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/ReversedLinesFileReader$FilePart.class */
    private class FilePart {
        private int currentLastBytePos;
        private final byte[] data;
        private byte[] leftOver;

        /* renamed from: no */
        private final long f767no;

        private FilePart(long j, int i, byte[] bArr) throws IOException {
            this.f767no = j;
            this.data = new byte[(bArr != null ? bArr.length : 0) + i];
            long j2 = ReversedLinesFileReader.this.blockSize;
            if (j > 0) {
                ReversedLinesFileReader.this.randomAccessFile.seek((j - 1) * j2);
                if (ReversedLinesFileReader.this.randomAccessFile.read(this.data, 0, i) != i) {
                    throw new IllegalStateException("Count of requested bytes and actually read bytes don't match");
                }
            }
            if (bArr != null) {
                System.arraycopy(bArr, 0, this.data, i, bArr.length);
            }
            this.currentLastBytePos = this.data.length - 1;
            this.leftOver = null;
        }

        private void createLeftOver() {
            int i = this.currentLastBytePos + 1;
            if (i > 0) {
                this.leftOver = new byte[i];
                System.arraycopy(this.data, 0, this.leftOver, 0, i);
            } else {
                this.leftOver = null;
            }
            this.currentLastBytePos = -1;
        }

        private int getNewLineMatchByteCount(byte[] bArr, int i) {
            byte[][] bArr2;
            for (byte[] bArr3 : ReversedLinesFileReader.this.newLineSequences) {
                boolean z = true;
                for (int length = bArr3.length - 1; length >= 0; length--) {
                    int length2 = (i + length) - (bArr3.length - 1);
                    z &= length2 >= 0 && bArr[length2] == bArr3[length];
                }
                if (z) {
                    return bArr3.length;
                }
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x00bd, code lost:
            r12 = null;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String readLine() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.input.ReversedLinesFileReader.FilePart.readLine():java.lang.String");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public FilePart rollOver() throws IOException {
            if (this.currentLastBytePos > -1) {
                throw new IllegalStateException("Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=" + this.currentLastBytePos);
            } else if (this.f767no > 1) {
                return new FilePart(this.f767no - 1, ReversedLinesFileReader.this.blockSize, this.leftOver);
            } else {
                if (this.leftOver == null) {
                    return null;
                }
                throw new IllegalStateException("Unexpected leftover of the last block: leftOverOfThisFilePart=" + new String(this.leftOver, ReversedLinesFileReader.this.encoding));
            }
        }
    }

    @Deprecated
    public ReversedLinesFileReader(File file) throws IOException {
        this(file, 4096, Charset.defaultCharset());
    }

    public ReversedLinesFileReader(File file, int i, String str) throws IOException {
        this(file, i, Charsets.toCharset(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0153, code lost:
        if (r10.totalByteLength > 0) goto L_0x015c;
     */
    /* JADX WARN: Type inference failed for: r1v5, types: [byte[], byte[][]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ReversedLinesFileReader(java.io.File r11, int r12, java.nio.charset.Charset r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.input.ReversedLinesFileReader.<init>(java.io.File, int, java.nio.charset.Charset):void");
    }

    public ReversedLinesFileReader(File file, Charset charset) throws IOException {
        this(file, 4096, charset);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.randomAccessFile.close();
    }

    public String readLine() throws IOException {
        String readLine = this.currentFilePart.readLine();
        while (readLine == null) {
            this.currentFilePart = this.currentFilePart.rollOver();
            if (this.currentFilePart == null) {
                break;
            }
            readLine = this.currentFilePart.readLine();
        }
        String str = readLine;
        if ("".equals(readLine)) {
            str = readLine;
            if (!this.trailingNewlineOfFileSkipped) {
                this.trailingNewlineOfFileSkipped = true;
                str = readLine();
            }
        }
        return str;
    }
}
