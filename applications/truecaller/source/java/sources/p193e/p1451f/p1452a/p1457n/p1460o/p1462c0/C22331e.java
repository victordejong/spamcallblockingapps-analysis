package p193e.p1451f.p1452a.p1457n.p1460o.p1462c0;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import p193e.p1451f.p1452a.p1453k.C22240a;
import p193e.p1451f.p1452a.p1453k.C22248c;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.p1460o.C22350f;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.AbstractC22322a;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.C22326c;
/* renamed from: e.f.a.n.o.c0.e */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/e.class */
public class C22331e implements AbstractC22322a {

    /* renamed from: b */
    public final File f62006b;

    /* renamed from: c */
    public final long f62007c;

    /* renamed from: e */
    public C22240a f62009e;

    /* renamed from: d */
    public final C22326c f62008d = new C22326c();

    /* renamed from: a */
    public final C22340k f62005a = new C22340k();

    @Deprecated
    public C22331e(File file, long j) {
        this.f62006b = file;
        this.f62007c = j;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.AbstractC22322a
    /* renamed from: a */
    public void mo8310a(AbstractC22263f abstractC22263f, AbstractC22322a.AbstractC22324b abstractC22324b) {
        C22326c.C22327a c22327a;
        C22326c.C22327a poll;
        String m8305a = this.f62005a.m8305a(abstractC22263f);
        C22326c c22326c = this.f62008d;
        synchronized (c22326c) {
            C22326c.C22327a c22327a2 = c22326c.f61998a.get(m8305a);
            c22327a = c22327a2;
            if (c22327a2 == null) {
                C22326c.C22328b c22328b = c22326c.f61999b;
                synchronized (c22328b.f62002a) {
                    poll = c22328b.f62002a.poll();
                }
                c22327a = poll;
                if (poll == null) {
                    c22327a = new C22326c.C22327a();
                }
                c22326c.f61998a.put(m8305a, c22327a);
            }
            c22327a.f62001b++;
        }
        c22327a.f62000a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                String str = "Put: Obtained: " + m8305a + " for for Key: " + abstractC22263f;
            }
            try {
                C22240a m8308c = m8308c();
                if (m8308c.m8387s(m8305a) == null) {
                    C22240a.C22243c m8389l = m8308c.m8389l(m8305a);
                    if (m8389l == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: " + m8305a);
                    }
                    try {
                        File m8385b = m8389l.m8385b(0);
                        C22350f c22350f = (C22350f) abstractC22324b;
                        if (c22350f.f62048a.mo8221a(c22350f.f62049b, m8385b, c22350f.f62050c)) {
                            C22240a.m8393b(C22240a.this, m8389l, true);
                            m8389l.f61808c = true;
                        }
                        if (!m8389l.f61808c) {
                            try {
                                m8389l.m8386a();
                            } catch (IOException e) {
                            }
                        }
                    } catch (Throwable th) {
                        if (!m8389l.f61808c) {
                            try {
                                m8389l.m8386a();
                            } catch (IOException e2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e3) {
                Log.isLoggable("DiskLruCacheWrapper", 5);
            }
        } finally {
            this.f62008d.m8311a(m8305a);
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.AbstractC22322a
    /* renamed from: b */
    public File mo8309b(AbstractC22263f abstractC22263f) {
        File file;
        String m8305a = this.f62005a.m8305a(abstractC22263f);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            String str = "Get: Obtained: " + m8305a + " for for Key: " + abstractC22263f;
        }
        try {
            C22240a.C22245e m8387s = m8308c().m8387s(m8305a);
            file = null;
            if (m8387s != null) {
                file = m8387s.f61818a[0];
            }
        } catch (IOException e) {
            Log.isLoggable("DiskLruCacheWrapper", 5);
            file = null;
        }
        return file;
    }

    /* renamed from: c */
    public final C22240a m8308c() throws IOException {
        C22240a c22240a;
        synchronized (this) {
            if (this.f62009e == null) {
                this.f62009e = C22240a.m8400I(this.f62006b, 1, 1, this.f62007c);
            }
            c22240a = this.f62009e;
        }
        return c22240a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.AbstractC22322a
    public void clear() {
        synchronized (this) {
            try {
                C22240a m8308c = m8308c();
                m8308c.close();
                C22248c.m8380a(m8308c.f61791a);
            } catch (IOException e) {
                Log.isLoggable("DiskLruCacheWrapper", 5);
            }
            m8307d();
        }
    }

    /* renamed from: d */
    public final void m8307d() {
        synchronized (this) {
            this.f62009e = null;
        }
    }
}
