package com.amazonaws.auth;

import android.support.v4.media.session.PlaybackStateCompat;
import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.BinaryUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AwsChunkedEncodingInputStream.class */
public final class AwsChunkedEncodingInputStream extends SdkInputStream {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f6561a = new byte[0];
    private static final Log n = LogFactory.a(AwsChunkedEncodingInputStream.class);

    /* renamed from: b  reason: collision with root package name */
    private InputStream f6562b;

    /* renamed from: c  reason: collision with root package name */
    private final int f6563c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f6564d;
    private final String e;
    private final String f;
    private final String g;
    private String h;
    private final AWS4Signer i;
    private ChunkContentIterator j;
    private DecodedStreamBuffer k;
    private boolean l;
    private boolean m;

    public AwsChunkedEncodingInputStream(InputStream inputStream, int i, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this.f6562b = null;
        this.l = true;
        this.m = false;
        if (inputStream instanceof AwsChunkedEncodingInputStream) {
            AwsChunkedEncodingInputStream awsChunkedEncodingInputStream = (AwsChunkedEncodingInputStream) inputStream;
            i = Math.max(awsChunkedEncodingInputStream.f6563c, i);
            this.f6562b = awsChunkedEncodingInputStream.f6562b;
            this.k = awsChunkedEncodingInputStream.k;
        } else {
            this.f6562b = inputStream;
            this.k = null;
        }
        if (i >= 131072) {
            this.f6563c = i;
            this.f6564d = bArr;
            this.e = str;
            this.f = str2;
            this.g = str3;
            this.h = str3;
            this.i = aWS4Signer;
            return;
        }
        throw new IllegalArgumentException("Max buffer size should not be less than chunk size");
    }

    public AwsChunkedEncodingInputStream(InputStream inputStream, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this(inputStream, 262144, bArr, str, str2, str3, aWS4Signer);
    }

    public static long a(long j) {
        if (j >= 0) {
            long j2 = j / PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
            long j3 = j % PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
            return (j2 * b(PlaybackStateCompat.ACTION_PREPARE_FROM_URI)) + (j3 > 0 ? b(j3) : 0L) + b(0L);
        }
        throw new IllegalArgumentException("Nonnegative content length expected.");
    }

    private byte[] a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(bArr.length));
        String a2 = BinaryUtils.a(AWS4Signer.a("AWS4-HMAC-SHA256-PAYLOAD\n" + this.e + StringUtils.LF + this.f + StringUtils.LF + this.h + StringUtils.LF + BinaryUtils.a(AWS4Signer.c("")) + StringUtils.LF + BinaryUtils.a(AWS4Signer.a(bArr)), this.f6564d, SigningAlgorithm.HmacSHA256));
        this.h = a2;
        sb.append(";chunk-signature=".concat(String.valueOf(a2)));
        sb.append("\r\n");
        try {
            byte[] bytes = sb.toString().getBytes(com.amazonaws.util.StringUtils.f6920a);
            byte[] bytes2 = "\r\n".getBytes(com.amazonaws.util.StringUtils.f6920a);
            byte[] bArr2 = new byte[bytes.length + bArr.length + bytes2.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            System.arraycopy(bytes2, 0, bArr2, bytes.length + bArr.length, bytes2.length);
            return bArr2;
        } catch (Exception e) {
            throw new AmazonClientException("Unable to sign the chunked data. " + e.getMessage(), e);
        }
    }

    private static long b(long j) {
        return Long.toHexString(j).length() + 17 + 64 + 2 + j + 2;
    }

    private boolean c() throws IOException {
        int i;
        byte[] bArr = new byte[131072];
        int i2 = 0;
        while (i2 < 131072) {
            DecodedStreamBuffer decodedStreamBuffer = this.k;
            if (decodedStreamBuffer != null) {
                if (decodedStreamBuffer.e != -1 && decodedStreamBuffer.e < decodedStreamBuffer.f6577d) {
                    DecodedStreamBuffer decodedStreamBuffer2 = this.k;
                    byte[] bArr2 = decodedStreamBuffer2.f6575b;
                    decodedStreamBuffer2.e = decodedStreamBuffer2.e + 1;
                    bArr[i2] = bArr2[i];
                    i2++;
                }
            }
            int read = this.f6562b.read(bArr, i2, 131072 - i2);
            if (read == -1) {
                break;
            }
            DecodedStreamBuffer decodedStreamBuffer3 = this.k;
            if (decodedStreamBuffer3 != null) {
                decodedStreamBuffer3.e = -1;
                if (decodedStreamBuffer3.f6577d + read > decodedStreamBuffer3.f6576c) {
                    if (DecodedStreamBuffer.f6574a.a()) {
                        DecodedStreamBuffer.f6574a.b("Buffer size " + decodedStreamBuffer3.f6576c + " has been exceeded and the input stream will not be repeatable. Freeing buffer memory");
                    }
                    decodedStreamBuffer3.f = true;
                } else {
                    System.arraycopy(bArr, i2, decodedStreamBuffer3.f6575b, decodedStreamBuffer3.f6577d, read);
                    decodedStreamBuffer3.f6577d += read;
                }
            }
            i2 += read;
        }
        if (i2 == 0) {
            this.j = new ChunkContentIterator(a(f6561a));
            return true;
        }
        byte[] bArr3 = bArr;
        if (i2 < 131072) {
            bArr3 = new byte[i2];
            System.arraycopy(bArr, 0, bArr3, 0, i2);
        }
        this.j = new ChunkContentIterator(a(bArr3));
        return false;
    }

    @Override // com.amazonaws.internal.SdkInputStream
    public final InputStream a() {
        return this.f6562b;
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            b();
            if (!this.l) {
                throw new UnsupportedOperationException("Chunk-encoded stream only supports mark() at the start of the stream.");
            } else if (this.f6562b.markSupported()) {
                Log log = n;
                if (log.a()) {
                    log.b("AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it's mark-supported).");
                }
                this.f6562b.mark(Integer.MAX_VALUE);
            } else {
                Log log2 = n;
                if (log2.a()) {
                    log2.b("AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported).");
                }
                this.k = new DecodedStreamBuffer(this.f6563c);
            }
        }
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = new byte[1];
        int read = read(bArr, 0, 1);
        int i = read;
        if (read != -1) {
            Log log = n;
            if (log.a()) {
                log.b("One byte read from the stream.");
            }
            i = bArr[0] & 255;
        }
        return i;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        b();
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        } else if (i2 == 0) {
            return 0;
        } else {
            ChunkContentIterator chunkContentIterator = this.j;
            int i3 = -1;
            if (chunkContentIterator == null || !chunkContentIterator.a()) {
                if (this.m) {
                    return -1;
                }
                this.m = c();
            }
            ChunkContentIterator chunkContentIterator2 = this.j;
            if (i2 == 0) {
                i3 = 0;
            } else if (chunkContentIterator2.a()) {
                int min = Math.min(chunkContentIterator2.f6570a.length - chunkContentIterator2.f6571b, i2);
                System.arraycopy(chunkContentIterator2.f6570a, chunkContentIterator2.f6571b, bArr, i, min);
                chunkContentIterator2.f6571b += min;
                i3 = min;
            }
            if (i3 > 0) {
                this.l = false;
                Log log = n;
                if (log.a()) {
                    log.b(i3 + " byte read from the stream.");
                }
            }
            return i3;
        }
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            b();
            this.j = null;
            this.h = this.g;
            if (this.f6562b.markSupported()) {
                Log log = n;
                if (log.a()) {
                    log.b("AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported).");
                }
                this.f6562b.reset();
            } else {
                Log log2 = n;
                if (log2.a()) {
                    log2.b("AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream).");
                }
                DecodedStreamBuffer decodedStreamBuffer = this.k;
                if (decodedStreamBuffer == null) {
                    throw new IOException("Cannot reset the stream because the mark is not set.");
                } else if (!decodedStreamBuffer.f) {
                    decodedStreamBuffer.e = 0;
                } else {
                    throw new AmazonClientException("The input stream is not repeatable since the buffer size " + decodedStreamBuffer.f6576c + " has been exceeded.");
                }
            }
            this.j = null;
            this.l = true;
            this.m = false;
        }
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
    public final long skip(long r6) throws java.io.IOException {
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
            if (r0 <= 0) goto L_0x003a
            r0 = r5
            r1 = r9
            r2 = 0
            r3 = r8
            int r0 = r0.read(r1, r2, r3)
            r12 = r0
            r0 = r12
            if (r0 < 0) goto L_0x003a
            r0 = r10
            r1 = r12
            long r1 = (long) r1
            long r0 = r0 - r1
            r10 = r0
            goto L_0x0019
        L_0x003a:
            r0 = r6
            r1 = r10
            long r0 = r0 - r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.auth.AwsChunkedEncodingInputStream.skip(long):long");
    }
}
