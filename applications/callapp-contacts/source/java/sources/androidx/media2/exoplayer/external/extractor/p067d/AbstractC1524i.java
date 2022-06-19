package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.extractor.d.i */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/i.class */
public abstract class AbstractC1524i {

    /* renamed from: a */
    private final C1520e f5870a = new C1520e();

    /* renamed from: b */
    long f5871b;

    /* renamed from: c */
    int f5872c;

    /* renamed from: d */
    private AbstractC1641q f5873d;

    /* renamed from: e */
    private AbstractC1601i f5874e;

    /* renamed from: f */
    private AbstractC1522g f5875f;

    /* renamed from: g */
    private long f5876g;

    /* renamed from: h */
    private long f5877h;

    /* renamed from: i */
    private int f5878i;

    /* renamed from: j */
    private C1526a f5879j;

    /* renamed from: k */
    private long f5880k;

    /* renamed from: l */
    private boolean f5881l;

    /* renamed from: m */
    private boolean f5882m;

    /* renamed from: androidx.media2.exoplayer.external.extractor.d.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/i$a.class */
    public static final class C1526a {

        /* renamed from: a */
        Format f5883a;

        /* renamed from: b */
        AbstractC1522g f5884b;

        C1526a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.d.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/i$b.class */
    public static final class C1527b implements AbstractC1522g {
        private C1527b() {
        }

        @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1522g
        /* renamed from: a */
        public final long mo42747a(AbstractC1600h abstractC1600h) {
            return -1L;
        }

        @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1522g
        /* renamed from: a */
        public final AbstractC1637o mo42748a() {
            return new AbstractC1637o.C1639b(-9223372036854775807L);
        }

        @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1522g
        /* renamed from: a_ */
        public final void mo42746a_(long j) {
        }
    }

    /* renamed from: a */
    public final int m42752a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        boolean z = true;
        while (z) {
            if (!this.f5870a.m42759a(abstractC1600h)) {
                this.f5872c = 3;
                return -1;
            }
            this.f5880k = abstractC1600h.mo42603c() - this.f5871b;
            boolean mo42740a = mo42740a(this.f5870a.f5853b, this.f5871b, this.f5879j);
            z = mo42740a;
            if (mo42740a) {
                this.f5871b = abstractC1600h.mo42603c();
                z = mo42740a;
            }
        }
        this.f5878i = this.f5879j.f5883a.sampleRate;
        if (!this.f5882m) {
            this.f5873d.mo42192a(this.f5879j.f5883a);
            this.f5882m = true;
        }
        if (this.f5879j.f5884b != null) {
            this.f5875f = this.f5879j.f5884b;
        } else if (abstractC1600h.mo42600d() == -1) {
            this.f5875f = new C1527b();
        } else {
            C1521f c1521f = this.f5870a.f5852a;
            this.f5875f = new C1513a(this, this.f5871b, abstractC1600h.mo42600d(), c1521f.f5864h + c1521f.f5865i, c1521f.f5859c, (c1521f.f5858b & 4) != 0);
        }
        this.f5879j = null;
        this.f5872c = 2;
        C1520e c1520e = this.f5870a;
        if (c1520e.f5853b.f8131a.length != 65025) {
            c1520e.f5853b.f8131a = Arrays.copyOf(c1520e.f5853b.f8131a, Math.max(65025, c1520e.f5853b.f8133c));
            return 0;
        }
        return 0;
    }

    /* renamed from: a */
    public final int m42751a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        long mo42747a = this.f5875f.mo42747a(abstractC1600h);
        if (mo42747a >= 0) {
            c1636n.f6500a = mo42747a;
            return 1;
        }
        if (mo42747a < -1) {
            mo42737c(-(mo42747a + 2));
        }
        if (!this.f5881l) {
            this.f5874e.mo42209a(this.f5875f.mo42748a());
            this.f5881l = true;
        }
        if (this.f5880k <= 0 && !this.f5870a.m42759a(abstractC1600h)) {
            this.f5872c = 3;
            return -1;
        }
        this.f5880k = 0L;
        C2018p c2018p = this.f5870a.f5853b;
        long mo42738b = mo42738b(c2018p);
        if (mo42738b >= 0) {
            long j = this.f5877h;
            if (j + mo42738b >= this.f5876g) {
                long m42754a = m42754a(j);
                this.f5873d.mo42306a(c2018p, c2018p.f8133c);
                this.f5873d.mo42313a(m42754a, 1, c2018p.f8133c, 0, null);
                this.f5876g = -1L;
            }
        }
        this.f5877h += mo42738b;
        return 0;
    }

    /* renamed from: a */
    public final long m42754a(long j) {
        return (j * 1000000) / this.f5878i;
    }

    /* renamed from: a */
    public final void m42753a(long j, long j2) {
        C1520e c1520e = this.f5870a;
        c1520e.f5852a.m42758a();
        c1520e.f5853b.m41542a();
        c1520e.f5854c = -1;
        c1520e.f5855d = false;
        if (j == 0) {
            mo42739a(!this.f5881l);
        } else if (this.f5872c == 0) {
        } else {
            long m42749b = m42749b(j2);
            this.f5876g = m42749b;
            this.f5875f.mo42746a_(m42749b);
            this.f5872c = 2;
        }
    }

    /* renamed from: a */
    public final void m42750a(AbstractC1601i abstractC1601i, AbstractC1641q abstractC1641q) {
        this.f5874e = abstractC1601i;
        this.f5873d = abstractC1641q;
        mo42739a(true);
    }

    /* renamed from: a */
    public void mo42739a(boolean z) {
        if (z) {
            this.f5879j = new C1526a();
            this.f5871b = 0L;
            this.f5872c = 0;
        } else {
            this.f5872c = 1;
        }
        this.f5876g = -1L;
        this.f5877h = 0L;
    }

    /* renamed from: a */
    protected abstract boolean mo42740a(C2018p c2018p, long j, C1526a c1526a) throws IOException, InterruptedException;

    /* renamed from: b */
    public final long m42749b(long j) {
        return (this.f5878i * j) / 1000000;
    }

    /* renamed from: b */
    protected abstract long mo42738b(C2018p c2018p);

    /* renamed from: c */
    public void mo42737c(long j) {
        this.f5877h = j;
    }
}
