package com.mopub.common;

import io.objectbox.model.PropertyFlags;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/c.class */
final class c implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final Charset f33911a;

    /* renamed from: b  reason: collision with root package name */
    private final InputStream f33912b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f33913c;

    /* renamed from: d  reason: collision with root package name */
    private int f33914d;
    private int e;

    public c(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(DiskLruCacheUtil.f33817a)) {
            this.f33912b = inputStream;
            this.f33911a = charset;
            this.f33913c = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public c(InputStream inputStream, Charset charset) {
        this(inputStream, PropertyFlags.UNSIGNED, charset);
    }

    private void a() throws IOException {
        InputStream inputStream = this.f33912b;
        byte[] bArr = this.f33913c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f33914d = 0;
            this.e = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f33912b) {
            if (this.f33913c != null) {
                this.f33913c = null;
                this.f33912b.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L_0x0053;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String readLine() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.c.readLine():java.lang.String");
    }
}
