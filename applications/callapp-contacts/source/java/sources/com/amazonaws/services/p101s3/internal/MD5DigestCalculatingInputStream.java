package com.amazonaws.services.p101s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.amazonaws.services.s3.internal.MD5DigestCalculatingInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream.class */
public class MD5DigestCalculatingInputStream extends SdkFilterInputStream {

    /* renamed from: a */
    public MessageDigest f12333a = m38435a();

    /* renamed from: b */
    private MessageDigest f12334b;

    public MD5DigestCalculatingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    /* renamed from: a */
    private static MessageDigest m38435a() {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("unexpected", e);
        }
    }

    /* renamed from: a */
    private static MessageDigest m38434a(MessageDigest messageDigest) {
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
            this.f12334b = m38434a(this.f12333a);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f12333a.update((byte) read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f12333a.update(bArr, i, read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (markSupported()) {
            super.reset();
            MessageDigest messageDigest = this.f12334b;
            this.f12333a = messageDigest == null ? m38435a() : m38434a(messageDigest);
            return;
        }
        throw new IOException("mark/reset not supported");
    }
}
