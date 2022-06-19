package androidx.media2.exoplayer.external;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.media2.exoplayer.external.AbstractC1357a;
import androidx.media2.exoplayer.external.AbstractC1369ae;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.C1372af;
import androidx.media2.exoplayer.external.C1645h;
import androidx.media2.exoplayer.external.C1947u;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.trackselection.AbstractC1944g;
import androidx.media2.exoplayer.external.trackselection.C1946h;
import androidx.media2.exoplayer.external.upstream.AbstractC1964c;
import androidx.media2.exoplayer.external.util.AbstractC1999b;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.media2.exoplayer.external.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/h.class */
public final class C1645h extends AbstractC1357a implements AbstractC1644g {

    /* renamed from: b */
    final C1946h f6519b;

    /* renamed from: c */
    final Handler f6520c;

    /* renamed from: d */
    public final C1947u f6521d;

    /* renamed from: e */
    boolean f6522e;

    /* renamed from: f */
    int f6523f;

    /* renamed from: g */
    int f6524g;

    /* renamed from: h */
    boolean f6525h;

    /* renamed from: i */
    boolean f6526i;

    /* renamed from: j */
    public int f6527j;

    /* renamed from: k */
    public C1368ad f6528k;

    /* renamed from: l */
    public C1378aj f6529l;

    /* renamed from: m */
    C1367ac f6530m;

    /* renamed from: n */
    int f6531n;

    /* renamed from: o */
    int f6532o;

    /* renamed from: p */
    long f6533p;

    /* renamed from: q */
    private final AbstractC1375ag[] f6534q;

    /* renamed from: r */
    private final AbstractC1944g f6535r;

    /* renamed from: s */
    private final Handler f6536s;

    /* renamed from: t */
    private final CopyOnWriteArrayList<AbstractC1357a.C1358a> f6537t;

    /* renamed from: u */
    private final AbstractC1383al.C1385a f6538u;

    /* renamed from: v */
    private final ArrayDeque<Runnable> f6539v;

    /* renamed from: w */
    private AbstractC1842t f6540w;

    /* renamed from: x */
    private boolean f6541x;

    /* renamed from: y */
    private boolean f6542y;

    /* renamed from: androidx.media2.exoplayer.external.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/h$a.class */
    public static final class RunnableC1647a implements Runnable {

        /* renamed from: a */
        final C1367ac f6544a;

        /* renamed from: b */
        final int f6545b;

        /* renamed from: c */
        final int f6546c;

        /* renamed from: d */
        final boolean f6547d;

        /* renamed from: e */
        private final CopyOnWriteArrayList<AbstractC1357a.C1358a> f6548e;

        /* renamed from: f */
        private final AbstractC1944g f6549f;

        /* renamed from: g */
        private final boolean f6550g;

        /* renamed from: h */
        private final boolean f6551h;

        /* renamed from: i */
        private final boolean f6552i;

        /* renamed from: j */
        private final boolean f6553j;

        /* renamed from: k */
        private final boolean f6554k;

        /* renamed from: l */
        private final boolean f6555l;

        /* renamed from: m */
        private final boolean f6556m;

        public RunnableC1647a(C1367ac c1367ac, C1367ac c1367ac2, CopyOnWriteArrayList<AbstractC1357a.C1358a> copyOnWriteArrayList, AbstractC1944g abstractC1944g, boolean z, int i, int i2, boolean z2, boolean z3) {
            this.f6544a = c1367ac;
            this.f6548e = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.f6549f = abstractC1944g;
            this.f6550g = z;
            this.f6545b = i;
            this.f6546c = i2;
            this.f6551h = z2;
            this.f6547d = z3;
            this.f6552i = c1367ac2.f5126e != c1367ac.f5126e;
            this.f6553j = (c1367ac2.f5127f == c1367ac.f5127f || c1367ac.f5127f == null) ? false : true;
            this.f6554k = c1367ac2.f5122a != c1367ac.f5122a;
            this.f6555l = c1367ac2.f5128g != c1367ac.f5128g;
            this.f6556m = c1367ac2.f5130i != c1367ac.f5130i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f6554k || this.f6546c == 0) {
                C1645h.m42493a(this.f6548e, new AbstractC1357a.AbstractC1359b(this) { // from class: androidx.media2.exoplayer.external.n

                    /* renamed from: a */
                    private final C1645h.RunnableC1647a f6715a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6715a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.AbstractC1357a.AbstractC1359b
                    /* renamed from: a */
                    public final void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
                        C1645h.RunnableC1647a runnableC1647a = this.f6715a;
                        abstractC1371b.mo43096a(runnableC1647a.f6544a.f5122a, runnableC1647a.f6546c);
                    }
                });
            }
            if (this.f6550g) {
                C1645h.m42493a(this.f6548e, new AbstractC1357a.AbstractC1359b(this) { // from class: androidx.media2.exoplayer.external.o

                    /* renamed from: a */
                    private final C1645h.RunnableC1647a f6716a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6716a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.AbstractC1357a.AbstractC1359b
                    /* renamed from: a */
                    public final void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
                        abstractC1371b.mo41243a(this.f6716a.f6545b);
                    }
                });
            }
            if (this.f6553j) {
                C1645h.m42493a(this.f6548e, new AbstractC1357a.AbstractC1359b(this) { // from class: androidx.media2.exoplayer.external.p

                    /* renamed from: a */
                    private final C1645h.RunnableC1647a f6719a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6719a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.AbstractC1357a.AbstractC1359b
                    /* renamed from: a */
                    public final void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
                        abstractC1371b.mo41239a(this.f6719a.f6544a.f5127f);
                    }
                });
            }
            if (this.f6556m) {
                this.f6549f.mo41820a(this.f6544a.f5130i.f7828d);
                C1645h.m42493a(this.f6548e, new AbstractC1357a.AbstractC1359b(this) { // from class: androidx.media2.exoplayer.external.q

                    /* renamed from: a */
                    private final C1645h.RunnableC1647a f6720a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6720a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.AbstractC1357a.AbstractC1359b
                    /* renamed from: a */
                    public final void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
                        abstractC1371b.mo41235a(this.f6720a.f6544a.f5130i.f7827c);
                    }
                });
            }
            if (this.f6555l) {
                C1645h.m42493a(this.f6548e, new AbstractC1357a.AbstractC1359b(this) { // from class: androidx.media2.exoplayer.external.r

                    /* renamed from: a */
                    private final C1645h.RunnableC1647a f6721a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6721a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.AbstractC1357a.AbstractC1359b
                    /* renamed from: a */
                    public final void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
                        abstractC1371b.mo43095a(this.f6721a.f6544a.f5128g);
                    }
                });
            }
            if (this.f6552i) {
                C1645h.m42493a(this.f6548e, new AbstractC1357a.AbstractC1359b(this) { // from class: androidx.media2.exoplayer.external.s

                    /* renamed from: a */
                    private final C1645h.RunnableC1647a f6722a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6722a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.AbstractC1357a.AbstractC1359b
                    /* renamed from: a */
                    public final void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
                        C1645h.RunnableC1647a runnableC1647a = this.f6722a;
                        abstractC1371b.mo41233a(runnableC1647a.f6547d, runnableC1647a.f6544a.f5126e);
                    }
                });
            }
            if (this.f6551h) {
                C1645h.m42493a(this.f6548e, C1855t.f7398a);
            }
        }
    }

    public C1645h(AbstractC1375ag[] abstractC1375agArr, AbstractC1944g abstractC1944g, AbstractC2059y abstractC2059y, AbstractC1964c abstractC1964c, AbstractC1999b abstractC1999b, Looper looper) {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = C1996ac.f8066e;
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 30 + String.valueOf(str).length());
        sb.append("Init ");
        sb.append(hexString);
        sb.append(" [ExoPlayerLib/2.10.4] [");
        sb.append(str);
        sb.append("]");
        C2009j.m41581b();
        C1993a.m41686b(abstractC1375agArr.length > 0);
        this.f6534q = (AbstractC1375ag[]) C1993a.m41690a(abstractC1375agArr);
        this.f6535r = (AbstractC1944g) C1993a.m41690a(abstractC1944g);
        this.f6522e = false;
        this.f6523f = 0;
        this.f6542y = false;
        this.f6537t = new CopyOnWriteArrayList<>();
        C1946h c1946h = new C1946h(new RendererConfiguration[abstractC1375agArr.length], new AbstractC1940e[abstractC1375agArr.length], null);
        this.f6519b = c1946h;
        this.f6538u = new AbstractC1383al.C1385a();
        this.f6528k = C1368ad.f5135a;
        this.f6529l = C1378aj.f5157e;
        Handler handler = new Handler(looper) { // from class: androidx.media2.exoplayer.external.h.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                C1645h c1645h = C1645h.this;
                int i = message.what;
                boolean z = true;
                boolean z2 = false;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException();
                    }
                    C1368ad c1368ad = (C1368ad) message.obj;
                    if (message.arg1 != 0) {
                        z2 = true;
                    }
                    if (z2) {
                        c1645h.f6527j--;
                    }
                    if (c1645h.f6527j != 0 || c1645h.f6528k.equals(c1368ad)) {
                        return;
                    }
                    c1645h.f6528k = c1368ad;
                    c1645h.m42500a(new AbstractC1357a.AbstractC1359b(c1368ad) { // from class: androidx.media2.exoplayer.external.l

                        /* renamed from: a */
                        private final C1368ad f6561a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f6561a = c1368ad;
                        }

                        @Override // androidx.media2.exoplayer.external.AbstractC1357a.AbstractC1359b
                        /* renamed from: a */
                        public final void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
                            abstractC1371b.mo43097a();
                        }
                    });
                    return;
                }
                C1367ac c1367ac = (C1367ac) message.obj;
                int i2 = message.arg1;
                if (message.arg2 == -1) {
                    z = false;
                }
                int i3 = message.arg2;
                c1645h.f6524g -= i2;
                if (c1645h.f6524g != 0) {
                    return;
                }
                C1367ac m43133a = c1367ac.f5124c == -9223372036854775807L ? c1367ac.m43133a(c1367ac.f5123b, 0L, c1367ac.f5125d, c1367ac.f5133l) : c1367ac;
                if (!c1645h.f6530m.f5122a.m43094a() && m43133a.f5122a.m43094a()) {
                    c1645h.f6532o = 0;
                    c1645h.f6531n = 0;
                    c1645h.f6533p = 0L;
                }
                int i4 = c1645h.f6525h ? 0 : 2;
                boolean z3 = c1645h.f6526i;
                c1645h.f6525h = false;
                c1645h.f6526i = false;
                c1645h.m42499a(m43133a, z, i3, i4, z3);
            }
        };
        this.f6520c = handler;
        this.f6530m = C1367ac.m43137a(0L, c1946h);
        this.f6539v = new ArrayDeque<>();
        C1947u c1947u = new C1947u(abstractC1375agArr, abstractC1944g, c1946h, abstractC2059y, abstractC1964c, this.f6522e, this.f6523f, this.f6542y, handler, abstractC1999b);
        this.f6521d = c1947u;
        this.f6536s = new Handler(c1947u.f7836b.getLooper());
    }

    /* renamed from: a */
    private long m42496a(AbstractC1842t.C1843a c1843a, long j) {
        long m42894a = C1446c.m42894a(j);
        this.f6530m.f5122a.mo42381a(c1843a.f7356a, this.f6538u);
        return m42894a + C1446c.m42894a(this.f6538u.f5208e);
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* renamed from: a */
    private C1367ac m42491a(boolean z, boolean z2, boolean z3, int i) {
        char c = 0;
        boolean z4 = false;
        if (z) {
            this.f6531n = 0;
            this.f6532o = 0;
            this.f6533p = 0L;
        } else {
            this.f6531n = mo42489c();
            this.f6532o = m42480l();
            this.f6533p = mo42487e();
        }
        if (z || z2) {
            z4 = true;
        }
        AbstractC1842t.C1843a m43131a = z4 ? this.f6530m.m43131a(this.f6542y, this.f5076a, this.f6538u) : this.f6530m.f5123b;
        if (!z4) {
            c = this.f6530m.f5134m;
        }
        return new C1367ac(z2 ? AbstractC1383al.f5203a : this.f6530m.f5122a, m43131a, c, z4 ? (char) 1 : this.f6530m.f5125d, i, z3 ? null : this.f6530m.f5127f, false, z2 ? TrackGroupArray.EMPTY : this.f6530m.f5129h, z2 ? this.f6519b : this.f6530m.f5130i, m43131a, c, 0L, c);
    }

    /* renamed from: a */
    private void m42494a(Runnable runnable) {
        boolean isEmpty = this.f6539v.isEmpty();
        this.f6539v.addLast(runnable);
        if (!isEmpty) {
            return;
        }
        while (!this.f6539v.isEmpty()) {
            this.f6539v.peekFirst().run();
            this.f6539v.removeFirst();
        }
    }

    /* renamed from: a */
    public static void m42493a(CopyOnWriteArrayList<AbstractC1357a.C1358a> copyOnWriteArrayList, AbstractC1357a.AbstractC1359b abstractC1359b) {
        Iterator<AbstractC1357a.C1358a> it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            AbstractC1357a.C1358a next = it2.next();
            if (!next.f5078b) {
                abstractC1359b.mo42034a(next.f5077a);
            }
        }
    }

    /* renamed from: l */
    private int m42480l() {
        return m42478n() ? this.f6532o : this.f6530m.f5122a.mo42088a(this.f6530m.f5123b.f7356a);
    }

    /* renamed from: m */
    private boolean m42479m() {
        return !m42478n() && this.f6530m.f5123b.m42064a();
    }

    /* renamed from: n */
    private boolean m42478n() {
        return this.f6530m.f5122a.m43094a() || this.f6524g > 0;
    }

    /* renamed from: a */
    public final C1372af m42497a(C1372af.AbstractC1374b abstractC1374b) {
        return new C1372af(this.f6521d, abstractC1374b, this.f6530m.f5122a, mo42489c(), this.f6536s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: a */
    public final void mo42501a(int i, long j) {
        AbstractC1383al abstractC1383al = this.f6530m.f5122a;
        if (i < 0 || (!abstractC1383al.m43094a() && i >= abstractC1383al.mo42094b())) {
            throw new IllegalSeekPositionException(abstractC1383al, i, j);
        }
        this.f6526i = true;
        this.f6524g++;
        if (m42479m()) {
            C2009j.m41584a("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            this.f6520c.obtainMessage(0, 1, -1, this.f6530m).sendToTarget();
            return;
        }
        this.f6531n = i;
        char c = 0;
        if (abstractC1383al.m43094a()) {
            if (j != -9223372036854775807L) {
                c = j;
            }
            this.f6533p = c;
            this.f6532o = 0;
        } else {
            char m42893b = j == -9223372036854775807L ? abstractC1383al.mo42095a(i, this.f5076a, 0L).f5218i : C1446c.m42893b(j);
            Pair<Object, Long> m43092a = abstractC1383al.m43092a(this.f5076a, this.f6538u, i, m42893b);
            this.f6533p = C1446c.m42894a(m42893b);
            this.f6532o = abstractC1383al.mo42088a(m43092a.first);
        }
        this.f6521d.f7835a.mo41488a(3, new C1947u.C1952d(abstractC1383al, i, C1446c.m42893b(j))).sendToTarget();
        m42500a(C1649j.f6559a);
    }

    /* renamed from: a */
    public final void m42500a(AbstractC1357a.AbstractC1359b abstractC1359b) {
        m42494a(new Runnable(new CopyOnWriteArrayList(this.f6537t), abstractC1359b) { // from class: androidx.media2.exoplayer.external.m

            /* renamed from: a */
            private final CopyOnWriteArrayList f6562a;

            /* renamed from: b */
            private final AbstractC1357a.AbstractC1359b f6563b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6562a = copyOnWriteArrayList;
                this.f6563b = abstractC1359b;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C1645h.m42493a(this.f6562a, this.f6563b);
            }
        });
    }

    /* renamed from: a */
    final void m42499a(C1367ac c1367ac, boolean z, int i, int i2, boolean z2) {
        C1367ac c1367ac2 = this.f6530m;
        this.f6530m = c1367ac;
        m42494a(new RunnableC1647a(c1367ac, c1367ac2, this.f6537t, this.f6535r, z, i, i2, z2, this.f6522e));
    }

    /* renamed from: a */
    public final void m42498a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
        this.f6537t.addIfAbsent(new AbstractC1357a.C1358a(abstractC1371b));
    }

    /* renamed from: a */
    public final void m42495a(AbstractC1842t abstractC1842t, boolean z, boolean z2) {
        this.f6540w = abstractC1842t;
        C1367ac m42491a = m42491a(true, true, true, 2);
        this.f6525h = true;
        this.f6524g++;
        this.f6521d.f7835a.mo41489a(0, 1, 1, abstractC1842t).sendToTarget();
        m42499a(m42491a, false, 4, 1, false);
    }

    /* renamed from: a */
    public final void m42492a(boolean z, boolean z2) {
        boolean z3 = z && !z2;
        if (this.f6541x != z3) {
            this.f6541x = z3;
            this.f6521d.f7835a.mo41490a(z3 ? 1 : 0).sendToTarget();
        }
        if (this.f6522e != z) {
            this.f6522e = z;
            m42500a(new AbstractC1357a.AbstractC1359b(z, this.f6530m.f5126e) { // from class: androidx.media2.exoplayer.external.i

                /* renamed from: a */
                private final boolean f6557a;

                /* renamed from: b */
                private final int f6558b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6557a = z;
                    this.f6558b = i;
                }

                @Override // androidx.media2.exoplayer.external.AbstractC1357a.AbstractC1359b
                /* renamed from: a */
                public final void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
                    abstractC1371b.mo41233a(this.f6557a, this.f6558b);
                }
            });
        }
    }

    /* renamed from: b */
    public final void m42490b() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = C1996ac.f8066e;
        String m41419a = C2057w.m41419a();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 36 + String.valueOf(str).length() + String.valueOf(m41419a).length());
        sb.append("Release ");
        sb.append(hexString);
        sb.append(" [ExoPlayerLib/2.10.4] [");
        sb.append(str);
        sb.append("] [");
        sb.append(m41419a);
        sb.append("]");
        C2009j.m41581b();
        this.f6540w = null;
        this.f6521d.m41816a();
        this.f6520c.removeCallbacksAndMessages(null);
        this.f6530m = m42491a(false, false, false, 1);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: c */
    public final int mo42489c() {
        return m42478n() ? this.f6531n : this.f6530m.f5122a.mo42381a(this.f6530m.f5123b.f7356a, this.f6538u).f5206c;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: d */
    public final long mo42488d() {
        if (m42479m()) {
            AbstractC1842t.C1843a c1843a = this.f6530m.f5123b;
            this.f6530m.f5122a.mo42381a(c1843a.f7356a, this.f6538u);
            return C1446c.m42894a(this.f6538u.m43080c(c1843a.f7357b, c1843a.f7358c));
        }
        return m43166a();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: e */
    public final long mo42487e() {
        return m42478n() ? this.f6533p : this.f6530m.f5123b.m42064a() ? C1446c.m42894a(this.f6530m.f5134m) : m42496a(this.f6530m.f5123b, this.f6530m.f5134m);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: f */
    public final long mo42486f() {
        if (m42479m()) {
            return this.f6530m.f5131j.equals(this.f6530m.f5123b) ? C1446c.m42894a(this.f6530m.f5132k) : mo42488d();
        } else if (m42478n()) {
            return this.f6533p;
        } else {
            if (this.f6530m.f5131j.f7359d != this.f6530m.f5123b.f7359d) {
                return C1446c.m42894a(this.f6530m.f5122a.mo42095a(mo42489c(), this.f5076a, 0L).f5219j);
            }
            char c = this.f6530m.f5132k;
            if (this.f6530m.f5131j.m42064a()) {
                AbstractC1383al.C1385a mo42381a = this.f6530m.f5122a.mo42381a(this.f6530m.f5131j.f7356a, this.f6538u);
                c = mo42381a.m43089a(this.f6530m.f5131j.f7357b);
                if (c == Long.MIN_VALUE) {
                    c = mo42381a.f5207d;
                }
            }
            return m42496a(this.f6530m.f5131j, c);
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: g */
    public final long mo42485g() {
        return C1446c.m42894a(this.f6530m.f5133l);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: h */
    public final int mo42484h() {
        if (m42479m()) {
            return this.f6530m.f5123b.f7357b;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: i */
    public final int mo42483i() {
        if (m42479m()) {
            return this.f6530m.f5123b.f7358c;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: j */
    public final long mo42482j() {
        if (m42479m()) {
            this.f6530m.f5122a.mo42381a(this.f6530m.f5123b.f7356a, this.f6538u);
            return this.f6530m.f5125d == -9223372036854775807L ? C1446c.m42894a(this.f6530m.f5122a.mo42095a(mo42489c(), this.f5076a, 0L).f5218i) : C1446c.m42894a(this.f6538u.f5208e) + C1446c.m42894a(this.f6530m.f5125d);
        }
        return mo42487e();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: k */
    public final AbstractC1383al mo42481k() {
        return this.f6530m.f5122a;
    }
}
