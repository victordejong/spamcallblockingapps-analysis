package com.aotter.net.trek.common;

import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* renamed from: com.aotter.net.trek.common.g */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/g.class */
public class C1747g implements Closeable {

    /* renamed from: a */
    public static final byte f1518a = 13;

    /* renamed from: b */
    public static final byte f1519b = 10;

    /* renamed from: c */
    public final InputStream f1520c;

    /* renamed from: d */
    public final Charset f1521d;

    /* renamed from: e */
    public byte[] f1522e;

    /* renamed from: f */
    public int f1523f;

    /* renamed from: g */
    public int f1524g;

    public C1747g(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(DiskLruCacheUtil.f1498a)) {
            this.f1520c = inputStream;
            this.f1521d = charset;
            this.f1522e = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public C1747g(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: a */
    private void m36348a() {
        InputStream inputStream = this.f1520c;
        byte[] bArr = this.f1522e;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f1523f = 0;
            this.f1524g = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f1520c) {
            if (this.f1522e != null) {
                this.f1522e = null;
                this.f1520c.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        if (r6.f1522e[r10] == 13) goto L_0x0056;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readLine() {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.trek.common.C1747g.readLine():java.lang.String");
    }
}
