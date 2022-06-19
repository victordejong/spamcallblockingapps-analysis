package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkDigestInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Arrays;
/* renamed from: com.amazonaws.services.s3.internal.DigestValidationInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/DigestValidationInputStream.class */
public class DigestValidationInputStream extends SdkDigestInputStream {

    /* renamed from: b */
    private byte[] f12326b;

    /* renamed from: c */
    private boolean f12327c = false;

    public DigestValidationInputStream(InputStream inputStream, MessageDigest messageDigest, byte[] bArr) {
        super(inputStream, messageDigest);
        this.f12326b = bArr;
    }

    /* renamed from: a */
    private void m38436a() {
        if (this.f12326b == null || this.f12327c) {
            return;
        }
        this.f12327c = true;
        if (!Arrays.equals(this.digest.digest(), this.f12326b)) {
            throw new AmazonClientException("Unable to verify integrity of data download.  Client calculated content hash didn't match hash calculated by Amazon S3.  The data may be corrupt.");
        }
    }

    @Override // java.security.DigestInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            m38436a();
        }
        return read;
    }

    @Override // java.security.DigestInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            m38436a();
        }
        return read;
    }
}
