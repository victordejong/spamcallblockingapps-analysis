package p011aa;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* renamed from: aa.n */
/* loaded from: classes2-dex2jar.jar:aa/n.class */
public final class C0061n implements AbstractC0074y {

    /* renamed from: a */
    public final AbstractC0055h f134a;

    /* renamed from: b */
    public final Inflater f135b;

    /* renamed from: c */
    public int f136c;

    /* renamed from: d */
    public boolean f137d;

    public C0061n(AbstractC0055h abstractC0055h, Inflater inflater) {
        this.f134a = abstractC0055h;
        this.f135b = inflater;
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: b */
    public C0075z mo610b() {
        return this.f134a.mo610b();
    }

    @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f137d) {
            return;
        }
        this.f135b.end();
        this.f137d = true;
        this.f134a.close();
    }

    /* renamed from: d */
    public final void m8831d() throws IOException {
        int i = this.f136c;
        if (i == 0) {
            return;
        }
        int remaining = i - this.f135b.getRemaining();
        this.f136c -= remaining;
        this.f134a.mo8804j(remaining);
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: f */
    public long mo609f(C0053f c0053f, long j) throws IOException {
        boolean z;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.f137d) {
            throw new IllegalStateException("closed");
        } else {
            if (i == 0) {
                return 0L;
            }
            do {
                z = false;
                if (this.f135b.needsInput()) {
                    m8831d();
                    if (this.f135b.getRemaining() != 0) {
                        throw new IllegalStateException("?");
                    }
                    if (this.f134a.mo8798v()) {
                        z = true;
                    } else {
                        C0070u c0070u = this.f134a.mo8807a().f119a;
                        int i2 = c0070u.f153c;
                        int i3 = c0070u.f152b;
                        int i4 = i2 - i3;
                        this.f136c = i4;
                        this.f135b.setInput(c0070u.f151a, i3, i4);
                    }
                }
                try {
                    C0070u m8859K = c0053f.m8859K(1);
                    int inflate = this.f135b.inflate(m8859K.f151a, m8859K.f153c, (int) Math.min(j, 8192 - m8859K.f153c));
                    if (inflate > 0) {
                        m8859K.f153c += inflate;
                        long j2 = inflate;
                        c0053f.f120b += j2;
                        return j2;
                    }
                    if (!this.f135b.finished() && !this.f135b.needsDictionary()) {
                    }
                    m8831d();
                    if (m8859K.f152b != m8859K.f153c) {
                        return -1L;
                    }
                    c0053f.f119a = m8859K.m8796a();
                    C0071v.m8792a(m8859K);
                    return -1L;
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            } while (!z);
            throw new EOFException("source exhausted prematurely");
        }
    }
}
