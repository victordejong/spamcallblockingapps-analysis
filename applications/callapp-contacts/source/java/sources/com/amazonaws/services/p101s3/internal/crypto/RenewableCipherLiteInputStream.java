package com.amazonaws.services.p101s3.internal.crypto;

import java.io.IOException;
import java.io.InputStream;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.RenewableCipherLiteInputStream */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream.class */
public final class RenewableCipherLiteInputStream extends CipherLiteInputStream {

    /* renamed from: a */
    private boolean f12431a;

    protected RenewableCipherLiteInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public RenewableCipherLiteInputStream(InputStream inputStream, CipherLite cipherLite) {
        super(inputStream, cipherLite);
    }

    public RenewableCipherLiteInputStream(InputStream inputStream, CipherLite cipherLite, int i) {
        super(inputStream, cipherLite, i);
    }

    public RenewableCipherLiteInputStream(InputStream inputStream, CipherLite cipherLite, int i, boolean z, boolean z2) {
        super(inputStream, cipherLite, i, z, z2);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLiteInputStream, com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        abortIfNeeded();
        if (!this.f12431a) {
            this.in.mark(i);
            return;
        }
        throw new UnsupportedOperationException("Marking is only supported before your first call to read or skip.");
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLiteInputStream, com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        abortIfNeeded();
        return this.in.markSupported();
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLiteInputStream, com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        this.f12431a = true;
        return super.read();
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLiteInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        this.f12431a = true;
        return super.read(bArr);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLiteInputStream, com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        this.f12431a = true;
        return super.read(bArr, i, i2);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLiteInputStream, com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        abortIfNeeded();
        this.in.reset();
        m38386b();
        m38387a();
        this.f12431a = false;
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.CipherLiteInputStream, com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        this.f12431a = true;
        return super.skip(j);
    }
}
