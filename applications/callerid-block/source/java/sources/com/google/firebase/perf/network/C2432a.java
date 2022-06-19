package com.google.firebase.perf.network;

import com.google.firebase.perf.e.a;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.firebase.perf.network.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/a.class */
public final class C2432a extends InputStream {

    /* renamed from: b */
    private final InputStream f10656b;

    /* renamed from: c */
    private final a f10657c;

    /* renamed from: d */
    private final Timer f10658d;

    /* renamed from: f */
    private long f10660f;

    /* renamed from: e */
    private long f10659e = -1;

    /* renamed from: g */
    private long f10661g = -1;

    public C2432a(InputStream inputStream, a aVar, Timer timer) {
        this.f10658d = timer;
        this.f10656b = inputStream;
        this.f10657c = aVar;
        this.f10660f = aVar.e();
    }

    @Override // java.io.InputStream
    public int available() {
        try {
            return this.f10656b.available();
        } catch (IOException e) {
            this.f10657c.v(this.f10658d.m3587b());
            C2439h.m3589d(this.f10657c);
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long m3587b = this.f10658d.m3587b();
        if (this.f10661g == -1) {
            this.f10661g = m3587b;
        }
        try {
            this.f10656b.close();
            long j = this.f10659e;
            if (j != -1) {
                this.f10657c.s(j);
            }
            long j2 = this.f10660f;
            if (j2 != -1) {
                this.f10657c.w(j2);
            }
            this.f10657c.v(this.f10661g);
            this.f10657c.b();
        } catch (IOException e) {
            this.f10657c.v(this.f10658d.m3587b());
            C2439h.m3589d(this.f10657c);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f10656b.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f10656b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            int read = this.f10656b.read();
            long m3587b = this.f10658d.m3587b();
            if (this.f10660f == -1) {
                this.f10660f = m3587b;
            }
            if (read == -1 && this.f10661g == -1) {
                this.f10661g = m3587b;
                this.f10657c.v(m3587b);
                this.f10657c.b();
            } else {
                long j = this.f10659e + 1;
                this.f10659e = j;
                this.f10657c.s(j);
            }
            return read;
        } catch (IOException e) {
            this.f10657c.v(this.f10658d.m3587b());
            C2439h.m3589d(this.f10657c);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            int read = this.f10656b.read(bArr);
            long m3587b = this.f10658d.m3587b();
            if (this.f10660f == -1) {
                this.f10660f = m3587b;
            }
            if (read == -1 && this.f10661g == -1) {
                this.f10661g = m3587b;
                this.f10657c.v(m3587b);
                this.f10657c.b();
            } else {
                long j = this.f10659e + read;
                this.f10659e = j;
                this.f10657c.s(j);
            }
            return read;
        } catch (IOException e) {
            this.f10657c.v(this.f10658d.m3587b());
            C2439h.m3589d(this.f10657c);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            int read = this.f10656b.read(bArr, i, i2);
            long m3587b = this.f10658d.m3587b();
            if (this.f10660f == -1) {
                this.f10660f = m3587b;
            }
            if (read == -1 && this.f10661g == -1) {
                this.f10661g = m3587b;
                this.f10657c.v(m3587b);
                this.f10657c.b();
            } else {
                long j = this.f10659e + read;
                this.f10659e = j;
                this.f10657c.s(j);
            }
            return read;
        } catch (IOException e) {
            this.f10657c.v(this.f10658d.m3587b());
            C2439h.m3589d(this.f10657c);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void reset() {
        try {
            this.f10656b.reset();
        } catch (IOException e) {
            this.f10657c.v(this.f10658d.m3587b());
            C2439h.m3589d(this.f10657c);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            long skip = this.f10656b.skip(j);
            long m3587b = this.f10658d.m3587b();
            if (this.f10660f == -1) {
                this.f10660f = m3587b;
            }
            if (skip == -1 && this.f10661g == -1) {
                this.f10661g = m3587b;
                this.f10657c.v(m3587b);
            } else {
                long j2 = this.f10659e + skip;
                this.f10659e = j2;
                this.f10657c.s(j2);
            }
            return skip;
        } catch (IOException e) {
            this.f10657c.v(this.f10658d.m3587b());
            C2439h.m3589d(this.f10657c);
            throw e;
        }
    }
}
