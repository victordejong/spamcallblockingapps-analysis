package com.amazonaws.util;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/LengthCheckInputStream.class */
public class LengthCheckInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final long f6911a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f6912b;

    /* renamed from: c  reason: collision with root package name */
    private long f6913c;

    /* renamed from: d  reason: collision with root package name */
    private long f6914d;

    public LengthCheckInputStream(InputStream inputStream, long j, boolean z) {
        super(inputStream);
        if (j >= 0) {
            this.f6911a = j;
            this.f6912b = z;
            return;
        }
        throw new IllegalArgumentException();
    }

    private void a(boolean z) {
        if (z) {
            if (this.f6913c != this.f6911a) {
                throw new AmazonClientException("Data read (" + this.f6913c + ") has a different length than the expected (" + this.f6911a + ")");
            }
        } else if (this.f6913c > this.f6911a) {
            throw new AmazonClientException("More data read (" + this.f6913c + ") than expected (" + this.f6911a + ")");
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        super.mark(i);
        this.f6914d = this.f6913c;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read >= 0) {
            this.f6913c++;
        }
        a(read == -1);
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        this.f6913c += read >= 0 ? read : 0L;
        a(read == -1);
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        if (super.markSupported()) {
            this.f6913c = this.f6914d;
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = super.skip(j);
        if (this.f6912b && skip > 0) {
            this.f6913c += skip;
            a(false);
        }
        return skip;
    }
}
