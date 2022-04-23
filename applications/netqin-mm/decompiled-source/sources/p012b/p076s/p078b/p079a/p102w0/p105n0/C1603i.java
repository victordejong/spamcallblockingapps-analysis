package p012b.p076s.p078b.p079a.p102w0.p105n0;

import android.net.Uri;
import androidx.media2.exoplayer.external.offline.StreamKey;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import java.io.IOException;
import java.util.List;
import p012b.p076s.p078b.p079a.C1528v;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1538b;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1558g;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1631p;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p102w0.C1575j;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.AbstractC1628i;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1615a;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1617c;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1619d;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1700u;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
import p012b.p076s.p078b.p079a.p111z0.C1697r;
/* renamed from: b.s.b.a.w0.n0.i */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/i.class */
public final class C1603i extends AbstractC1538b implements HlsPlaylistTracker.AbstractC0335c {

    /* renamed from: f */
    public final AbstractC1598e f6553f;

    /* renamed from: g */
    public final Uri f6554g;

    /* renamed from: h */
    public final AbstractC1597d f6555h;

    /* renamed from: i */
    public final AbstractC1558g f6556i;

    /* renamed from: j */
    public final AbstractC1700u f6557j;

    /* renamed from: k */
    public final boolean f6558k;

    /* renamed from: l */
    public final boolean f6559l;

    /* renamed from: m */
    public final HlsPlaylistTracker f6560m;

    /* renamed from: n */
    public final Object f6561n;

    /* renamed from: o */
    public AbstractC1704x f6562o;

    /* renamed from: b.s.b.a.w0.n0.i$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/i$b.class */
    public static final class C1605b {

        /* renamed from: a */
        public final AbstractC1597d f6563a;

        /* renamed from: b */
        public AbstractC1598e f6564b;

        /* renamed from: c */
        public AbstractC1628i f6565c;

        /* renamed from: d */
        public List<StreamKey> f6566d;

        /* renamed from: e */
        public HlsPlaylistTracker.AbstractC0333a f6567e;

        /* renamed from: f */
        public AbstractC1558g f6568f;

        /* renamed from: g */
        public AbstractC1700u f6569g;

        /* renamed from: h */
        public boolean f6570h;

        /* renamed from: i */
        public boolean f6571i;

        /* renamed from: j */
        public boolean f6572j;

        /* renamed from: k */
        public Object f6573k;

        public C1605b(AbstractC1597d dVar) {
            C1160a.m34522a(dVar);
            this.f6563a = dVar;
            this.f6565c = new C1615a();
            this.f6567e = C1617c.f6635q;
            this.f6564b = AbstractC1598e.f6505a;
            this.f6569g = new C1697r();
            this.f6568f = new C1575j();
        }

        public C1605b(AbstractC1684g.AbstractC1685a aVar) {
            this(new C1595b(aVar));
        }

        /* renamed from: a */
        public C1605b m32676a(Object obj) {
            C1160a.m34518b(!this.f6572j);
            this.f6573k = obj;
            return this;
        }

        /* renamed from: a */
        public C1603i m32677a(Uri uri) {
            this.f6572j = true;
            List<StreamKey> list = this.f6566d;
            if (list != null) {
                this.f6565c = new C1619d(this.f6565c, list);
            }
            AbstractC1597d dVar = this.f6563a;
            AbstractC1598e eVar = this.f6564b;
            AbstractC1558g gVar = this.f6568f;
            AbstractC1700u uVar = this.f6569g;
            return new C1603i(uri, dVar, eVar, gVar, uVar, this.f6567e.mo32612a(dVar, uVar, this.f6565c), this.f6570h, this.f6571i, this.f6573k);
        }
    }

    static {
        C1528v.m32962a("goog.exo.hls");
    }

    public C1603i(Uri uri, AbstractC1597d dVar, AbstractC1598e eVar, AbstractC1558g gVar, AbstractC1700u uVar, HlsPlaylistTracker hlsPlaylistTracker, boolean z, boolean z2, Object obj) {
        this.f6554g = uri;
        this.f6555h = dVar;
        this.f6553f = eVar;
        this.f6556i = gVar;
        this.f6557j = uVar;
        this.f6560m = hlsPlaylistTracker;
        this.f6558k = z;
        this.f6559l = z2;
        this.f6561n = obj;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public AbstractC1631p mo32294a(AbstractC1634r.C1635a aVar, AbstractC1678b bVar, long j) {
        return new C1602h(this.f6553f, this.f6560m, this.f6555h, this.f6562o, this.f6557j, m32923a(aVar), bVar, this.f6556i, this.f6558k, this.f6559l);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b, p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public Object mo32507a() {
        return this.f6561n;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r23v0, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.AbstractC0335c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32679a(p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1623f r19) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.p105n0.C1603i.mo32679a(b.s.b.a.w0.n0.q.f):void");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public void mo32295a(AbstractC1631p pVar) {
        ((C1602h) pVar).m32680e();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: a */
    public void mo32293a(AbstractC1704x xVar) {
        this.f6562o = xVar;
        this.f6560m.mo32608a(this.f6554g, m32923a((AbstractC1634r.C1635a) null), this);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: b */
    public void mo32502b() throws IOException {
        this.f6560m.mo32586d();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: c */
    public void mo32678c() {
        this.f6560m.stop();
    }
}
