package com.amazonaws.services.p017s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkDigestInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.util.Arrays;
/* renamed from: com.amazonaws.services.s3.internal.DigestValidationInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/DigestValidationInputStream.class */
public class DigestValidationInputStream extends SdkDigestInputStream {
    public boolean digestValidated = false;
    public byte[] expectedHash;

    public DigestValidationInputStream(InputStream inputStream, MessageDigest messageDigest, byte[] bArr) {
        super(inputStream, messageDigest);
        this.expectedHash = bArr;
    }

    @Override // java.security.DigestInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read == -1) {
            validateMD5Digest();
        }
        return read;
    }

    @Override // java.security.DigestInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            validateMD5Digest();
        }
        return read;
    }

    public final void validateMD5Digest() {
        if (this.expectedHash != null && !this.digestValidated) {
            this.digestValidated = true;
            if (!Arrays.equals(((DigestInputStream) this).digest.digest(), this.expectedHash)) {
                throw new AmazonClientException("Unable to verify integrity of data download.  Client calculated content hash didn't match hash calculated by Amazon S3.  The data may be corrupt.");
            }
        }
    }
}
