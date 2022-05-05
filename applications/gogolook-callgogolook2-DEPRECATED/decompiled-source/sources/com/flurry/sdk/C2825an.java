package com.flurry.sdk;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* renamed from: com.flurry.sdk.an */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/an.class */
public final class C2825an implements Closeable {

    /* renamed from: a */
    public final Charset f4035a;

    /* renamed from: b */
    public final InputStream f4036b;

    /* renamed from: c */
    public byte[] f4037c;

    /* renamed from: d */
    public int f4038d;

    /* renamed from: e */
    public int f4039e;

    public C2825an(InputStream inputStream, Charset charset) {
        this(inputStream, charset, (byte) 0);
    }

    public C2825an(InputStream inputStream, Charset charset, byte b) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (charset.equals(C2827ao.f4041a)) {
            this.f4036b = inputStream;
            this.f4035a = charset;
            this.f4037c = new byte[8192];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        if (r6.f4037c[r10] == 13) goto L_0x0056;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m33587a() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2825an.m33587a():java.lang.String");
    }

    /* renamed from: b */
    public final void m33586b() throws IOException {
        InputStream inputStream = this.f4036b;
        byte[] bArr = this.f4037c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f4038d = 0;
            this.f4039e = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.f4036b) {
            if (this.f4037c != null) {
                this.f4037c = null;
                this.f4036b.close();
            }
        }
    }
}
