package com.bumptech.glide.p108a;

import io.objectbox.model.PropertyFlags;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.a.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/b.class */
public final class C3538b implements Closeable {

    /* renamed from: a */
    final Charset f13471a;

    /* renamed from: b */
    int f13472b;

    /* renamed from: c */
    private final InputStream f13473c;

    /* renamed from: d */
    private byte[] f13474d;

    /* renamed from: e */
    private int f13475e;

    public C3538b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(C3540c.f13477a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f13473c = inputStream;
        this.f13471a = charset;
        this.f13474d = new byte[i];
    }

    public C3538b(InputStream inputStream, Charset charset) {
        this(inputStream, PropertyFlags.UNSIGNED, charset);
    }

    /* renamed from: b */
    private void m37755b() throws IOException {
        InputStream inputStream = this.f13473c;
        byte[] bArr = this.f13474d;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f13475e = 0;
            this.f13472b = read;
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L23;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m37756a() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p108a.C3538b.m37756a():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f13473c) {
            if (this.f13474d != null) {
                this.f13474d = null;
                this.f13473c.close();
            }
        }
    }
}
