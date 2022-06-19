package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.d.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/c.class */
public final class C1518c implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f5847a = C1519d.f5851a;

    /* renamed from: b */
    private AbstractC1601i f5848b;

    /* renamed from: c */
    private AbstractC1524i f5849c;

    /* renamed from: d */
    private boolean f5850d;

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42762a() {
        return new AbstractC1599g[]{new C1518c()};
    }

    /* renamed from: b */
    private boolean m42761b(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        C1521f c1521f = new C1521f();
        if (!c1521f.m42757a(abstractC1600h, true) || (c1521f.f5858b & 2) != 2) {
            return false;
        }
        int min = Math.min(c1521f.f5865i, 8);
        C2018p c2018p = new C2018p(min);
        abstractC1600h.mo42601c(c2018p.f8131a, 0, min);
        c2018p.m41533c(0);
        if (C1516b.m42764a(c2018p)) {
            this.f5849c = new C1516b();
            return true;
        }
        c2018p.m41533c(0);
        if (C1529k.m42741a(c2018p)) {
            this.f5849c = new C1529k();
            return true;
        }
        c2018p.m41533c(0);
        if (!C1523h.m42756a(c2018p)) {
            return false;
        }
        this.f5849c = new C1523h();
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final int mo42187a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        if (this.f5849c == null) {
            if (!m42761b(abstractC1600h)) {
                throw new ParserException("Failed to determine bitstream type");
            }
            abstractC1600h.mo42612a();
        }
        if (!this.f5850d) {
            AbstractC1641q mo42213a = this.f5848b.mo42213a(0, 1);
            this.f5848b.mo42215a();
            this.f5849c.m42750a(this.f5848b, mo42213a);
            this.f5850d = true;
        }
        AbstractC1524i abstractC1524i = this.f5849c;
        int i = abstractC1524i.f5872c;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                return abstractC1524i.m42751a(abstractC1600h, c1636n);
            }
            abstractC1600h.mo42606b((int) abstractC1524i.f5871b);
            abstractC1524i.f5872c = 2;
            return 0;
        }
        return abstractC1524i.m42752a(abstractC1600h);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        AbstractC1524i abstractC1524i = this.f5849c;
        if (abstractC1524i != null) {
            abstractC1524i.m42753a(j, j2);
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f5848b = abstractC1601i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        try {
            return m42761b(abstractC1600h);
        } catch (ParserException e) {
            return false;
        }
    }
}
