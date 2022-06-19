package com.bytedance.sdk.p127a.p128a;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* renamed from: com.bytedance.sdk.a.a.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/j.class */
public final class C3977j implements AbstractC3990s {

    /* renamed from: b */
    private final AbstractC3972e f14430b;

    /* renamed from: c */
    private final Inflater f14431c;

    /* renamed from: d */
    private final C3978k f14432d;

    /* renamed from: a */
    private int f14429a = 0;

    /* renamed from: e */
    private final CRC32 f14433e = new CRC32();

    public C3977j(AbstractC3990s abstractC3990s) {
        if (abstractC3990s != null) {
            Inflater inflater = new Inflater(true);
            this.f14431c = inflater;
            AbstractC3972e m37085a = C3979l.m37085a(abstractC3990s);
            this.f14430b = m37085a;
            this.f14432d = new C3978k(m37085a, inflater);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* renamed from: a */
    private void m37092a(C3969c c3969c, long j, long j2) {
        C3986o c3986o;
        C3986o c3986o2 = c3969c.f14418a;
        ?? r7 = j;
        while (true) {
            c3986o = c3986o2;
            if ((r7 == true ? 1 : 0) >= c3986o.f14453c - c3986o.f14452b) {
                r7 -= c3986o.f14453c - c3986o.f14452b;
                c3986o2 = c3986o.f14456f;
            }
        }
        while (j2 > 0) {
            int i = (int) (c3986o.f14452b + (r7 == true ? 1 : 0));
            int min = (int) Math.min(c3986o.f14453c - i, (long) j2);
            this.f14433e.update(c3986o.f14451a, i, min);
            j2 -= min;
            c3986o = c3986o.f14456f;
            r7 = 0;
        }
    }

    /* renamed from: a */
    private void m37091a(String str, int i, int i2) throws IOException {
        if (i2 == i) {
            return;
        }
        throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
    }

    /* renamed from: b */
    private void m37090b() throws IOException {
        this.f14430b.mo37066a(10L);
        byte m37122b = this.f14430b.mo37060c().m37122b(3L);
        boolean z = ((m37122b >> 1) & 1) == 1;
        if (z) {
            m37092a(this.f14430b.mo37060c(), 0L, 10L);
        }
        m37091a("ID1ID2", 8075, this.f14430b.mo37052i());
        this.f14430b.mo37053h(8L);
        if (((m37122b >> 2) & 1) == 1) {
            this.f14430b.mo37066a(2L);
            if (z) {
                m37092a(this.f14430b.mo37060c(), 0L, 2L);
            }
            long mo37050k = this.f14430b.mo37060c().mo37050k();
            this.f14430b.mo37066a(mo37050k);
            if (z) {
                m37092a(this.f14430b.mo37060c(), 0L, mo37050k);
            }
            this.f14430b.mo37053h(mo37050k);
        }
        if (((m37122b >> 3) & 1) == 1) {
            long mo37068a = this.f14430b.mo37068a((byte) 0);
            if (mo37068a == -1) {
                throw new EOFException();
            }
            if (z) {
                m37092a(this.f14430b.mo37060c(), 0L, mo37068a + 1);
            }
            this.f14430b.mo37053h(mo37068a + 1);
        }
        if (((m37122b >> 4) & 1) == 1) {
            long mo37068a2 = this.f14430b.mo37068a((byte) 0);
            if (mo37068a2 == -1) {
                throw new EOFException();
            }
            if (z) {
                m37092a(this.f14430b.mo37060c(), 0L, mo37068a2 + 1);
            }
            this.f14430b.mo37053h(mo37068a2 + 1);
        }
        if (z) {
            m37091a("FHCRC", this.f14430b.mo37050k(), (short) this.f14433e.getValue());
            this.f14433e.reset();
        }
    }

    /* renamed from: c */
    private void m37089c() throws IOException {
        m37091a("CRC", this.f14430b.mo37049l(), (int) this.f14433e.getValue());
        m37091a("ISIZE", this.f14430b.mo37049l(), (int) this.f14431c.getBytesWritten());
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
    /* renamed from: a */
    public final long mo36719a(C3969c c3969c, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (i == 0) {
                return 0L;
            }
            if (this.f14429a == 0) {
                m37090b();
                this.f14429a = 1;
            }
            if (this.f14429a == 1) {
                long j2 = c3969c.f14419b;
                long mo36719a = this.f14432d.mo36719a(c3969c, j);
                if (mo36719a != -1) {
                    m37092a(c3969c, j2, mo36719a);
                    return mo36719a;
                }
                this.f14429a = 2;
            }
            if (this.f14429a != 2) {
                return -1L;
            }
            m37089c();
            this.f14429a = 3;
            if (!this.f14430b.mo37058e()) {
                throw new IOException("gzip finished without exhausting source");
            }
            return -1L;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
    /* renamed from: a */
    public final C3991t mo36720a() {
        return this.f14430b.mo36720a();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f14432d.close();
    }
}
