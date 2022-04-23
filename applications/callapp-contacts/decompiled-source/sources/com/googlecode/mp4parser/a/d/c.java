package com.googlecode.mp4parser.a.d;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/d/c.class */
public final class c extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    int f33076a = -1;

    /* renamed from: b  reason: collision with root package name */
    int f33077b = -1;

    public c(InputStream inputStream) {
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
            if (this.f33076a == 0) {
                i = read;
                if (this.f33077b == 0) {
                    this.f33076a = -1;
                    this.f33077b = -1;
                    i = super.read();
                }
            }
        }
        this.f33076a = this.f33077b;
        this.f33077b = i;
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        } else if (i2 == 0) {
            return 0;
        } else {
            int read = read();
            if (read == -1) {
                return -1;
            }
            bArr[i] = (byte) read;
            int i3 = 1;
            while (i3 < i2) {
                try {
                    int read2 = read();
                    if (read2 == -1) {
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
}
