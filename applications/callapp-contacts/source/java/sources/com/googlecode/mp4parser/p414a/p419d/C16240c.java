package com.googlecode.mp4parser.p414a.p419d;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* renamed from: com.googlecode.mp4parser.a.d.c */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/d/c.class */
public final class C16240c extends FilterInputStream {

    /* renamed from: a */
    int f57299a = -1;

    /* renamed from: b */
    int f57300b = -1;

    public C16240c(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = super.read();
        int i = read;
        if (read == 3) {
            i = read;
            if (this.f57299a == 0) {
                i = read;
                if (this.f57300b == 0) {
                    this.f57299a = -1;
                    this.f57300b = -1;
                    i = super.read();
                }
            }
        }
        this.f57299a = this.f57300b;
        this.f57300b = i;
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read;
        int read2;
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        if (read() == -1) {
            return -1;
        }
        bArr[i] = (byte) read;
        int i3 = 1;
        while (i3 < i2) {
            try {
                if (read() == -1) {
                    break;
                }
                bArr[i + i3] = (byte) read2;
                i3++;
            } catch (IOException e) {
            }
        }
        return i3;
    }
}
