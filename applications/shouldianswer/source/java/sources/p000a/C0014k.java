package p000a;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* renamed from: a.k */
/* loaded from: classes-dex2jar.jar:a/k.class */
public final class C0014k implements AbstractC0026s {

    /* renamed from: a */
    private final AbstractC0008e f29a;

    /* renamed from: b */
    private final Inflater f30b;

    /* renamed from: c */
    private int f31c;

    /* renamed from: d */
    private boolean f32d;

    public C0014k(AbstractC0008e abstractC0008e, Inflater inflater) {
        if (abstractC0008e != null) {
            if (inflater == null) {
                throw new IllegalArgumentException("inflater == null");
            }
            this.f29a = abstractC0008e;
            this.f30b = inflater;
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: c */
    private void m8100c() {
        int i = this.f31c;
        if (i == 0) {
            return;
        }
        int remaining = i - this.f30b.getRemaining();
        this.f31c -= remaining;
        this.f29a.mo8065h(remaining);
    }

    @Override // p000a.AbstractC0026s
    /* renamed from: a */
    public long mo2087a(C0005c c0005c, long j) {
        boolean m8101b;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.f32d) {
            throw new IllegalStateException("closed");
        } else {
            if (i == 0) {
                return 0L;
            }
            do {
                m8101b = m8101b();
                try {
                    C0022o m8128e = c0005c.m8128e(1);
                    int inflate = this.f30b.inflate(m8128e.f46a, m8128e.f48c, (int) Math.min(j, 8192 - m8128e.f48c));
                    if (inflate > 0) {
                        m8128e.f48c += inflate;
                        long j2 = inflate;
                        c0005c.f14b += j2;
                        return j2;
                    }
                    if (!this.f30b.finished() && !this.f30b.needsDictionary()) {
                    }
                    m8100c();
                    if (m8128e.f47b != m8128e.f48c) {
                        return -1L;
                    }
                    c0005c.f13a = m8128e.m8054b();
                    C0023p.m8051a(m8128e);
                    return -1L;
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            } while (!m8101b);
            throw new EOFException("source exhausted prematurely");
        }
    }

    @Override // p000a.AbstractC0026s
    /* renamed from: a */
    public C0027t mo2088a() {
        return this.f29a.mo2088a();
    }

    /* renamed from: b */
    public boolean m8101b() {
        if (!this.f30b.needsInput()) {
            return false;
        }
        m8100c();
        if (this.f30b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f29a.mo8070e()) {
            return true;
        }
        C0022o c0022o = this.f29a.mo8072c().f13a;
        this.f31c = c0022o.f48c - c0022o.f47b;
        this.f30b.setInput(c0022o.f46a, c0022o.f47b, this.f31c);
        return false;
    }

    @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f32d) {
            return;
        }
        this.f30b.end();
        this.f32d = true;
        this.f29a.close();
    }
}
