package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream.class */
public class MD5DigestCalculatingInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    public MessageDigest f6799a = a();

    /* renamed from: b  reason: collision with root package name */
    private MessageDigest f6800b;

    public MD5DigestCalculatingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    private static MessageDigest a() {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("unexpected", e);
        }
    }

    private static MessageDigest a(MessageDigest messageDigest) {
        try {
            return (MessageDigest) messageDigest.clone();
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException("unexpected", e);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        if (markSupported()) {
            super.mark(i);
            this.f6800b = a(this.f6799a);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f6799a.update((byte) read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f6799a.update(bArr, i, read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (markSupported()) {
            super.reset();
            MessageDigest messageDigest = this.f6800b;
            this.f6799a = messageDigest == null ? a() : a(messageDigest);
            return;
        }
        throw new IOException("mark/reset not supported");
    }
}
