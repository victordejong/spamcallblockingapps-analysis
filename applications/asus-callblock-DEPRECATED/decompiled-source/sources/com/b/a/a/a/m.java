package com.b.a.a.a;

import b.c;
import b.p;
import b.r;
import com.b.a.a.h;
import java.net.ProtocolException;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/m.class */
public final class m implements p {

    /* renamed from: a  reason: collision with root package name */
    public final c f3216a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3217b;
    private final int c;

    public m() {
        this(-1);
    }

    public m(int i) {
        this.f3216a = new c();
        this.c = i;
    }

    @Override // b.p
    public final r a() {
        return r.f343b;
    }

    public final void a(p pVar) {
        c cVar = new c();
        this.f3216a.a(cVar, 0L, this.f3216a.f318b);
        pVar.a_(cVar, cVar.f318b);
    }

    @Override // b.p
    public final void a_(c cVar, long j) {
        if (this.f3217b) {
            throw new IllegalStateException("closed");
        }
        h.a(cVar.f318b, j);
        if (this.c == -1 || this.f3216a.f318b <= this.c - j) {
            this.f3216a.a_(cVar, j);
            return;
        }
        throw new ProtocolException("exceeded content-length limit of " + this.c + " bytes");
    }

    @Override // b.p, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.f3217b) {
            this.f3217b = true;
            if (this.f3216a.f318b < this.c) {
                throw new ProtocolException("content-length promised " + this.c + " bytes, but received " + this.f3216a.f318b);
            }
        }
    }

    @Override // b.p, java.io.Flushable
    public final void flush() {
    }
}
