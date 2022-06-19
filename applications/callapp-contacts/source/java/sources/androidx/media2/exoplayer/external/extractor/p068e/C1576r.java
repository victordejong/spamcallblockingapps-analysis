package androidx.media2.exoplayer.external.extractor.p068e;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2000c;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.r */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/r.class */
public final class C1576r implements AbstractC1566m {

    /* renamed from: a */
    private final String f6188a;

    /* renamed from: b */
    private final C2018p f6189b;

    /* renamed from: c */
    private final C2017o f6190c;

    /* renamed from: d */
    private AbstractC1641q f6191d;

    /* renamed from: e */
    private Format f6192e;

    /* renamed from: f */
    private String f6193f;

    /* renamed from: g */
    private int f6194g;

    /* renamed from: h */
    private int f6195h;

    /* renamed from: i */
    private int f6196i;

    /* renamed from: j */
    private int f6197j;

    /* renamed from: k */
    private long f6198k;

    /* renamed from: l */
    private boolean f6199l;

    /* renamed from: m */
    private int f6200m;

    /* renamed from: n */
    private int f6201n;

    /* renamed from: o */
    private int f6202o;

    /* renamed from: p */
    private boolean f6203p;

    /* renamed from: q */
    private long f6204q;

    /* renamed from: r */
    private int f6205r;

    /* renamed from: s */
    private long f6206s;

    /* renamed from: t */
    private int f6207t;

    public C1576r(String str) {
        this.f6188a = str;
        C2018p c2018p = new C2018p(1024);
        this.f6189b = c2018p;
        this.f6190c = new C2017o(c2018p.f8131a);
    }

    /* renamed from: a */
    private int m42658a(C2017o c2017o) throws ParserException {
        int m41555a = c2017o.m41555a();
        Pair<Integer, Integer> m41604a = C2000c.m41604a(c2017o, true);
        this.f6205r = ((Integer) m41604a.first).intValue();
        this.f6207t = ((Integer) m41604a.second).intValue();
        return m41555a - c2017o.m41555a();
    }

    /* renamed from: b */
    private int m42657b(C2017o c2017o) throws ParserException {
        int m41548c;
        int i;
        if (this.f6202o == 0) {
            int i2 = 0;
            do {
                m41548c = c2017o.m41548c(8);
                i = i2 + m41548c;
                i2 = i;
            } while (m41548c == 255);
            return i;
        }
        throw new ParserException();
    }

    /* renamed from: c */
    private static long m42656c(C2017o c2017o) {
        return c2017o.m41548c((c2017o.m41548c(2) + 1) * 8);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        this.f6194g = 0;
        this.f6199l = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        this.f6198k = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        this.f6191d = abstractC1601i.mo42213a(c1552d.m42707b(), 1);
        this.f6193f = c1552d.m42706c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x0212, code lost:
        if (r12.f6199l != false) goto L75;
     */
    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo42652a(androidx.media2.exoplayer.external.util.C2018p r13) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p068e.C1576r.mo42652a(androidx.media2.exoplayer.external.util.p):void");
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
    }
}
