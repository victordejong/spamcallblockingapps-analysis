package com.bumptech.glide.p068a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.a.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/b.class */
public class C1351b implements Closeable {

    /* renamed from: a */
    private final InputStream f4475a;

    /* renamed from: b */
    private final Charset f4476b;

    /* renamed from: c */
    private byte[] f4477c;

    /* renamed from: d */
    private int f4478d;

    /* renamed from: e */
    private int f4479e;

    public C1351b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(C1353c.f4481a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f4475a = inputStream;
        this.f4476b = charset;
        this.f4477c = new byte[i];
    }

    public C1351b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: c */
    private void m17356c() {
        int read = this.f4475a.read(this.f4477c, 0, this.f4477c.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.f4478d = 0;
        this.f4479e = read;
    }

    /* renamed from: a */
    public String m17359a() {
        int i;
        String byteArrayOutputStream;
        synchronized (this.f4475a) {
            if (this.f4477c == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f4478d >= this.f4479e) {
                m17356c();
            }
            int i2 = this.f4478d;
            while (true) {
                if (i2 == this.f4479e) {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream((this.f4479e - this.f4478d) + 80) { // from class: com.bumptech.glide.a.b.1
                        @Override // java.io.ByteArrayOutputStream
                        public String toString() {
                            try {
                                return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count - 1] != 13) ? this.count : this.count - 1, C1351b.this.f4476b.name());
                            } catch (UnsupportedEncodingException e) {
                                throw new AssertionError(e);
                            }
                        }
                    };
                    loop1: while (true) {
                        byteArrayOutputStream2.write(this.f4477c, this.f4478d, this.f4479e - this.f4478d);
                        this.f4479e = -1;
                        m17356c();
                        i = this.f4478d;
                        while (i != this.f4479e) {
                            if (this.f4477c[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                    if (i != this.f4478d) {
                        byteArrayOutputStream2.write(this.f4477c, this.f4478d, i - this.f4478d);
                    }
                    this.f4478d = i + 1;
                    byteArrayOutputStream = byteArrayOutputStream2.toString();
                } else if (this.f4477c[i2] == 10) {
                    byteArrayOutputStream = new String(this.f4477c, this.f4478d, ((i2 == this.f4478d || this.f4477c[i2 - 1] != 13) ? i2 : i2 - 1) - this.f4478d, this.f4476b.name());
                    this.f4478d = i2 + 1;
                } else {
                    i2++;
                }
            }
            return byteArrayOutputStream;
        }
    }

    /* renamed from: b */
    public boolean m17357b() {
        return this.f4479e == -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f4475a) {
            if (this.f4477c != null) {
                this.f4477c = null;
                this.f4475a.close();
            }
        }
    }
}
