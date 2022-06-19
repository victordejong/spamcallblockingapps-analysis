package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.p089u.C2975i;
import java.net.ProtocolException;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;
/* renamed from: com.squareup.okhttp.internal.http.m */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/m.class */
public final class C2938m implements Sink {

    /* renamed from: b */
    private boolean f12387b;

    /* renamed from: c */
    private final int f12388c;

    /* renamed from: d */
    private final Buffer f12389d;

    public C2938m() {
        this(-1);
    }

    public C2938m(int i) {
        this.f12389d = new Buffer();
        this.f12388c = i;
    }

    /* renamed from: a */
    public long m933a() {
        return this.f12389d.size();
    }

    public void close() {
        if (this.f12387b) {
            return;
        }
        this.f12387b = true;
        if (this.f12389d.size() >= this.f12388c) {
            return;
        }
        throw new ProtocolException("content-length promised " + this.f12388c + " bytes, but received " + this.f12389d.size());
    }

    public void flush() {
    }

    /* renamed from: p */
    public void m932p(Sink sink) {
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.f12389d;
        buffer2.copyTo(buffer, 0L, buffer2.size());
        sink.write(buffer, buffer.size());
    }

    public Timeout timeout() {
        return Timeout.NONE;
    }

    public void write(Buffer buffer, long j) {
        if (!this.f12387b) {
            C2975i.m659a(buffer.size(), 0L, j);
            if (this.f12388c == -1 || this.f12389d.size() <= this.f12388c - j) {
                this.f12389d.write(buffer, j);
                return;
            }
            throw new ProtocolException("exceeded content-length limit of " + this.f12388c + " bytes");
        }
        throw new IllegalStateException("closed");
    }
}
