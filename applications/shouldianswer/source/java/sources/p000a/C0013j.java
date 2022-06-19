package p000a;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* renamed from: a.j */
/* loaded from: classes-dex2jar.jar:a/j.class */
public final class C0013j implements AbstractC0026s {

    /* renamed from: b */
    private final AbstractC0008e f25b;

    /* renamed from: c */
    private final Inflater f26c;

    /* renamed from: d */
    private final C0014k f27d;

    /* renamed from: a */
    private int f24a = 0;

    /* renamed from: e */
    private final CRC32 f28e = new CRC32();

    public C0013j(AbstractC0026s abstractC0026s) {
        if (abstractC0026s != null) {
            this.f26c = new Inflater(true);
            this.f25b = C0015l.m8098a(abstractC0026s);
            this.f27d = new C0014k(this.f25b, this.f26c);
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
    private void m8105a(C0005c c0005c, long j, long j2) {
        C0022o c0022o;
        C0022o c0022o2 = c0005c.f13a;
        ?? r7 = j;
        while (true) {
            c0022o = c0022o2;
            if ((r7 == true ? 1 : 0) >= c0022o.f48c - c0022o.f47b) {
                r7 -= c0022o.f48c - c0022o.f47b;
                c0022o2 = c0022o.f51f;
            }
        }
        while (j2 > 0) {
            int i = (int) (c0022o.f47b + (r7 == true ? 1 : 0));
            int min = (int) Math.min(c0022o.f48c - i, (long) j2);
            this.f28e.update(c0022o.f46a, i, min);
            j2 -= min;
            c0022o = c0022o.f51f;
            r7 = 0;
        }
    }

    /* renamed from: a */
    private void m8104a(String str, int i, int i2) {
        if (i2 == i) {
            return;
        }
        throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
    }

    /* renamed from: b */
    private void m8103b() {
        this.f25b.mo8078a(10L);
        byte m8135b = this.f25b.mo8072c().m8135b(3L);
        boolean z = ((m8135b >> 1) & 1) == 1;
        if (z) {
            m8105a(this.f25b.mo8072c(), 0L, 10L);
        }
        m8104a("ID1ID2", 8075, this.f25b.mo8064i());
        this.f25b.mo8065h(8L);
        if (((m8135b >> 2) & 1) == 1) {
            this.f25b.mo8078a(2L);
            if (z) {
                m8105a(this.f25b.mo8072c(), 0L, 2L);
            }
            long mo8062k = this.f25b.mo8072c().mo8062k();
            this.f25b.mo8078a(mo8062k);
            if (z) {
                m8105a(this.f25b.mo8072c(), 0L, mo8062k);
            }
            this.f25b.mo8065h(mo8062k);
        }
        if (((m8135b >> 3) & 1) == 1) {
            long mo8080a = this.f25b.mo8080a((byte) 0);
            if (mo8080a == -1) {
                throw new EOFException();
            }
            if (z) {
                m8105a(this.f25b.mo8072c(), 0L, mo8080a + 1);
            }
            this.f25b.mo8065h(mo8080a + 1);
        }
        if (((m8135b >> 4) & 1) == 1) {
            long mo8080a2 = this.f25b.mo8080a((byte) 0);
            if (mo8080a2 == -1) {
                throw new EOFException();
            }
            if (z) {
                m8105a(this.f25b.mo8072c(), 0L, mo8080a2 + 1);
            }
            this.f25b.mo8065h(mo8080a2 + 1);
        }
        if (z) {
            m8104a("FHCRC", this.f25b.mo8062k(), (short) this.f28e.getValue());
            this.f28e.reset();
        }
    }

    /* renamed from: c */
    private void m8102c() {
        m8104a("CRC", this.f25b.mo8061l(), (int) this.f28e.getValue());
        m8104a("ISIZE", this.f25b.mo8061l(), (int) this.f26c.getBytesWritten());
    }

    @Override // p000a.AbstractC0026s
    /* renamed from: a */
    public long mo2087a(C0005c c0005c, long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (i == 0) {
            return 0L;
        } else {
            if (this.f24a == 0) {
                m8103b();
                this.f24a = 1;
            }
            if (this.f24a == 1) {
                long j2 = c0005c.f14b;
                long mo2087a = this.f27d.mo2087a(c0005c, j);
                if (mo2087a != -1) {
                    m8105a(c0005c, j2, mo2087a);
                    return mo2087a;
                }
                this.f24a = 2;
            }
            if (this.f24a != 2) {
                return -1L;
            }
            m8102c();
            this.f24a = 3;
            if (!this.f25b.mo8070e()) {
                throw new IOException("gzip finished without exhausting source");
            }
            return -1L;
        }
    }

    @Override // p000a.AbstractC0026s
    /* renamed from: a */
    public C0027t mo2088a() {
        return this.f25b.mo2088a();
    }

    @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f27d.close();
    }
}
