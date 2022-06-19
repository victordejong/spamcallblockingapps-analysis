package com.amazonaws.auth;

import android.support.p008v4.media.session.PlaybackStateCompat;
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

    /* renamed from: a */
    private static final byte[] f11986a = new byte[0];

    /* renamed from: n */
    private static final Log f11987n = LogFactory.m38584a(AwsChunkedEncodingInputStream.class);

    /* renamed from: b */
    private InputStream f11988b;

    /* renamed from: c */
    private final int f11989c;

    /* renamed from: d */
    private final byte[] f11990d;

    /* renamed from: e */
    private final String f11991e;

    /* renamed from: f */
    private final String f11992f;

    /* renamed from: g */
    private final String f11993g;

    /* renamed from: h */
    private String f11994h;

    /* renamed from: i */
    private final AWS4Signer f11995i;

    /* renamed from: j */
    private ChunkContentIterator f11996j;

    /* renamed from: k */
    private DecodedStreamBuffer f11997k;

    /* renamed from: l */
    private boolean f11998l;

    /* renamed from: m */
    private boolean f11999m;

    public AwsChunkedEncodingInputStream(InputStream inputStream, int i, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this.f11988b = null;
        this.f11998l = true;
        this.f11999m = false;
        if (inputStream instanceof AwsChunkedEncodingInputStream) {
            AwsChunkedEncodingInputStream awsChunkedEncodingInputStream = (AwsChunkedEncodingInputStream) inputStream;
            i = Math.max(awsChunkedEncodingInputStream.f11989c, i);
            this.f11988b = awsChunkedEncodingInputStream.f11988b;
            this.f11997k = awsChunkedEncodingInputStream.f11997k;
        } else {
            this.f11988b = inputStream;
            this.f11997k = null;
        }
        if (i >= 131072) {
            this.f11989c = i;
            this.f11990d = bArr;
            this.f11991e = str;
            this.f11992f = str2;
            this.f11993g = str3;
            this.f11994h = str3;
            this.f11995i = aWS4Signer;
            return;
        }
        throw new IllegalArgumentException("Max buffer size should not be less than chunk size");
    }

    public AwsChunkedEncodingInputStream(InputStream inputStream, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this(inputStream, 262144, bArr, str, str2, str3, aWS4Signer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* renamed from: a */
    public static long m38665a(long j) {
        if (j >= 0) {
            long j2 = j / PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
            long j3 = j % PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
            return (j2 * m38663b(PlaybackStateCompat.ACTION_PREPARE_FROM_URI)) + (((j3 > 0L ? 1 : (j3 == 0L ? 0 : -1)) > 0 ? m38663b(j3) : false) == true ? 1L : 0L) + m38663b(0L);
        }
        throw new IllegalArgumentException("Nonnegative content length expected.");
    }

    /* renamed from: a */
    private byte[] m38664a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(bArr.length));
        String m38259a = BinaryUtils.m38259a(AWS4Signer.m38678a("AWS4-HMAC-SHA256-PAYLOAD\n" + this.f11991e + StringUtils.f67179LF + this.f11992f + StringUtils.f67179LF + this.f11994h + StringUtils.f67179LF + BinaryUtils.m38259a(AWS4Signer.m38671c("")) + StringUtils.f67179LF + BinaryUtils.m38259a(AWS4Signer.m38676a(bArr)), this.f11990d, SigningAlgorithm.HmacSHA256));
        this.f11994h = m38259a;
        sb.append(";chunk-signature=".concat(String.valueOf(m38259a)));
        sb.append("\r\n");
        try {
            byte[] bytes = sb.toString().getBytes(com.amazonaws.util.StringUtils.f12513a);
            byte[] bytes2 = "\r\n".getBytes(com.amazonaws.util.StringUtils.f12513a);
            byte[] bArr2 = new byte[bytes.length + bArr.length + bytes2.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            System.arraycopy(bytes2, 0, bArr2, bytes.length + bArr.length, bytes2.length);
            return bArr2;
        } catch (Exception e) {
            throw new AmazonClientException("Unable to sign the chunked data. " + e.getMessage(), e);
        }
    }

    /* renamed from: b */
    private static long m38663b(long j) {
        return Long.toHexString(j).length() + 17 + 64 + 2 + j + 2;
    }

    /* renamed from: c */
    private boolean m38662c() throws IOException {
        int i;
        byte[] bArr = new byte[131072];
        int i2 = 0;
        while (i2 < 131072) {
            DecodedStreamBuffer decodedStreamBuffer = this.f11997k;
            if (decodedStreamBuffer != null) {
                if (decodedStreamBuffer.f12013e != -1 && decodedStreamBuffer.f12013e < decodedStreamBuffer.f12012d) {
                    DecodedStreamBuffer decodedStreamBuffer2 = this.f11997k;
                    byte[] bArr2 = decodedStreamBuffer2.f12010b;
                    decodedStreamBuffer2.f12013e = decodedStreamBuffer2.f12013e + 1;
                    bArr[i2] = bArr2[i];
                    i2++;
                }
            }
            int read = this.f11988b.read(bArr, i2, 131072 - i2);
            if (read == -1) {
                break;
            }
            DecodedStreamBuffer decodedStreamBuffer3 = this.f11997k;
            if (decodedStreamBuffer3 != null) {
                decodedStreamBuffer3.f12013e = -1;
                if (decodedStreamBuffer3.f12012d + read > decodedStreamBuffer3.f12011c) {
                    if (DecodedStreamBuffer.f12009a.mo38597a()) {
                        DecodedStreamBuffer.f12009a.mo38593b("Buffer size " + decodedStreamBuffer3.f12011c + " has been exceeded and the input stream will not be repeatable. Freeing buffer memory");
                    }
                    decodedStreamBuffer3.f12014f = true;
                } else {
                    System.arraycopy(bArr, i2, decodedStreamBuffer3.f12010b, decodedStreamBuffer3.f12012d, read);
                    decodedStreamBuffer3.f12012d += read;
                }
            }
            i2 += read;
        }
        if (i2 == 0) {
            this.f11996j = new ChunkContentIterator(m38664a(f11986a));
            return true;
        }
        byte[] bArr3 = bArr;
        if (i2 < 131072) {
            bArr3 = new byte[i2];
            System.arraycopy(bArr, 0, bArr3, 0, i2);
        }
        this.f11996j = new ChunkContentIterator(m38664a(bArr3));
        return false;
    }

    @Override // com.amazonaws.internal.SdkInputStream
    /* renamed from: a */
    public final InputStream mo38389a() {
        return this.f11988b;
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            m38604b();
            if (this.f11998l) {
                if (this.f11988b.markSupported()) {
                    Log log = f11987n;
                    if (log.mo38597a()) {
                        log.mo38593b("AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it's mark-supported).");
                    }
                    this.f11988b.mark(Integer.MAX_VALUE);
                    return;
                }
                Log log2 = f11987n;
                if (log2.mo38597a()) {
                    log2.mo38593b("AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported).");
                }
                this.f11997k = new DecodedStreamBuffer(this.f11989c);
                return;
            }
            throw new UnsupportedOperationException("Chunk-encoded stream only supports mark() at the start of the stream.");
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
            Log log = f11987n;
            if (log.mo38597a()) {
                log.mo38593b("One byte read from the stream.");
            }
            i = bArr[0] & 255;
        }
        return i;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        m38604b();
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        ChunkContentIterator chunkContentIterator = this.f11996j;
        if (chunkContentIterator == null || !chunkContentIterator.m38660a()) {
            if (this.f11999m) {
                return -1;
            }
            this.f11999m = m38662c();
        }
        ChunkContentIterator chunkContentIterator2 = this.f11996j;
        if (i2 == 0) {
            i3 = 0;
        } else if (!chunkContentIterator2.m38660a()) {
            i3 = -1;
        } else {
            int min = Math.min(chunkContentIterator2.f12005a.length - chunkContentIterator2.f12006b, i2);
            System.arraycopy(chunkContentIterator2.f12005a, chunkContentIterator2.f12006b, bArr, i, min);
            chunkContentIterator2.f12006b += min;
            i3 = min;
        }
        if (i3 > 0) {
            this.f11998l = false;
            Log log = f11987n;
            if (log.mo38597a()) {
                log.mo38593b(i3 + " byte read from the stream.");
            }
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            m38604b();
            this.f11996j = null;
            this.f11994h = this.f11993g;
            if (this.f11988b.markSupported()) {
                Log log = f11987n;
                if (log.mo38597a()) {
                    log.mo38593b("AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported).");
                }
                this.f11988b.reset();
            } else {
                Log log2 = f11987n;
                if (log2.mo38597a()) {
                    log2.mo38593b("AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream).");
                }
                DecodedStreamBuffer decodedStreamBuffer = this.f11997k;
                if (decodedStreamBuffer == null) {
                    throw new IOException("Cannot reset the stream because the mark is not set.");
                }
                if (decodedStreamBuffer.f12014f) {
                    throw new AmazonClientException("The input stream is not repeatable since the buffer size " + decodedStreamBuffer.f12011c + " has been exceeded.");
                }
                decodedStreamBuffer.f12013e = 0;
            }
            this.f11996j = null;
            this.f11998l = true;
            this.f11999m = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        char c;
        int read;
        if (j <= 0) {
            return 0L;
        }
        int min = (int) Math.min((long) PlaybackStateCompat.ACTION_SET_REPEAT_MODE, (long) j);
        byte[] bArr = new byte[min];
        char c2 = j;
        while (true) {
            c = c2;
            if (c <= 0 || (read = read(bArr, 0, min)) < 0) {
                break;
            }
            c2 = c - read;
        }
        return j - c;
    }
}
