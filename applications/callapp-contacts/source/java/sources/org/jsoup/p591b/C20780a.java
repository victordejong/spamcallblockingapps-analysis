package org.jsoup.p591b;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import org.jsoup.p590a.C20779c;
/* renamed from: org.jsoup.b.a */
/* loaded from: classes5-dex2jar.jar:org/jsoup/b/a.class */
public final class C20780a extends BufferedInputStream {

    /* renamed from: a */
    private final boolean f67292a;

    /* renamed from: b */
    private final int f67293b;

    /* renamed from: c */
    private long f67294c;

    /* renamed from: d */
    private long f67295d = 0;

    /* renamed from: e */
    private int f67296e;

    /* renamed from: f */
    private boolean f67297f;

    private C20780a(InputStream inputStream, int i, int i2) {
        super(inputStream, i);
        C20779c.m503a(i2 >= 0);
        this.f67293b = i2;
        this.f67296e = i2;
        this.f67292a = i2 != 0;
        this.f67294c = System.nanoTime();
    }

    /* renamed from: a */
    public static C20780a m498a(InputStream inputStream, int i) {
        return inputStream instanceof C20780a ? (C20780a) inputStream : new C20780a(inputStream, 32768, i);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f67297f) {
            if (this.f67292a && this.f67296e <= 0) {
                return -1;
            }
            boolean z = true;
            if (Thread.interrupted()) {
                this.f67297f = true;
                return -1;
            }
            if (this.f67295d == 0 || System.nanoTime() - this.f67294c <= this.f67295d) {
                z = false;
            }
            if (z) {
                throw new SocketTimeoutException("Read timeout");
            }
            int i3 = i2;
            if (this.f67292a) {
                int i4 = this.f67296e;
                i3 = i2;
                if (i2 > i4) {
                    i3 = i4;
                }
            }
            try {
                int read = super.read(bArr, i, i3);
                this.f67296e -= read;
                return read;
            } catch (SocketTimeoutException e) {
                return 0;
            }
        }
        return -1;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        super.reset();
        this.f67296e = this.f67293b - this.markpos;
    }
}
