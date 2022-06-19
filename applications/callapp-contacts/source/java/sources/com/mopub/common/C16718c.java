package com.mopub.common;

import io.objectbox.model.PropertyFlags;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.mopub.common.c */
/* loaded from: classes4-dex2jar.jar:com/mopub/common/c.class */
public final class C16718c implements Closeable {

    /* renamed from: a */
    final Charset f58855a;

    /* renamed from: b */
    private final InputStream f58856b;

    /* renamed from: c */
    private byte[] f58857c;

    /* renamed from: d */
    private int f58858d;

    /* renamed from: e */
    private int f58859e;

    public C16718c(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(DiskLruCacheUtil.f58735a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f58856b = inputStream;
        this.f58855a = charset;
        this.f58857c = new byte[i];
    }

    public C16718c(InputStream inputStream, Charset charset) {
        this(inputStream, PropertyFlags.UNSIGNED, charset);
    }

    /* renamed from: a */
    private void m6678a() throws IOException {
        InputStream inputStream = this.f58856b;
        byte[] bArr = this.f58857c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f58858d = 0;
            this.f58859e = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f58856b) {
            if (this.f58857c != null) {
                this.f58857c = null;
                this.f58856b.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L23;
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
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.C16718c.readLine():java.lang.String");
    }
}
