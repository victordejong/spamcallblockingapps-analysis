package p000a;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* renamed from: a.k */
/* loaded from: classes-dex2jar.jar:a/k.class */
public final class C0013k implements AbstractC0024s {

    /* renamed from: a */
    private final AbstractC0007e f28a;

    /* renamed from: b */
    private final Inflater f29b;

    /* renamed from: c */
    private int f30c;

    /* renamed from: d */
    private boolean f31d;

    public C0013k(AbstractC0007e abstractC0007e, Inflater inflater) {
        if (abstractC0007e == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f28a = abstractC0007e;
        this.f29b = inflater;
    }

    /* renamed from: c */
    private void m22524c() {
        if (this.f30c == 0) {
            return;
        }
        int remaining = this.f30c - this.f29b.getRemaining();
        this.f30c -= remaining;
        this.f28a.mo22488h(remaining);
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // p000a.AbstractC0024s
    /* renamed from: a */
    public long mo90a(C0005c c0005c, long j) {
        boolean m22525b;
        char c;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f31d) {
            throw new IllegalStateException("closed");
        }
        if (j != 0) {
            do {
                m22525b = m22525b();
                try {
                    C0020o m22553e = c0005c.m22553e(1);
                    int inflate = this.f29b.inflate(m22553e.f44a, m22553e.f46c, (int) Math.min(j, 8192 - m22553e.f46c));
                    if (inflate > 0) {
                        m22553e.f46c += inflate;
                        c0005c.f14b += inflate;
                        c = inflate;
                    } else if (this.f29b.finished() || this.f29b.needsDictionary()) {
                        m22524c();
                        if (m22553e.f45b == m22553e.f46c) {
                            c0005c.f13a = m22553e.m22478b();
                            C0021p.m22475a(m22553e);
                        }
                        c = 65535;
                    }
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            } while (!m22525b);
            throw new EOFException("source exhausted prematurely");
        }
        c = 0;
        return c;
    }

    @Override // p000a.AbstractC0024s
    /* renamed from: a */
    public C0025t mo405a() {
        return this.f28a.mo405a();
    }

    /* renamed from: b */
    public boolean m22525b() {
        boolean z = false;
        if (this.f29b.needsInput()) {
            m22524c();
            if (this.f29b.getRemaining() != 0) {
                throw new IllegalStateException("?");
            }
            if (this.f28a.mo22493e()) {
                z = true;
            } else {
                C0020o c0020o = this.f28a.mo22495c().f13a;
                this.f30c = c0020o.f46c - c0020o.f45b;
                this.f29b.setInput(c0020o.f44a, c0020o.f45b, this.f30c);
            }
        }
        return z;
    }

    @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f31d) {
            return;
        }
        this.f29b.end();
        this.f31d = true;
        this.f28a.close();
    }
}
