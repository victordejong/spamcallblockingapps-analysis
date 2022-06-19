package p000;

import androidx.media2.exoplayer.external.Format;
import com.google.android.exoplayer2.C0515C;
import kk;
/* renamed from: em */
/* loaded from: classes-dex2jar.jar:em.class */
public abstract class AbstractC1371em {

    /* renamed from: a */
    public final C0044am f6369a = new C0044am();

    /* renamed from: b */
    public kk f6370b;

    /* renamed from: c */
    public AbstractC0317ck f6371c;

    /* renamed from: d */
    public AbstractC0318cm f6372d;

    /* renamed from: e */
    public long f6373e;

    /* renamed from: f */
    public long f6374f;

    /* renamed from: g */
    public long f6375g;

    /* renamed from: h */
    public int f6376h;

    /* renamed from: i */
    public int f6377i;

    /* renamed from: j */
    public C1373b f6378j;

    /* renamed from: k */
    public long f6379k;

    /* renamed from: l */
    public boolean f6380l;

    /* renamed from: m */
    public boolean f6381m;

    /* renamed from: em$b */
    /* loaded from: classes-dex2jar.jar:em$b.class */
    public static class C1373b {

        /* renamed from: a */
        public Format f6382a;

        /* renamed from: b */
        public AbstractC0318cm f6383b;
    }

    /* renamed from: a */
    public long m2111a(long j) {
        return (j * C0515C.MICROS_PER_SECOND) / this.f6377i;
    }

    /* renamed from: b */
    public long m2110b(long j) {
        return (this.f6377i * j) / C0515C.MICROS_PER_SECOND;
    }

    /* renamed from: c */
    public void m2109c(AbstractC0317ck abstractC0317ck, kk kkVar) {
        this.f6371c = abstractC0317ck;
        this.f6370b = kkVar;
        m2102j(true);
    }

    /* renamed from: d */
    public void m2108d(long j) {
        this.f6375g = j;
    }

    /* renamed from: e */
    public abstract long m2107e(yt ytVar);

    /* renamed from: f */
    public final int m2106f(AbstractC0251bk abstractC0251bk, hk hkVar) {
        int i = this.f6376h;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                return m2103i(abstractC0251bk, hkVar);
            }
            abstractC0251bk.skipFully((int) this.f6374f);
            this.f6376h = 2;
            return 0;
        }
        return m2105g(abstractC0251bk);
    }

    /* renamed from: g */
    public final int m2105g(AbstractC0251bk abstractC0251bk) {
        boolean z = true;
        while (z) {
            if (!this.f6369a.m7066d(abstractC0251bk)) {
                this.f6376h = 3;
                return -1;
            }
            this.f6379k = abstractC0251bk.getPosition() - this.f6374f;
            boolean m2104h = m2104h(this.f6369a.m7067c(), this.f6374f, this.f6378j);
            z = m2104h;
            if (m2104h) {
                this.f6374f = abstractC0251bk.getPosition();
                z = m2104h;
            }
        }
        Format format = this.f6378j.f6382a;
        this.f6377i = format.f1133y;
        if (!this.f6381m) {
            this.f6370b.b(format);
            this.f6381m = true;
        }
        AbstractC0318cm abstractC0318cm = this.f6378j.f6383b;
        if (abstractC0318cm != null) {
            this.f6372d = abstractC0318cm;
        } else if (abstractC0251bk.getLength() == -1) {
            this.f6372d = new c((C1372a) null);
        } else {
            C0253bm m7068b = this.f6369a.m7068b();
            this.f6372d = new wl(this.f6374f, abstractC0251bk.getLength(), this, m7068b.f1976e + m7068b.f1977f, m7068b.f1974c, (m7068b.f1973b & 4) != 0);
        }
        this.f6378j = null;
        this.f6376h = 2;
        this.f6369a.m7064f();
        return 0;
    }

    /* renamed from: h */
    public abstract boolean m2104h(yt ytVar, long j, C1373b c1373b);

    /* renamed from: i */
    public final int m2103i(AbstractC0251bk abstractC0251bk, hk hkVar) {
        long m5305a = this.f6372d.m5305a(abstractC0251bk);
        if (m5305a >= 0) {
            hkVar.a = m5305a;
            return 1;
        }
        if (m5305a < -1) {
            m2108d(-(m5305a + 2));
        }
        if (!this.f6380l) {
            this.f6371c.m5321e(this.f6372d.createSeekMap());
            this.f6380l = true;
        }
        if (this.f6379k <= 0 && !this.f6369a.m7066d(abstractC0251bk)) {
            this.f6376h = 3;
            return -1;
        }
        this.f6379k = 0L;
        yt m7067c = this.f6369a.m7067c();
        long m2107e = m2107e(m7067c);
        if (m2107e >= 0) {
            long j = this.f6375g;
            if (j + m2107e >= this.f6373e) {
                long m2111a = m2111a(j);
                this.f6370b.c(m7067c, m7067c.d());
                this.f6370b.a(m2111a, 1, m7067c.d(), 0, (kk.a) null);
                this.f6373e = -1L;
            }
        }
        this.f6375g += m2107e;
        return 0;
    }

    /* renamed from: j */
    public void m2102j(boolean z) {
        int i;
        if (z) {
            this.f6378j = new C1373b();
            this.f6374f = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.f6376h = i;
        this.f6373e = -1L;
        this.f6375g = 0L;
    }

    /* renamed from: k */
    public final void m2101k(long j, long j2) {
        this.f6369a.m7065e();
        if (j == 0) {
            m2102j(!this.f6380l);
        } else if (this.f6376h == 0) {
        } else {
            this.f6373e = this.f6372d.startSeek(j2);
            this.f6376h = 2;
        }
    }
}
