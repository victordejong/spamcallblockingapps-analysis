package com.amazonaws.util;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/LengthCheckInputStream.class */
public class LengthCheckInputStream extends SdkFilterInputStream {

    /* renamed from: a */
    private final long f12504a;

    /* renamed from: b */
    private final boolean f12505b;

    /* renamed from: c */
    private long f12506c;

    /* renamed from: d */
    private long f12507d;

    public LengthCheckInputStream(InputStream inputStream, long j, boolean z) {
        super(inputStream);
        if (j >= 0) {
            this.f12504a = j;
            this.f12505b = z;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    private void m38240a(boolean z) {
        if (z) {
            if (this.f12506c == this.f12504a) {
                return;
            }
            throw new AmazonClientException("Data read (" + this.f12506c + ") has a different length than the expected (" + this.f12504a + ")");
        } else if (this.f12506c <= this.f12504a) {
        } else {
            throw new AmazonClientException("More data read (" + this.f12506c + ") than expected (" + this.f12504a + ")");
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        super.mark(i);
        this.f12507d = this.f12506c;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read >= 0) {
            this.f12506c++;
        }
        m38240a(read == -1);
        return read;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r2v1 */
    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        this.f12506c += (read >= 0 ? (long) read : false) == true ? 1L : 0L;
        m38240a(read == -1);
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        if (super.markSupported()) {
            this.f12506c = this.f12507d;
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = super.skip(j);
        if (this.f12505b && skip > 0) {
            this.f12506c += skip;
            m38240a(false);
        }
        return skip;
    }
}
