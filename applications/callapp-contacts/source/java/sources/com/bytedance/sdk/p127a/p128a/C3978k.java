package com.bytedance.sdk.p127a.p128a;

import io.objectbox.model.PropertyFlags;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* renamed from: com.bytedance.sdk.a.a.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/k.class */
public final class C3978k implements AbstractC3990s {

    /* renamed from: a */
    private final AbstractC3972e f14434a;

    /* renamed from: b */
    private final Inflater f14435b;

    /* renamed from: c */
    private int f14436c;

    /* renamed from: d */
    private boolean f14437d;

    public C3978k(AbstractC3972e abstractC3972e, Inflater inflater) {
        if (abstractC3972e != null) {
            if (inflater == null) {
                throw new IllegalArgumentException("inflater == null");
            }
            this.f14434a = abstractC3972e;
            this.f14435b = inflater;
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: c */
    private void m37087c() throws IOException {
        int i = this.f14436c;
        if (i == 0) {
            return;
        }
        int remaining = i - this.f14435b.getRemaining();
        this.f14436c -= remaining;
        this.f14434a.mo37053h(remaining);
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
    /* renamed from: a */
    public final long mo36719a(C3969c c3969c, long j) throws IOException {
        boolean m37088b;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (this.f14437d) {
                throw new IllegalStateException("closed");
            }
            if (i == 0) {
                return 0L;
            }
            do {
                m37088b = m37088b();
                try {
                    C3986o m37115e = c3969c.m37115e(1);
                    int inflate = this.f14435b.inflate(m37115e.f14451a, m37115e.f14453c, (int) Math.min(j, PropertyFlags.UNSIGNED - m37115e.f14453c));
                    if (inflate > 0) {
                        m37115e.f14453c += inflate;
                        long j2 = inflate;
                        c3969c.f14419b += j2;
                        return j2;
                    }
                    if (!this.f14435b.finished() && !this.f14435b.needsDictionary()) {
                    }
                    m37087c();
                    if (m37115e.f14452b != m37115e.f14453c) {
                        return -1L;
                    }
                    c3969c.f14418a = m37115e.m37042b();
                    C3987p.m37039a(m37115e);
                    return -1L;
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            } while (!m37088b);
            throw new EOFException("source exhausted prematurely");
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
    /* renamed from: a */
    public final C3991t mo36720a() {
        return this.f14434a.mo36720a();
    }

    /* renamed from: b */
    public final boolean m37088b() throws IOException {
        if (!this.f14435b.needsInput()) {
            return false;
        }
        m37087c();
        if (this.f14435b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f14434a.mo37058e()) {
            return true;
        }
        C3986o c3986o = this.f14434a.mo37060c().f14418a;
        this.f14436c = c3986o.f14453c - c3986o.f14452b;
        this.f14435b.setInput(c3986o.f14451a, c3986o.f14452b, this.f14436c);
        return false;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f14437d) {
            return;
        }
        this.f14435b.end();
        this.f14437d = true;
        this.f14434a.close();
    }
}
