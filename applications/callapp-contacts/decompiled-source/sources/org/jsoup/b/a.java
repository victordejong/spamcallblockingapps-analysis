package org.jsoup.b;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import org.jsoup.a.c;
/* loaded from: classes5-dex2jar.jar:org/jsoup/b/a.class */
public final class a extends BufferedInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f39202a;

    /* renamed from: b  reason: collision with root package name */
    private final int f39203b;

    /* renamed from: c  reason: collision with root package name */
    private long f39204c;

    /* renamed from: d  reason: collision with root package name */
    private long f39205d = 0;
    private int e;
    private boolean f;

    private a(InputStream inputStream, int i, int i2) {
        super(inputStream, i);
        boolean z = true;
        c.a(i2 >= 0);
        this.f39203b = i2;
        this.e = i2;
        if (i2 == 0) {
            z = false;
        }
        this.f39202a = z;
        this.f39204c = System.nanoTime();
    }

    public static a a(InputStream inputStream, int i) {
        return inputStream instanceof a ? (a) inputStream : new a(inputStream, 32768, i);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f) {
            return -1;
        }
        if (this.f39202a && this.e <= 0) {
            return -1;
        }
        boolean z = true;
        if (Thread.interrupted()) {
            this.f = true;
            return -1;
        }
        if (this.f39205d == 0 || System.nanoTime() - this.f39204c <= this.f39205d) {
            z = false;
        }
        if (!z) {
            int i3 = i2;
            if (this.f39202a) {
                int i4 = this.e;
                i3 = i2;
                if (i2 > i4) {
                    i3 = i4;
                }
            }
            try {
                int read = super.read(bArr, i, i3);
                this.e -= read;
                return read;
            } catch (SocketTimeoutException e) {
                return 0;
            }
        } else {
            throw new SocketTimeoutException("Read timeout");
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        super.reset();
        this.e = this.f39203b - this.markpos;
    }
}
