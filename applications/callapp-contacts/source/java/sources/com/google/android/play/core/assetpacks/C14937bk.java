package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Objects;
/* renamed from: com.google.android.play.core.assetpacks.bk */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bk.class */
public final class C14937bk extends InputStream {

    /* renamed from: a */
    private final Enumeration<File> f54529a;

    /* renamed from: b */
    private InputStream f54530b;

    public C14937bk(Enumeration<File> enumeration) throws IOException {
        this.f54529a = enumeration;
        m9741a();
    }

    /* renamed from: a */
    private void m9741a() throws IOException {
        InputStream inputStream = this.f54530b;
        if (inputStream != null) {
            inputStream.close();
        }
        this.f54530b = this.f54529a.hasMoreElements() ? new FileInputStream(this.f54529a.nextElement()) : null;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        InputStream inputStream = this.f54530b;
        if (inputStream != null) {
            inputStream.close();
            this.f54530b = null;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f54530b;
            if (inputStream != null) {
                int read = inputStream.read();
                if (read != -1) {
                    return read;
                }
                m9741a();
            } else {
                return -1;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f54530b == null) {
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
            int read = this.f54530b.read(bArr, i, i2);
            if (read > 0) {
                return read;
            }
            m9741a();
        } while (this.f54530b != null);
        return -1;
    }
}
