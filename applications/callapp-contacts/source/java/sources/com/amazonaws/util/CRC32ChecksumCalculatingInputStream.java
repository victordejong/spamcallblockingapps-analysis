package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/CRC32ChecksumCalculatingInputStream.class */
public class CRC32ChecksumCalculatingInputStream extends SdkFilterInputStream {

    /* renamed from: a */
    public CRC32 f12498a = new CRC32();

    public CRC32ChecksumCalculatingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        abortIfNeeded();
        int read = this.in.read();
        if (read != -1) {
            this.f12498a.update(read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        abortIfNeeded();
        int read = this.in.read(bArr, i, i2);
        if (read != -1) {
            this.f12498a.update(bArr, i, read);
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            abortIfNeeded();
            this.f12498a.reset();
            this.in.reset();
        }
    }
}
