package com.google.android.exoplayer2.extractor.p333g;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.extractor.p333g.AbstractC11065h;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* renamed from: com.google.android.exoplayer2.extractor.g.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/c.class */
public final class C11060c implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f36021a = _$$Lambda$c$loKAew4UdPo9cuEUkCza_LTHvuU.INSTANCE;

    /* renamed from: b */
    private AbstractC11130j f36022b;

    /* renamed from: c */
    private AbstractC11065h f36023c;

    /* renamed from: d */
    private boolean f36024d;

    /* renamed from: a */
    public static /* synthetic */ AbstractC11071h[] m21571a() {
        return new AbstractC11071h[]{new C11060c()};
    }

    @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    /* renamed from: b */
    private boolean m21570b(AbstractC11121i abstractC11121i) throws IOException {
        C11062e c11062e = new C11062e();
        if (!c11062e.m21564a(abstractC11121i, true) || (c11062e.f36031b & 2) != 2) {
            return false;
        }
        int min = Math.min(c11062e.f36038i, 8);
        C11628u c11628u = new C11628u(min);
        abstractC11121i.mo21394d(c11628u.f38733a, 0, min);
        c11628u.m19801d(0);
        if (C11058b.m21573a(c11628u)) {
            this.f36023c = new C11058b();
            return true;
        }
        c11628u.m19801d(0);
        if (C11069i.m21552a(c11628u)) {
            this.f36023c = new C11069i();
            return true;
        }
        c11628u.m19801d(0);
        if (!C11064g.m21562a(c11628u)) {
            return false;
        }
        this.f36023c = new C11064g();
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final int mo21437a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        C11593a.m20024a(this.f36022b);
        if (this.f36023c == null) {
            if (!m21570b(abstractC11121i)) {
                throw new ParserException("Failed to determine bitstream type");
            }
            abstractC11121i.mo21406a();
        }
        if (!this.f36024d) {
            AbstractC11150x mo20905a = this.f36022b.mo20905a(0, 1);
            this.f36022b.mo20907a();
            this.f36023c.m21557a(this.f36022b, mo20905a);
            this.f36024d = true;
        }
        AbstractC11065h abstractC11065h = this.f36023c;
        C11593a.m20024a(abstractC11065h.f36044b);
        C11599af.m19974a(abstractC11065h.f36045c);
        int i = abstractC11065h.f36048f;
        if (i != 0) {
            if (i == 1) {
                abstractC11121i.mo21401b((int) abstractC11065h.f36047e);
                abstractC11065h.f36048f = 2;
                return 0;
            } else if (i == 2) {
                C11599af.m19974a(abstractC11065h.f36046d);
                return abstractC11065h.m21558a(abstractC11121i, c11145u);
            } else if (i != 3) {
                throw new IllegalStateException();
            } else {
                return -1;
            }
        } else if (!abstractC11065h.m21559a(abstractC11121i)) {
            return -1;
        } else {
            abstractC11065h.f36049g = abstractC11065h.f36050h.f36056a.sampleRate;
            if (!abstractC11065h.f36051i) {
                abstractC11065h.f36044b.mo20831a(abstractC11065h.f36050h.f36056a);
                abstractC11065h.f36051i = true;
            }
            if (abstractC11065h.f36050h.f36057b != null) {
                abstractC11065h.f36046d = abstractC11065h.f36050h.f36057b;
            } else if (abstractC11121i.mo21395d() == -1) {
                abstractC11065h.f36046d = new AbstractC11065h.C11068b();
            } else {
                C11062e c11062e = abstractC11065h.f36043a.f36025a;
                abstractC11065h.f36046d = new C11055a(abstractC11065h, abstractC11065h.f36047e, abstractC11121i.mo21395d(), c11062e.f36037h + c11062e.f36038i, c11062e.f36032c, (c11062e.f36031b & 4) != 0);
            }
            abstractC11065h.f36048f = 2;
            C11061d c11061d = abstractC11065h.f36043a;
            if (c11061d.f36026b.f38733a.length == 65025) {
                return 0;
            }
            c11061d.f36026b.m19808a(Arrays.copyOf(c11061d.f36026b.f38733a, Math.max(65025, c11061d.f36026b.f38735c)), c11061d.f36026b.f38735c);
            return 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        AbstractC11065h abstractC11065h = this.f36023c;
        if (abstractC11065h != null) {
            abstractC11065h.m21560a(j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f36022b = abstractC11130j;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        try {
            return m21570b(abstractC11121i);
        } catch (ParserException e) {
            return false;
        }
    }
}
