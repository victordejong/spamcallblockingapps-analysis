package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.C1536e;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.C1740af;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.upstream.C1983q;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.source.ai */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ai.class */
public final class C1749ai extends AbstractC1762b implements C1740af.AbstractC1743c {

    /* renamed from: a */
    final Object f6889a;

    /* renamed from: b */
    private final Uri f6890b;

    /* renamed from: c */
    private final AbstractC1968f.AbstractC1969a f6891c;

    /* renamed from: d */
    private final AbstractC1602j f6892d;

    /* renamed from: e */
    private final AbstractC1468k<?> f6893e;

    /* renamed from: f */
    private final AbstractC1986t f6894f;

    /* renamed from: g */
    private final String f6895g;

    /* renamed from: h */
    private final int f6896h;

    /* renamed from: i */
    private long f6897i = -9223372036854775807L;

    /* renamed from: j */
    private boolean f6898j;

    /* renamed from: k */
    private AbstractC1990w f6899k;

    /* renamed from: androidx.media2.exoplayer.external.source.ai$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ai$a.class */
    public static final class C1750a implements AbstractC1728ad {

        /* renamed from: a */
        private final AbstractC1968f.AbstractC1969a f6900a;

        /* renamed from: b */
        private AbstractC1602j f6901b;

        /* renamed from: c */
        private String f6902c;

        /* renamed from: d */
        private Object f6903d;

        /* renamed from: e */
        private AbstractC1468k<?> f6904e;

        /* renamed from: f */
        private AbstractC1986t f6905f;

        /* renamed from: g */
        private int f6906g;

        /* renamed from: h */
        private boolean f6907h;

        public C1750a(AbstractC1968f.AbstractC1969a abstractC1969a) {
            this(abstractC1969a, new C1536e());
        }

        public C1750a(AbstractC1968f.AbstractC1969a abstractC1969a, AbstractC1602j abstractC1602j) {
            this.f6900a = abstractC1969a;
            this.f6901b = abstractC1602j;
            this.f6904e = AbstractC1468k.f5584e;
            this.f6905f = new C1983q();
            this.f6906g = 1048576;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1728ad
        /* renamed from: b */
        public final /* synthetic */ AbstractC1842t mo42112b(Uri uri) {
            this.f6907h = true;
            return new C1749ai(uri, this.f6900a, this.f6901b, this.f6904e, this.f6905f, this.f6902c, this.f6906g, this.f6903d);
        }
    }

    public C1749ai(Uri uri, AbstractC1968f.AbstractC1969a abstractC1969a, AbstractC1602j abstractC1602j, AbstractC1468k<?> abstractC1468k, AbstractC1986t abstractC1986t, String str, int i, Object obj) {
        this.f6890b = uri;
        this.f6891c = abstractC1969a;
        this.f6892d = abstractC1602j;
        this.f6893e = abstractC1468k;
        this.f6894f = abstractC1986t;
        this.f6895g = str;
        this.f6896h = i;
        this.f6889a = obj;
    }

    /* renamed from: b */
    private void m42338b(long j, boolean z) {
        this.f6897i = j;
        this.f6898j = z;
        m42285a(new C1761ao(this.f6897i, this.f6898j, false, null, this.f6889a));
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final AbstractC1840s mo42072a(AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
        AbstractC1968f mo41195a = this.f6891c.mo41195a();
        AbstractC1990w abstractC1990w = this.f6899k;
        if (abstractC1990w != null) {
            mo41195a.mo41697a(abstractC1990w);
        }
        return new C1740af(this.f6890b, mo41195a, this.f6892d.mo42521b(), this.f6893e, this.f6894f, m42284a(c1843a), this, abstractC1963b, this.f6895g, this.f6896h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.C1740af.AbstractC1743c
    /* renamed from: a */
    public final void mo42339a(long j, boolean z) {
        char c = j;
        if (j == -9223372036854775807L) {
            c = this.f6897i;
        }
        if (this.f6897i == c && this.f6898j == z) {
            return;
        }
        m42338b(c, z);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42073a(AbstractC1840s abstractC1840s) {
        C1740af c1740af = (C1740af) abstractC1840s;
        if (c1740af.f6849m) {
            for (C1753ak c1753ak : c1740af.f6845i) {
                c1753ak.m42301c();
            }
            for (C1823j c1823j : c1740af.f6846j) {
                c1823j.m42124a();
            }
        }
        c1740af.f6839c.m41761a(c1740af);
        c1740af.f6841e.removeCallbacksAndMessages(null);
        c1740af.f6842f = null;
        c1740af.f6857u = true;
        c1740af.f6837a.m42040b();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    protected final void mo42102a(AbstractC1990w abstractC1990w) {
        this.f6899k = abstractC1990w;
        m42338b(this.f6897i, this.f6898j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: c */
    protected final void mo42097c() {
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: e */
    public final Object mo42066e() {
        return this.f6889a;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: f */
    public final void mo42065f() throws IOException {
    }
}
