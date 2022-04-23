package com.google.firebase.perf.network;

import com.google.firebase.perf.e.a;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.firebase.perf.network.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/b.class */
public final class C2433b extends OutputStream {

    /* renamed from: b */
    private OutputStream f10662b;

    /* renamed from: c */
    long f10663c = -1;

    /* renamed from: d */
    a f10664d;

    /* renamed from: e */
    private final Timer f10665e;

    public C2433b(OutputStream outputStream, a aVar, Timer timer) {
        this.f10662b = outputStream;
        this.f10664d = aVar;
        this.f10665e = timer;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j = this.f10663c;
        if (j != -1) {
            this.f10664d.o(j);
        }
        this.f10664d.t(this.f10665e.m3587b());
        try {
            this.f10662b.close();
        } catch (IOException e) {
            this.f10664d.v(this.f10665e.m3587b());
            C2439h.m3589d(this.f10664d);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        try {
            this.f10662b.flush();
        } catch (IOException e) {
            this.f10664d.v(this.f10665e.m3587b());
            C2439h.m3589d(this.f10664d);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        try {
            this.f10662b.write(i);
            long j = this.f10663c + 1;
            this.f10663c = j;
            this.f10664d.o(j);
        } catch (IOException e) {
            this.f10664d.v(this.f10665e.m3587b());
            C2439h.m3589d(this.f10664d);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        try {
            this.f10662b.write(bArr);
            long length = this.f10663c + bArr.length;
            this.f10663c = length;
            this.f10664d.o(length);
        } catch (IOException e) {
            this.f10664d.v(this.f10665e.m3587b());
            C2439h.m3589d(this.f10664d);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        try {
            this.f10662b.write(bArr, i, i2);
            long j = this.f10663c + i2;
            this.f10663c = j;
            this.f10664d.o(j);
        } catch (IOException e) {
            this.f10664d.v(this.f10665e.m3587b());
            C2439h.m3589d(this.f10664d);
            throw e;
        }
    }
}
