package com.bumptech.glide.a;

import io.objectbox.model.PropertyFlags;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/b.class */
final class b implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final Charset f7209a;

    /* renamed from: b  reason: collision with root package name */
    int f7210b;

    /* renamed from: c  reason: collision with root package name */
    private final InputStream f7211c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f7212d;
    private int e;

    public b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(c.f7214a)) {
            this.f7211c = inputStream;
            this.f7209a = charset;
            this.f7212d = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public b(InputStream inputStream, Charset charset) {
        this(inputStream, PropertyFlags.UNSIGNED, charset);
    }

    private void b() throws IOException {
        InputStream inputStream = this.f7211c;
        byte[] bArr = this.f7212d;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.e = 0;
            this.f7210b = read;
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L_0x0053;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.a.b.a():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f7211c) {
            if (this.f7212d != null) {
                this.f7212d = null;
                this.f7211c.close();
            }
        }
    }
}
