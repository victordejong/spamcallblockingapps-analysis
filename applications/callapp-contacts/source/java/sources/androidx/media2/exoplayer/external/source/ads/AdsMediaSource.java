package androidx.media2.exoplayer.external.source.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.source.AbstractC1728ad;
import androidx.media2.exoplayer.external.source.AbstractC1765d;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.C1749ai;
import androidx.media2.exoplayer.external.source.C1835q;
import androidx.media2.exoplayer.external.source.ads.AbstractC1733b;
import androidx.media2.exoplayer.external.source.ads.AdsMediaSource;
import androidx.media2.exoplayer.external.source.ads.C1731a;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource.class */
public final class AdsMediaSource extends AbstractC1765d<AbstractC1842t.C1843a> {

    /* renamed from: a */
    private static final AbstractC1842t.C1843a f6778a = new AbstractC1842t.C1843a(new Object());

    /* renamed from: b */
    private final AbstractC1842t f6779b;

    /* renamed from: c */
    private final AbstractC1728ad f6780c;

    /* renamed from: d */
    private final AbstractC1733b f6781d;

    /* renamed from: e */
    private final AbstractC1733b.AbstractC1734a f6782e;

    /* renamed from: f */
    private final Handler f6783f;

    /* renamed from: g */
    private final Map<AbstractC1842t, List<C1835q>> f6784g;

    /* renamed from: h */
    private final AbstractC1383al.C1385a f6785h;

    /* renamed from: i */
    private C1730b f6786i;

    /* renamed from: j */
    private AbstractC1383al f6787j;

    /* renamed from: k */
    private C1731a f6788k;

    /* renamed from: l */
    private AbstractC1842t[][] f6789l;

    /* renamed from: m */
    private AbstractC1383al[][] f6790m;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException.class */
    public static final class AdLoadException extends IOException {

        /* renamed from: a */
        public final int f6791a;

        private AdLoadException(int i, Exception exc) {
            super(exc);
            this.f6791a = i;
        }

        /* renamed from: a */
        public static AdLoadException m42369a(Exception exc) {
            return new AdLoadException(0, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.source.ads.AdsMediaSource$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$a.class */
    public final class C1729a implements C1835q.AbstractC1836a {

        /* renamed from: b */
        private final Uri f6793b;

        /* renamed from: c */
        private final int f6794c;

        /* renamed from: d */
        private final int f6795d;

        public C1729a(Uri uri, int i, int i2) {
            AdsMediaSource.this = r4;
            this.f6793b = uri;
            this.f6794c = i;
            this.f6795d = i2;
        }

        @Override // androidx.media2.exoplayer.external.source.C1835q.AbstractC1836a
        /* renamed from: a */
        public final void mo42103a(AbstractC1842t.C1843a c1843a, IOException iOException) {
            AdsMediaSource.this.m42284a(c1843a).m42042a(new C1971h(this.f6793b), this.f6793b, Collections.emptyMap(), 6, -1L, 0L, 0L, (IOException) AdLoadException.m42369a(iOException), true);
            AdsMediaSource.this.f6783f.post(new Runnable(this, iOException) { // from class: androidx.media2.exoplayer.external.source.ads.e

                /* renamed from: a */
                private final AdsMediaSource.C1729a f6812a;

                /* renamed from: b */
                private final IOException f6813b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6812a = this;
                    this.f6813b = iOException;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC1733b unused;
                    unused = AdsMediaSource.this.f6781d;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.source.ads.AdsMediaSource$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$b.class */
    public final class C1730b {

        /* renamed from: a */
        final Handler f6796a = new Handler();

        /* renamed from: b */
        volatile boolean f6797b;

        public C1730b() {
            AdsMediaSource.this = r5;
        }
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [androidx.media2.exoplayer.external.al[], androidx.media2.exoplayer.external.al[][]] */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.media2.exoplayer.external.source.t[], androidx.media2.exoplayer.external.source.t[][]] */
    public AdsMediaSource(AbstractC1842t abstractC1842t, AbstractC1728ad abstractC1728ad, AbstractC1733b abstractC1733b, AbstractC1733b.AbstractC1734a abstractC1734a) {
        this.f6779b = abstractC1842t;
        this.f6780c = abstractC1728ad;
        this.f6781d = abstractC1733b;
        this.f6782e = abstractC1734a;
        this.f6783f = new Handler(Looper.getMainLooper());
        this.f6784g = new HashMap();
        this.f6785h = new AbstractC1383al.C1385a();
        this.f6789l = new AbstractC1842t[0];
        this.f6790m = new AbstractC1383al[0];
    }

    public AdsMediaSource(AbstractC1842t abstractC1842t, AbstractC1968f.AbstractC1969a abstractC1969a, AbstractC1733b abstractC1733b, AbstractC1733b.AbstractC1734a abstractC1734a) {
        this(abstractC1842t, new C1749ai.C1750a(abstractC1969a), abstractC1733b, abstractC1734a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r0v61 */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* renamed from: g */
    private void m42370g() {
        AbstractC1383al abstractC1383al = this.f6787j;
        C1731a c1731a = this.f6788k;
        if (c1731a == null || abstractC1383al == null) {
            return;
        }
        AbstractC1383al[][] abstractC1383alArr = this.f6790m;
        AbstractC1383al.C1385a c1385a = this.f6785h;
        ?? r0 = new long[abstractC1383alArr.length];
        for (int i = 0; i < abstractC1383alArr.length; i++) {
            r0[i] = new long[abstractC1383alArr[i].length];
            for (int i2 = 0; i2 < abstractC1383alArr[i].length; i2++) {
                r0[i][i2] = (abstractC1383alArr[i][i2] == null ? -9223372036854775807 : abstractC1383alArr[i][i2].mo42091a(0, c1385a, false).f5207d) == true ? 1 : 0;
            }
        }
        C1731a.C1732a[] c1732aArr = (C1731a.C1732a[]) C1996ac.m41642a(c1731a.f6802d, c1731a.f6802d.length);
        for (int i3 = 0; i3 < c1731a.f6800b; i3++) {
            C1731a.C1732a c1732a = c1732aArr[i3];
            ?? r02 = r0[i3];
            C1993a.m41688a(c1732a.f6805a == -1 || r02.length <= c1732a.f6806b.length);
            long[] jArr = r02;
            if (r02.length < c1732a.f6806b.length) {
                int length = c1732a.f6806b.length;
                int length2 = r02.length;
                int max = Math.max(length, length2);
                jArr = Arrays.copyOf((long[]) r02, max);
                Arrays.fill(jArr, length2, max, -9223372036854775807L);
            }
            c1732aArr[i3] = new C1731a.C1732a(c1732a.f6805a, c1732a.f6807c, c1732a.f6806b, jArr);
        }
        C1731a c1731a2 = new C1731a(c1731a.f6801c, c1732aArr, c1731a.f6803e, c1731a.f6804f);
        this.f6788k = c1731a2;
        m42285a(c1731a2.f6800b == 0 ? abstractC1383al : new C1738f(abstractC1383al, this.f6788k));
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final AbstractC1840s mo42072a(AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
        C1731a c1731a = (C1731a) C1993a.m41690a(this.f6788k);
        if (c1731a.f6800b <= 0 || !c1843a.m42064a()) {
            C1835q c1835q = new C1835q(this.f6779b, c1843a, abstractC1963b, j);
            c1835q.m42106a(c1843a);
            return c1835q;
        }
        int i = c1843a.f7357b;
        int i2 = c1843a.f7358c;
        Uri uri = (Uri) C1993a.m41690a(c1731a.f6802d[i].f6806b[i2]);
        AbstractC1842t[][] abstractC1842tArr = this.f6789l;
        if (abstractC1842tArr[i].length <= i2) {
            int i3 = i2 + 1;
            abstractC1842tArr[i] = (AbstractC1842t[]) Arrays.copyOf(abstractC1842tArr[i], i3);
            AbstractC1383al[][] abstractC1383alArr = this.f6790m;
            abstractC1383alArr[i] = (AbstractC1383al[]) Arrays.copyOf(abstractC1383alArr[i], i3);
        }
        AbstractC1842t abstractC1842t = this.f6789l[i][i2];
        AbstractC1842t abstractC1842t2 = abstractC1842t;
        if (abstractC1842t == null) {
            abstractC1842t2 = this.f6780c.mo42112b(uri);
            this.f6789l[i][i2] = abstractC1842t2;
            this.f6784g.put(abstractC1842t2, new ArrayList());
            m42278a((AdsMediaSource) c1843a, abstractC1842t2);
        }
        C1835q c1835q2 = new C1835q(abstractC1842t2, c1843a, abstractC1963b, j);
        c1835q2.f7338d = new C1729a(uri, i, i2);
        List<C1835q> list = this.f6784g.get(abstractC1842t2);
        if (list == null) {
            c1835q2.m42106a(new AbstractC1842t.C1843a(((AbstractC1383al) C1993a.m41690a(this.f6790m[i][i2])).mo42092a(0), c1843a.f7359d));
        } else {
            list.add(c1835q2);
        }
        return c1835q2;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC1842t.C1843a mo42101a(AbstractC1842t.C1843a c1843a, AbstractC1842t.C1843a c1843a2) {
        AbstractC1842t.C1843a c1843a3 = c1843a;
        return c1843a3.m42064a() ? c1843a3 : c1843a2;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42073a(AbstractC1840s abstractC1840s) {
        C1835q c1835q = (C1835q) abstractC1840s;
        List<C1835q> list = this.f6784g.get(c1835q.f7335a);
        if (list != null) {
            list.remove(c1835q);
        }
        c1835q.m42104f();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    public final void mo42102a(AbstractC1990w abstractC1990w) {
        super.mo42102a(abstractC1990w);
        C1730b c1730b = new C1730b();
        this.f6786i = c1730b;
        m42278a((AdsMediaSource) f6778a, this.f6779b);
        this.f6783f.post(new Runnable(this, c1730b) { // from class: androidx.media2.exoplayer.external.source.ads.c

            /* renamed from: a */
            private final AdsMediaSource f6809a;

            /* renamed from: b */
            private final AdsMediaSource.C1730b f6810b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6809a = this;
                this.f6810b = c1730b;
            }

            @Override // java.lang.Runnable
            public final void run() {
            }
        });
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    public final /* synthetic */ void mo42100a(AbstractC1842t.C1843a c1843a, AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al) {
        AbstractC1842t.C1843a c1843a2 = c1843a;
        boolean z = true;
        if (!c1843a2.m42064a()) {
            boolean z2 = false;
            if (abstractC1383al.mo42093c() == 1) {
                z2 = true;
            }
            C1993a.m41688a(z2);
            this.f6787j = abstractC1383al;
            m42370g();
            return;
        }
        int i = c1843a2.f7357b;
        int i2 = c1843a2.f7358c;
        if (abstractC1383al.mo42093c() != 1) {
            z = false;
        }
        C1993a.m41688a(z);
        this.f6790m[i][i2] = abstractC1383al;
        List<C1835q> remove = this.f6784g.remove(abstractC1842t);
        if (remove != null) {
            Object mo42092a = abstractC1383al.mo42092a(0);
            for (int i3 = 0; i3 < remove.size(); i3++) {
                C1835q c1835q = remove.get(i3);
                c1835q.m42106a(new AbstractC1842t.C1843a(mo42092a, c1835q.f7336b.f7359d));
            }
        }
        m42370g();
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.media2.exoplayer.external.source.t[], androidx.media2.exoplayer.external.source.t[][]] */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.media2.exoplayer.external.al[], androidx.media2.exoplayer.external.al[][]] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: c */
    public final void mo42097c() {
        super.mo42097c();
        C1730b c1730b = (C1730b) C1993a.m41690a(this.f6786i);
        c1730b.f6797b = true;
        c1730b.f6796a.removeCallbacksAndMessages(null);
        this.f6786i = null;
        this.f6784g.clear();
        this.f6787j = null;
        this.f6788k = null;
        this.f6789l = new AbstractC1842t[0];
        this.f6790m = new AbstractC1383al[0];
        Handler handler = this.f6783f;
        AbstractC1733b abstractC1733b = this.f6781d;
        abstractC1733b.getClass();
        handler.post(RunnableC1736d.m42363a(abstractC1733b));
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: e */
    public final Object mo42066e() {
        return this.f6779b.mo42066e();
    }
}
