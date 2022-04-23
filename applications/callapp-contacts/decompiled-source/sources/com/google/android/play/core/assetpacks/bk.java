package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bk.class */
public final class bk extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final Enumeration<File> f31177a;

    /* renamed from: b  reason: collision with root package name */
    private InputStream f31178b;

    public bk(Enumeration<File> enumeration) throws IOException {
        this.f31177a = enumeration;
        a();
    }

    private void a() throws IOException {
        InputStream inputStream = this.f31178b;
        if (inputStream != null) {
            inputStream.close();
        }
        this.f31178b = this.f31177a.hasMoreElements() ? new FileInputStream(this.f31177a.nextElement()) : null;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        InputStream inputStream = this.f31178b;
        if (inputStream != null) {
            inputStream.close();
            this.f31178b = null;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f31178b;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read();
            if (read != -1) {
                return read;
            }
            a();
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f31178b == null) {
            return -1;
        }
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        } else if (i2 == 0) {
            return 0;
        } else {
            do {
                int read = this.f31178b.read(bArr, i, i2);
                if (read > 0) {
                    return read;
                }
                a();
            } while (this.f31178b != null);
            return -1;
        }
    }
}
