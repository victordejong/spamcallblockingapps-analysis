package com.bumptech.glide.p206k;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.k.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/b.class */
public class C3981b implements Closeable {

    /* renamed from: d */
    private final InputStream f12551d;

    /* renamed from: e */
    private final Charset f12552e;

    /* renamed from: f */
    private byte[] f12553f;

    /* renamed from: g */
    private int f12554g;

    /* renamed from: h */
    private int f12555h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.k.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/b$a.class */
    public class C3982a extends ByteArrayOutputStream {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3982a(int i) {
            super(i);
            C3981b.this = r4;
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            int i2 = i;
            if (i > 0) {
                i2 = i;
                if (((ByteArrayOutputStream) this).buf[i - 1] == 13) {
                    i2 = i - 1;
                }
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i2, C3981b.this.f12552e.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public C3981b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(C3983c.f12557a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f12551d = inputStream;
        this.f12552e = charset;
        this.f12553f = new byte[i];
    }

    public C3981b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: e */
    private void m23570e() {
        InputStream inputStream = this.f12551d;
        byte[] bArr = this.f12553f;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f12554g = 0;
            this.f12555h = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f12551d) {
            if (this.f12553f != null) {
                this.f12553f = null;
                this.f12551d.close();
            }
        }
    }

    /* renamed from: f */
    public boolean m23569f() {
        return this.f12555h == -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L23;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m23568g() {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p206k.C3981b.m23568g():java.lang.String");
    }
}
