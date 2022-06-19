package androidx.media2.exoplayer.external.extractor.flv;

import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.flv.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/b.class */
public final class C1595b implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f6290a = C1596c.f6307a;

    /* renamed from: g */
    private AbstractC1601i f6296g;

    /* renamed from: i */
    private boolean f6298i;

    /* renamed from: j */
    private long f6299j;

    /* renamed from: k */
    private int f6300k;

    /* renamed from: l */
    private int f6301l;

    /* renamed from: m */
    private int f6302m;

    /* renamed from: n */
    private long f6303n;

    /* renamed from: o */
    private boolean f6304o;

    /* renamed from: p */
    private C1594a f6305p;

    /* renamed from: q */
    private C1598e f6306q;

    /* renamed from: b */
    private final C2018p f6291b = new C2018p(4);

    /* renamed from: c */
    private final C2018p f6292c = new C2018p(9);

    /* renamed from: d */
    private final C2018p f6293d = new C2018p(11);

    /* renamed from: e */
    private final C2018p f6294e = new C2018p();

    /* renamed from: f */
    private final C1597d f6295f = new C1597d();

    /* renamed from: h */
    private int f6297h = 1;

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42625a() {
        return new AbstractC1599g[]{new C1595b()};
    }

    /* renamed from: b */
    private C2018p m42623b(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        if (this.f6302m > this.f6294e.f8131a.length) {
            C2018p c2018p = this.f6294e;
            c2018p.m41538a(new byte[Math.max(c2018p.f8131a.length * 2, this.f6302m)], 0);
        } else {
            this.f6294e.m41533c(0);
        }
        this.f6294e.m41535b(this.f6302m);
        abstractC1600h.mo42605b(this.f6294e.f8131a, 0, this.f6302m);
        return this.f6294e;
    }

    /* renamed from: b */
    private void m42624b() {
        if (!this.f6304o) {
            this.f6296g.mo42209a(new AbstractC1637o.C1639b(-9223372036854775807L));
            this.f6304o = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x014c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo42187a(androidx.media2.exoplayer.external.extractor.AbstractC1600h r8, androidx.media2.exoplayer.external.extractor.C1636n r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.flv.C1595b.mo42187a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        this.f6297h = 1;
        this.f6298i = false;
        this.f6300k = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f6296g = abstractC1601i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        abstractC1600h.mo42601c(this.f6291b.f8131a, 0, 3);
        this.f6291b.m41533c(0);
        if (this.f6291b.m41528f() != 4607062) {
            return false;
        }
        abstractC1600h.mo42601c(this.f6291b.f8131a, 0, 2);
        this.f6291b.m41533c(0);
        if ((this.f6291b.m41532d() & 250) != 0) {
            return false;
        }
        abstractC1600h.mo42601c(this.f6291b.f8131a, 0, 4);
        this.f6291b.m41533c(0);
        int m41524i = this.f6291b.m41524i();
        abstractC1600h.mo42612a();
        abstractC1600h.mo42602c(m41524i);
        abstractC1600h.mo42601c(this.f6291b.f8131a, 0, 4);
        this.f6291b.m41533c(0);
        return this.f6291b.m41524i() == 0;
    }
}
