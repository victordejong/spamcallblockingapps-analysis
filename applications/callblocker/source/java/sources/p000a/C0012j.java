package p000a;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* renamed from: a.j */
/* loaded from: classes-dex2jar.jar:a/j.class */
public final class C0012j implements AbstractC0024s {

    /* renamed from: b */
    private final AbstractC0007e f24b;

    /* renamed from: c */
    private final Inflater f25c;

    /* renamed from: d */
    private final C0013k f26d;

    /* renamed from: a */
    private int f23a = 0;

    /* renamed from: e */
    private final CRC32 f27e = new CRC32();

    public C0012j(AbstractC0024s abstractC0024s) {
        if (abstractC0024s == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f25c = new Inflater(true);
        this.f24b = C0014l.m22522a(abstractC0024s);
        this.f26d = new C0013k(this.f24b, this.f25c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* renamed from: a */
    private void m22529a(C0005c c0005c, long j, long j2) {
        C0020o c0020o;
        boolean z;
        char c;
        C0020o c0020o2 = c0005c.f13a;
        ?? r7 = j;
        while (true) {
            C0020o c0020o3 = c0020o2;
            c0020o = c0020o3;
            z = r7;
            c = j2;
            if (r7 >= c0020o3.f46c - c0020o3.f45b) {
                r7 -= c0020o3.f46c - c0020o3.f45b;
                c0020o2 = c0020o3.f49f;
            }
        }
        while (c > 0) {
            int i = (int) (c0020o.f45b + (z ? 1L : 0L));
            int min = (int) Math.min(c0020o.f46c - i, (long) c);
            this.f27e.update(c0020o.f44a, i, min);
            c -= min;
            c0020o = c0020o.f49f;
            z = false;
        }
    }

    /* renamed from: a */
    private void m22528a(String str, int i, int i2) {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: b */
    private void m22527b() {
        this.f24b.mo22502a(10L);
        byte m22560b = this.f24b.mo22495c().m22560b(3L);
        boolean z = ((m22560b >> 1) & 1) == 1;
        if (z) {
            m22529a(this.f24b.mo22495c(), 0L, 10L);
        }
        m22528a("ID1ID2", 8075, this.f24b.mo22489h());
        this.f24b.mo22488h(8L);
        if (((m22560b >> 2) & 1) == 1) {
            this.f24b.mo22502a(2L);
            if (z) {
                m22529a(this.f24b.mo22495c(), 0L, 2L);
            }
            short mo22486j = this.f24b.mo22495c().mo22486j();
            this.f24b.mo22502a(mo22486j);
            if (z) {
                m22529a(this.f24b.mo22495c(), 0L, mo22486j);
            }
            this.f24b.mo22488h(mo22486j);
        }
        if (((m22560b >> 3) & 1) == 1) {
            long mo22504a = this.f24b.mo22504a((byte) 0);
            if (mo22504a == -1) {
                throw new EOFException();
            }
            if (z) {
                m22529a(this.f24b.mo22495c(), 0L, 1 + mo22504a);
            }
            this.f24b.mo22488h(1 + mo22504a);
        }
        if (((m22560b >> 4) & 1) == 1) {
            long mo22504a2 = this.f24b.mo22504a((byte) 0);
            if (mo22504a2 == -1) {
                throw new EOFException();
            }
            if (z) {
                m22529a(this.f24b.mo22495c(), 0L, 1 + mo22504a2);
            }
            this.f24b.mo22488h(1 + mo22504a2);
        }
        if (z) {
            m22528a("FHCRC", this.f24b.mo22486j(), (short) this.f27e.getValue());
            this.f27e.reset();
        }
    }

    /* renamed from: c */
    private void m22526c() {
        m22528a("CRC", this.f24b.mo22485k(), (int) this.f27e.getValue());
        m22528a("ISIZE", this.f24b.mo22485k(), (int) this.f25c.getBytesWritten());
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // p000a.AbstractC0024s
    /* renamed from: a */
    public long mo90a(C0005c c0005c, long j) {
        char c;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            c = 0;
        } else {
            if (this.f23a == 0) {
                m22527b();
                this.f23a = 1;
            }
            if (this.f23a == 1) {
                long j2 = c0005c.f14b;
                c = this.f26d.mo90a(c0005c, j);
                if (c != -1) {
                    m22529a(c0005c, j2, c);
                } else {
                    this.f23a = 2;
                }
            }
            if (this.f23a == 2) {
                m22526c();
                this.f23a = 3;
                if (!this.f24b.mo22493e()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            c = 65535;
        }
        return c;
    }

    @Override // p000a.AbstractC0024s
    /* renamed from: a */
    public C0025t mo405a() {
        return this.f24b.mo405a();
    }

    @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f26d.close();
    }
}
