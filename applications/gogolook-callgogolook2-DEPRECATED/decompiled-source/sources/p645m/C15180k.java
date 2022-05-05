package p645m;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* renamed from: m.k */
/* loaded from: classes3-dex2jar.jar:m/k.class */
public final class C15180k implements AbstractC15193s {

    /* renamed from: a */
    public final AbstractC15174e f33174a;

    /* renamed from: b */
    public final Inflater f33175b;

    /* renamed from: c */
    public int f33176c;

    /* renamed from: d */
    public boolean f33177d;

    public C15180k(AbstractC15174e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater != null) {
            this.f33174a = eVar;
            this.f33175b = inflater;
        } else {
            throw new IllegalArgumentException("inflater == null");
        }
    }

    /* renamed from: a */
    public final boolean m329a() throws IOException {
        if (!this.f33175b.needsInput()) {
            return false;
        }
        m328b();
        if (this.f33175b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        } else if (this.f33174a.mo292v()) {
            return true;
        } else {
            C15189o oVar = this.f33174a.mo296q().f33159a;
            int i = oVar.f33193c;
            int i2 = oVar.f33192b;
            this.f33176c = i - i2;
            this.f33175b.setInput(oVar.f33191a, i2, this.f33176c);
            return false;
        }
    }

    /* renamed from: b */
    public final void m328b() throws IOException {
        int i = this.f33176c;
        if (i != 0) {
            int remaining = i - this.f33175b.getRemaining();
            this.f33176c -= remaining;
            this.f33174a.skip(remaining);
        }
    }

    @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f33177d) {
            this.f33175b.end();
            this.f33177d = true;
            this.f33174a.close();
        }
    }

    @Override // p645m.AbstractC15193s
    public long read(C15170c cVar, long j) throws IOException {
        boolean a;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.f33177d) {
            throw new IllegalStateException("closed");
        } else if (i == 0) {
            return 0L;
        } else {
            do {
                a = m329a();
                try {
                    C15189o b = cVar.m357b(1);
                    int inflate = this.f33175b.inflate(b.f33191a, b.f33193c, (int) Math.min(j, 8192 - b.f33193c));
                    if (inflate > 0) {
                        b.f33193c += inflate;
                        long j2 = inflate;
                        cVar.f33160b += j2;
                        return j2;
                    }
                    if (!this.f33175b.finished() && !this.f33175b.needsDictionary()) {
                    }
                    m328b();
                    if (b.f33192b != b.f33193c) {
                        return -1L;
                    }
                    cVar.f33159a = b.m283b();
                    C15190p.m280a(b);
                    return -1L;
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            } while (!a);
            throw new EOFException("source exhausted prematurely");
        }
    }

    @Override // p645m.AbstractC15193s
    public C15194t timeout() {
        return this.f33174a.timeout();
    }
}
