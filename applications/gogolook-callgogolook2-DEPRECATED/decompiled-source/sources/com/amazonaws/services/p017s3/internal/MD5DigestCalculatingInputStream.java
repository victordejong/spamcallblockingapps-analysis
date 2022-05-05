package com.amazonaws.services.p017s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.amazonaws.services.s3.internal.MD5DigestCalculatingInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream.class */
public class MD5DigestCalculatingInputStream extends SdkFilterInputStream {
    public MessageDigest digest;
    public MessageDigest digestLastMarked;

    public MD5DigestCalculatingInputStream(InputStream inputStream) {
        super(inputStream);
        try {
            this.digest = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("unexpected", e);
        }
    }

    public byte[] getMd5Digest() {
        return this.digest.digest();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        super.mark(i);
        if (markSupported()) {
            try {
                this.digestLastMarked = (MessageDigest) this.digest.clone();
            } catch (CloneNotSupportedException e) {
                throw new IllegalStateException("unexpected", e);
            }
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.digest.update((byte) read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.digest.update(bArr, i, read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        MessageDigest messageDigest = this.digestLastMarked;
        if (messageDigest != null) {
            try {
                this.digest = (MessageDigest) messageDigest.clone();
            } catch (CloneNotSupportedException e) {
                throw new IllegalStateException("unexpected", e);
            }
        }
    }
}
