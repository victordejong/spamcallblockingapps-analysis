package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkDigestInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/DigestValidationInputStream.class */
public class DigestValidationInputStream extends SdkDigestInputStream {

    /* renamed from: b  reason: collision with root package name */
    private byte[] f6793b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6794c = false;

    public DigestValidationInputStream(InputStream inputStream, MessageDigest messageDigest, byte[] bArr) {
        super(inputStream, messageDigest);
        this.f6793b = bArr;
    }

    private void a() {
        if (this.f6793b != null && !this.f6794c) {
            this.f6794c = true;
            if (!Arrays.equals(this.digest.digest(), this.f6793b)) {
                throw new AmazonClientException("Unable to verify integrity of data download.  Client calculated content hash didn't match hash calculated by Amazon S3.  The data may be corrupt.");
            }
        }
    }

    @Override // java.security.DigestInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            a();
        }
        return read;
    }

    @Override // java.security.DigestInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            a();
        }
        return read;
    }
}
