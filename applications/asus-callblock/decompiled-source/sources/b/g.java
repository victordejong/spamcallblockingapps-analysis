package b;

import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* loaded from: classes-dex2jar.jar:b/g.class */
public final class g implements p {

    /* renamed from: a  reason: collision with root package name */
    private final d f322a;

    /* renamed from: b  reason: collision with root package name */
    private final Deflater f323b;
    private boolean c;

    private g(d dVar, Deflater deflater) {
        if (dVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (deflater == null) {
            throw new IllegalArgumentException("inflater == null");
        } else {
            this.f322a = dVar;
            this.f323b = deflater;
        }
    }

    public g(p pVar, Deflater deflater) {
        this(k.a(pVar), deflater);
    }

    @IgnoreJRERequirement
    private void a(boolean z) {
        n d;
        c b2 = this.f322a.b();
        while (true) {
            d = b2.d(1);
            int deflate = z ? this.f323b.deflate(d.f339a, d.c, 2048 - d.c, 2) : this.f323b.deflate(d.f339a, d.c, 2048 - d.c);
            if (deflate > 0) {
                d.c += deflate;
                b2.f318b += deflate;
                this.f322a.p();
            } else if (this.f323b.needsInput()) {
                break;
            }
        }
        if (d.f340b == d.c) {
            b2.f317a = d.a();
            o.a(d);
        }
    }

    @Override // b.p
    public final r a() {
        return this.f322a.a();
    }

    @Override // b.p
    public final void a_(c cVar, long j) {
        s.a(cVar.f318b, 0L, j);
        while (j > 0) {
            n nVar = cVar.f317a;
            int min = (int) Math.min(j, nVar.c - nVar.f340b);
            this.f323b.setInput(nVar.f339a, nVar.f340b, min);
            a(false);
            cVar.f318b -= min;
            nVar.f340b += min;
            if (nVar.f340b == nVar.c) {
                cVar.f317a = nVar.a();
                o.a(nVar);
            }
            j -= min;
        }
    }

    @Override // b.p, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Throwable th;
        Throwable th2;
        if (!this.c) {
            Throwable th3 = null;
            try {
                this.f323b.finish();
                a(false);
            } catch (Throwable th4) {
                th3 = th4;
            }
            try {
                this.f323b.end();
                th = th3;
            } catch (Throwable th5) {
                th = th5;
                if (th3 != null) {
                    th = th3;
                }
            }
            try {
                this.f322a.close();
                th2 = th;
            } catch (Throwable th6) {
                th2 = th6;
                th2 = th;
                if (th == null) {
                }
            }
            this.c = true;
            if (th2 != null) {
                s.a(th2);
            }
        }
    }

    @Override // b.p, java.io.Flushable
    public final void flush() {
        a(true);
        this.f322a.flush();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f322a + ")";
    }
}
