package com.bumptech.glide.p016j;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* renamed from: com.bumptech.glide.j.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/j/b.class */
class C0717b implements Closeable {

    /* renamed from: b */
    private final InputStream f3452b;

    /* renamed from: c */
    private final Charset f3453c;

    /* renamed from: d */
    private byte[] f3454d;

    /* renamed from: e */
    private int f3455e;

    /* renamed from: f */
    private int f3456f;

    /* renamed from: com.bumptech.glide.j.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/j/b$a.class */
    class C0718a extends ByteArrayOutputStream {
        C0718a(int i) {
            super(i);
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
                return new String(((ByteArrayOutputStream) this).buf, 0, i2, C0717b.this.f3453c.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public C0717b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(C0719c.f3458a)) {
            this.f3452b = inputStream;
            this.f3453c = charset;
            this.f3454d = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public C0717b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: p */
    private void m11261p() {
        InputStream inputStream = this.f3452b;
        byte[] bArr = this.f3454d;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f3455e = 0;
            this.f3456f = read;
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L_0x0053;
     */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m11263B() {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p016j.C0717b.m11263B():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f3452b) {
            if (this.f3454d != null) {
                this.f3454d = null;
                this.f3452b.close();
            }
        }
    }

    /* renamed from: x */
    public boolean m11260x() {
        return this.f3456f == -1;
    }
}
