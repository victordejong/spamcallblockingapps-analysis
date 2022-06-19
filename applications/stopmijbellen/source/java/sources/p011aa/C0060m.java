package p011aa;

import java.io.EOFException;
import java.io.IOException;
import java.util.logging.Logger;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* renamed from: aa.m */
/* loaded from: classes2-dex2jar.jar:aa/m.class */
public final class C0060m implements AbstractC0074y {

    /* renamed from: b */
    public final AbstractC0055h f130b;

    /* renamed from: c */
    public final Inflater f131c;

    /* renamed from: d */
    public final C0061n f132d;

    /* renamed from: a */
    public int f129a = 0;

    /* renamed from: e */
    public final CRC32 f133e = new CRC32();

    public C0060m(AbstractC0074y abstractC0074y) {
        if (abstractC0074y != null) {
            Inflater inflater = new Inflater(true);
            this.f131c = inflater;
            Logger logger = C0062o.f138a;
            C0069t c0069t = new C0069t(abstractC0074y);
            this.f130b = c0069t;
            this.f132d = new C0061n(c0069t, inflater);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: b */
    public C0075z mo610b() {
        return this.f130b.mo610b();
    }

    @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f132d.close();
    }

    /* renamed from: d */
    public final void m8833d(String str, int i, int i2) throws IOException {
        if (i2 == i) {
            return;
        }
        throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: f */
    public long mo609f(C0053f c0053f, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (i == 0) {
            return 0L;
        } else {
            if (this.f129a == 0) {
                this.f130b.mo8810Q(10L);
                byte m8844l = this.f130b.mo8807a().m8844l(3L);
                boolean z = ((m8844l >> 1) & 1) == 1;
                if (z) {
                    m8832k(this.f130b.mo8807a(), 0L, 10L);
                }
                m8833d("ID1ID2", 8075, this.f130b.readShort());
                this.f130b.mo8804j(8L);
                if (((m8844l >> 2) & 1) == 1) {
                    this.f130b.mo8810Q(2L);
                    if (z) {
                        m8832k(this.f130b.mo8807a(), 0L, 2L);
                    }
                    long mo8813C = this.f130b.mo8807a().mo8813C();
                    this.f130b.mo8810Q(mo8813C);
                    if (z) {
                        m8832k(this.f130b.mo8807a(), 0L, mo8813C);
                    }
                    this.f130b.mo8804j(mo8813C);
                }
                if (((m8844l >> 3) & 1) == 1) {
                    long mo8809V = this.f130b.mo8809V((byte) 0);
                    if (mo8809V == -1) {
                        throw new EOFException();
                    }
                    if (z) {
                        m8832k(this.f130b.mo8807a(), 0L, mo8809V + 1);
                    }
                    this.f130b.mo8804j(mo8809V + 1);
                }
                if (((m8844l >> 4) & 1) == 1) {
                    long mo8809V2 = this.f130b.mo8809V((byte) 0);
                    if (mo8809V2 == -1) {
                        throw new EOFException();
                    }
                    if (z) {
                        m8832k(this.f130b.mo8807a(), 0L, mo8809V2 + 1);
                    }
                    this.f130b.mo8804j(mo8809V2 + 1);
                }
                if (z) {
                    m8833d("FHCRC", this.f130b.mo8813C(), (short) this.f133e.getValue());
                    this.f133e.reset();
                }
                this.f129a = 1;
            }
            if (this.f129a == 1) {
                long j2 = c0053f.f120b;
                long mo609f = this.f132d.mo609f(c0053f, j);
                if (mo609f != -1) {
                    m8832k(c0053f, j2, mo609f);
                    return mo609f;
                }
                this.f129a = 2;
            }
            if (this.f129a != 2) {
                return -1L;
            }
            m8833d("CRC", this.f130b.mo8799u(), (int) this.f133e.getValue());
            m8833d("ISIZE", this.f130b.mo8799u(), (int) this.f131c.getBytesWritten());
            this.f129a = 3;
            if (!this.f130b.mo8798v()) {
                throw new IOException("gzip finished without exhausting source");
            }
            return -1L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* renamed from: k */
    public final void m8832k(C0053f c0053f, long j, long j2) {
        C0070u c0070u;
        C0070u c0070u2 = c0053f.f119a;
        ?? r7 = j;
        while (true) {
            c0070u = c0070u2;
            int i = c0070u.f153c;
            int i2 = c0070u.f152b;
            if ((r7 == true ? 1 : 0) >= i - i2) {
                r7 -= i - i2;
                c0070u2 = c0070u.f156f;
            }
        }
        while (j2 > 0) {
            int i3 = (int) (c0070u.f152b + (r7 == true ? 1 : 0));
            int min = (int) Math.min(c0070u.f153c - i3, (long) j2);
            this.f133e.update(c0070u.f151a, i3, min);
            j2 -= min;
            c0070u = c0070u.f156f;
            r7 = 0;
        }
    }
}
