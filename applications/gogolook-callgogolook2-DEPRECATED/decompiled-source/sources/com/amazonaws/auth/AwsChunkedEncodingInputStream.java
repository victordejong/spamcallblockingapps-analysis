package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AwsChunkedEncodingInputStream.class */
public final class AwsChunkedEncodingInputStream extends SdkInputStream {
    public static final byte[] FINAL_CHUNK = new byte[0];
    public static final Log log = LogFactory.getLog(AwsChunkedEncodingInputStream.class);
    public final AWS4Signer aws4Signer;
    public ChunkContentIterator currentChunkIterator;
    public final String dateTime;
    public DecodedStreamBuffer decodedStreamBuffer;
    public final String headerSignature;

    /* renamed from: is */
    public InputStream f802is;
    public boolean isAtStart;
    public boolean isTerminating;
    public final byte[] kSigning;
    public final String keyPath;
    public final int maxBufferSize;
    public String priorChunkSignature;

    public AwsChunkedEncodingInputStream(InputStream inputStream, int i, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this.f802is = null;
        this.isAtStart = true;
        this.isTerminating = false;
        if (inputStream instanceof AwsChunkedEncodingInputStream) {
            AwsChunkedEncodingInputStream awsChunkedEncodingInputStream = (AwsChunkedEncodingInputStream) inputStream;
            i = Math.max(awsChunkedEncodingInputStream.maxBufferSize, i);
            this.f802is = awsChunkedEncodingInputStream.f802is;
            this.decodedStreamBuffer = awsChunkedEncodingInputStream.decodedStreamBuffer;
        } else {
            this.f802is = inputStream;
            this.decodedStreamBuffer = null;
        }
        if (i >= 131072) {
            this.maxBufferSize = i;
            this.kSigning = bArr;
            this.dateTime = str;
            this.keyPath = str2;
            this.headerSignature = str3;
            this.priorChunkSignature = str3;
            this.aws4Signer = aWS4Signer;
            return;
        }
        throw new IllegalArgumentException("Max buffer size should not be less than chunk size");
    }

    public AwsChunkedEncodingInputStream(InputStream inputStream, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this(inputStream, 262144, bArr, str, str2, str3, aWS4Signer);
    }

    public static long calculateSignedChunkLength(long j) {
        return Long.toHexString(j).length() + 17 + 64 + 2 + j + 2;
    }

    public static long calculateStreamContentLength(long j) {
        if (j >= 0) {
            long j2 = j % 131072;
            return ((j / 131072) * calculateSignedChunkLength(131072L)) + (j2 > 0 ? calculateSignedChunkLength(j2) : 0L) + calculateSignedChunkLength(0L);
        }
        throw new IllegalArgumentException("Nonnegative content length expected.");
    }

    public final byte[] createSignedChunk(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(bArr.length));
        String hex = BinaryUtils.toHex(this.aws4Signer.sign("AWS4-HMAC-SHA256-PAYLOAD\n" + this.dateTime + "\n" + this.keyPath + "\n" + this.priorChunkSignature + "\n" + BinaryUtils.toHex(this.aws4Signer.hash("")) + "\n" + BinaryUtils.toHex(this.aws4Signer.hash(bArr)), this.kSigning, SigningAlgorithm.HmacSHA256));
        this.priorChunkSignature = hex;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("");
        sb2.append(";chunk-signature=");
        sb2.append(hex);
        sb.append(sb2.toString());
        sb.append("\r\n");
        try {
            byte[] bytes = sb.toString().getBytes(StringUtils.UTF8);
            byte[] bytes2 = "\r\n".getBytes(StringUtils.UTF8);
            byte[] bArr2 = new byte[bytes.length + bArr.length + bytes2.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            System.arraycopy(bytes2, 0, bArr2, bytes.length + bArr.length, bytes2.length);
            return bArr2;
        } catch (Exception e) {
            throw new AmazonClientException("Unable to sign the chunked data. " + e.getMessage(), e);
        }
    }

    @Override // com.amazonaws.internal.SdkInputStream
    public InputStream getWrappedInputStream() {
        return this.f802is;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            abortIfNeeded();
            if (!this.isAtStart) {
                throw new UnsupportedOperationException("Chunk-encoded stream only supports mark() at the start of the stream.");
            } else if (this.f802is.markSupported()) {
                if (log.isDebugEnabled()) {
                    log.debug("AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it's mark-supported).");
                }
                this.f802is.mark(Integer.MAX_VALUE);
            } else {
                if (log.isDebugEnabled()) {
                    log.debug("AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported).");
                }
                this.decodedStreamBuffer = new DecodedStreamBuffer(this.maxBufferSize);
            }
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = new byte[1];
        int read = read(bArr, 0, 1);
        int i = read;
        if (read != -1) {
            if (log.isDebugEnabled()) {
                log.debug("One byte read from the stream.");
            }
            i = bArr[0] & 255;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        abortIfNeeded();
        if (bArr == null) {
            throw new NullPointerException();
        } else if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        } else if (i2 == 0) {
            return 0;
        } else {
            ChunkContentIterator chunkContentIterator = this.currentChunkIterator;
            if (chunkContentIterator == null || !chunkContentIterator.hasNext()) {
                if (this.isTerminating) {
                    return -1;
                }
                this.isTerminating = setUpNextChunk();
            }
            int read = this.currentChunkIterator.read(bArr, i, i2);
            if (read > 0) {
                this.isAtStart = false;
                if (log.isDebugEnabled()) {
                    Log log2 = log;
                    log2.debug(read + " byte read from the stream.");
                }
            }
            return read;
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            abortIfNeeded();
            this.currentChunkIterator = null;
            this.priorChunkSignature = this.headerSignature;
            if (this.f802is.markSupported()) {
                if (log.isDebugEnabled()) {
                    log.debug("AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported).");
                }
                this.f802is.reset();
            } else {
                if (log.isDebugEnabled()) {
                    log.debug("AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream).");
                }
                if (this.decodedStreamBuffer != null) {
                    this.decodedStreamBuffer.startReadBuffer();
                } else {
                    throw new IOException("Cannot reset the stream because the mark is not set.");
                }
            }
            this.currentChunkIterator = null;
            this.isAtStart = true;
            this.isTerminating = false;
        }
    }

    public final boolean setUpNextChunk() throws IOException {
        byte[] bArr = new byte[131072];
        int i = 0;
        while (i < 131072) {
            DecodedStreamBuffer decodedStreamBuffer = this.decodedStreamBuffer;
            if (decodedStreamBuffer == null || !decodedStreamBuffer.hasNext()) {
                int read = this.f802is.read(bArr, i, 131072 - i);
                if (read == -1) {
                    break;
                }
                DecodedStreamBuffer decodedStreamBuffer2 = this.decodedStreamBuffer;
                if (decodedStreamBuffer2 != null) {
                    decodedStreamBuffer2.buffer(bArr, i, read);
                }
                i += read;
            } else {
                bArr[i] = this.decodedStreamBuffer.next();
                i++;
            }
        }
        if (i == 0) {
            this.currentChunkIterator = new ChunkContentIterator(createSignedChunk(FINAL_CHUNK));
            return true;
        }
        if (i < bArr.length) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            bArr = bArr2;
        }
        this.currentChunkIterator = new ChunkContentIterator(createSignedChunk(bArr));
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long skip(long r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = 262144(0x40000, double:1.295163E-318)
            r1 = r6
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r8 = r0
            r0 = r8
            byte[] r0 = new byte[r0]
            r9 = r0
            r0 = r6
            r10 = r0
        L_0x0019:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003d
            r0 = r5
            r1 = r9
            r2 = 0
            r3 = r8
            int r0 = r0.read(r1, r2, r3)
            r12 = r0
            r0 = r12
            if (r0 >= 0) goto L_0x0032
            goto L_0x003d
        L_0x0032:
            r0 = r10
            r1 = r12
            long r1 = (long) r1
            long r0 = r0 - r1
            r10 = r0
            goto L_0x0019
        L_0x003d:
            r0 = r6
            r1 = r10
            long r0 = r0 - r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.auth.AwsChunkedEncodingInputStream.skip(long):long");
    }
}
