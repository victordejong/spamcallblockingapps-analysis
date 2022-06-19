package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Objects;
/* renamed from: com.google.android.play.core.assetpacks.i1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/i1.class */
public final class C8396i1 extends InputStream {

    /* renamed from: d */
    private final Enumeration<File> f37794d;

    /* renamed from: e */
    private InputStream f37795e;

    public C8396i1(Enumeration<File> enumeration) {
        this.f37794d = enumeration;
        m3733a();
    }

    /* renamed from: a */
    final void m3733a() {
        InputStream inputStream = this.f37795e;
        if (inputStream != null) {
            inputStream.close();
        }
        this.f37795e = this.f37794d.hasMoreElements() ? new FileInputStream(this.f37794d.nextElement()) : null;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        InputStream inputStream = this.f37795e;
        if (inputStream != null) {
            inputStream.close();
            this.f37795e = null;
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        while (true) {
            InputStream inputStream = this.f37795e;
            if (inputStream != null) {
                int read = inputStream.read();
                if (read != -1) {
                    return read;
                }
                m3733a();
            } else {
                return -1;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f37795e == null) {
            return -1;
        }
        Objects.requireNonNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        do {
            int read = this.f37795e.read(bArr, i, i2);
            if (read > 0) {
                return read;
            }
            m3733a();
        } while (this.f37795e != null);
        return -1;
    }
}
