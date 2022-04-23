package p012b.p076s.p078b.p079a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.IllegalSeekPositionException;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p012b.p076s.p078b.p079a.AbstractC1156a;
import p012b.p076s.p078b.p079a.AbstractC1223d0;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.C1230f0;
import p012b.p076s.p078b.p079a.C1245m;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1162b;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1673l;
import p012b.p076s.p078b.p079a.p110y0.C1671j;
import p012b.p076s.p078b.p079a.p110y0.C1675m;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1679c;
/* renamed from: b.s.b.a.m */
/* loaded from: classes-dex2jar.jar:b/s/b/a/m.class */
public final class C1245m extends AbstractC1156a implements AbstractC1229f {

    /* renamed from: b */
    public final C1675m f4946b;

    /* renamed from: c */
    public final AbstractC1673l f4947c;

    /* renamed from: d */
    public final Handler f4948d;

    /* renamed from: e */
    public final C1509u f4949e;

    /* renamed from: f */
    public final Handler f4950f;

    /* renamed from: g */
    public final CopyOnWriteArrayList<AbstractC1156a.C1157a> f4951g;

    /* renamed from: h */
    public final AbstractC1252n0.C1254b f4952h;

    /* renamed from: i */
    public final ArrayDeque<Runnable> f4953i;

    /* renamed from: j */
    public boolean f4954j;

    /* renamed from: k */
    public boolean f4955k;

    /* renamed from: l */
    public int f4956l;

    /* renamed from: m */
    public boolean f4957m;

    /* renamed from: n */
    public int f4958n;

    /* renamed from: o */
    public boolean f4959o;

    /* renamed from: p */
    public boolean f4960p;

    /* renamed from: q */
    public C1221c0 f4961q;

    /* renamed from: r */
    public C1244l0 f4962r;

    /* renamed from: s */
    public ExoPlaybackException f4963s;

    /* renamed from: t */
    public C1198b0 f4964t;

    /* renamed from: u */
    public int f4965u;

    /* renamed from: v */
    public int f4966v;

    /* renamed from: w */
    public long f4967w;

    /* renamed from: b.s.b.a.m$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/m$a.class */
    public class HandlerC1246a extends Handler {
        public HandlerC1246a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C1245m.this.m34139a(message);
        }
    }

    /* renamed from: b.s.b.a.m$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/m$b.class */
    public static final class RunnableC1247b implements Runnable {

        /* renamed from: a */
        public final C1198b0 f4969a;

        /* renamed from: b */
        public final CopyOnWriteArrayList<AbstractC1156a.C1157a> f4970b;

        /* renamed from: c */
        public final AbstractC1673l f4971c;

        /* renamed from: d */
        public final boolean f4972d;

        /* renamed from: e */
        public final int f4973e;

        /* renamed from: f */
        public final int f4974f;

        /* renamed from: g */
        public final boolean f4975g;

        /* renamed from: h */
        public final boolean f4976h;

        /* renamed from: i */
        public final boolean f4977i;

        /* renamed from: j */
        public final boolean f4978j;

        /* renamed from: k */
        public final boolean f4979k;

        /* renamed from: l */
        public final boolean f4980l;

        public RunnableC1247b(C1198b0 b0Var, C1198b0 b0Var2, CopyOnWriteArrayList<AbstractC1156a.C1157a> copyOnWriteArrayList, AbstractC1673l lVar, boolean z, int i, int i2, boolean z2, boolean z3) {
            this.f4969a = b0Var;
            this.f4970b = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.f4971c = lVar;
            this.f4972d = z;
            this.f4973e = i;
            this.f4974f = i2;
            this.f4975g = z2;
            this.f4980l = z3;
            boolean z4 = true;
            this.f4976h = b0Var2.f4787f != b0Var.f4787f;
            this.f4977i = (b0Var2.f4782a == b0Var.f4782a && b0Var2.f4783b == b0Var.f4783b) ? false : true;
            this.f4978j = b0Var2.f4788g != b0Var.f4788g;
            if (b0Var2.f4790i == b0Var.f4790i) {
                z4 = false;
            }
            this.f4979k = z4;
        }

        /* renamed from: a */
        public final /* synthetic */ void m34108a(AbstractC1223d0.AbstractC1225b bVar) {
            C1198b0 b0Var = this.f4969a;
            bVar.mo34016a(b0Var.f4782a, b0Var.f4783b, this.f4974f);
        }

        /* renamed from: b */
        public final /* synthetic */ void m34107b(AbstractC1223d0.AbstractC1225b bVar) {
            bVar.mo32181b(this.f4973e);
        }

        /* renamed from: c */
        public final /* synthetic */ void m34106c(AbstractC1223d0.AbstractC1225b bVar) {
            C1198b0 b0Var = this.f4969a;
            bVar.mo32185a(b0Var.f4789h, b0Var.f4790i.f6858c);
        }

        /* renamed from: d */
        public final /* synthetic */ void m34105d(AbstractC1223d0.AbstractC1225b bVar) {
            bVar.onLoadingChanged(this.f4969a.f4788g);
        }

        /* renamed from: e */
        public final /* synthetic */ void m34104e(AbstractC1223d0.AbstractC1225b bVar) {
            bVar.onPlayerStateChanged(this.f4980l, this.f4969a.f4787f);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4977i || this.f4974f == 0) {
                C1245m.m34121b(this.f4970b, new AbstractC1156a.AbstractC1158b(this) { // from class: b.s.b.a.n

                    /* renamed from: a */
                    public final C1245m.RunnableC1247b f5011a;

                    {
                        this.f5011a = this;
                    }

                    @Override // p012b.p076s.p078b.p079a.AbstractC1156a.AbstractC1158b
                    /* renamed from: a */
                    public void mo33673a(AbstractC1223d0.AbstractC1225b bVar) {
                        this.f5011a.m34108a(bVar);
                    }
                });
            }
            if (this.f4972d) {
                C1245m.m34121b(this.f4970b, new AbstractC1156a.AbstractC1158b(this) { // from class: b.s.b.a.o

                    /* renamed from: a */
                    public final C1245m.RunnableC1247b f5029a;

                    {
                        this.f5029a = this;
                    }

                    @Override // p012b.p076s.p078b.p079a.AbstractC1156a.AbstractC1158b
                    /* renamed from: a */
                    public void mo33673a(AbstractC1223d0.AbstractC1225b bVar) {
                        this.f5029a.m34107b(bVar);
                    }
                });
            }
            if (this.f4979k) {
                this.f4971c.mo32403a(this.f4969a.f4790i.f6859d);
                C1245m.m34121b(this.f4970b, new AbstractC1156a.AbstractC1158b(this) { // from class: b.s.b.a.p

                    /* renamed from: a */
                    public final C1245m.RunnableC1247b f5045a;

                    {
                        this.f5045a = this;
                    }

                    @Override // p012b.p076s.p078b.p079a.AbstractC1156a.AbstractC1158b
                    /* renamed from: a */
                    public void mo33673a(AbstractC1223d0.AbstractC1225b bVar) {
                        this.f5045a.m34106c(bVar);
                    }
                });
            }
            if (this.f4978j) {
                C1245m.m34121b(this.f4970b, new AbstractC1156a.AbstractC1158b(this) { // from class: b.s.b.a.q

                    /* renamed from: a */
                    public final C1245m.RunnableC1247b f5226a;

                    {
                        this.f5226a = this;
                    }

                    @Override // p012b.p076s.p078b.p079a.AbstractC1156a.AbstractC1158b
                    /* renamed from: a */
                    public void mo33673a(AbstractC1223d0.AbstractC1225b bVar) {
                        this.f5226a.m34105d(bVar);
                    }
                });
            }
            if (this.f4976h) {
                C1245m.m34121b(this.f4970b, new AbstractC1156a.AbstractC1158b(this) { // from class: b.s.b.a.r

                    /* renamed from: a */
                    public final C1245m.RunnableC1247b f5248a;

                    {
                        this.f5248a = this;
                    }

                    @Override // p012b.p076s.p078b.p079a.AbstractC1156a.AbstractC1158b
                    /* renamed from: a */
                    public void mo33673a(AbstractC1223d0.AbstractC1225b bVar) {
                        this.f5248a.m34104e(bVar);
                    }
                });
            }
            if (this.f4975g) {
                C1245m.m34121b(this.f4970b, C1336s.f5284a);
            }
        }
    }

    public C1245m(AbstractC1236h0[] h0VarArr, AbstractC1673l lVar, AbstractC1645x xVar, AbstractC1679c cVar, AbstractC1162b bVar, Looper looper) {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = C1167d0.f4692e;
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 30 + String.valueOf(str).length());
        sb.append("Init ");
        sb.append(hexString);
        sb.append(" [");
        sb.append("ExoPlayerLib/2.10.1");
        sb.append("] [");
        sb.append(str);
        sb.append("]");
        C1175j.m34415c("ExoPlayerImpl", sb.toString());
        C1160a.m34518b(h0VarArr.length > 0);
        C1160a.m34522a(h0VarArr);
        C1160a.m34522a(lVar);
        this.f4947c = lVar;
        this.f4954j = false;
        this.f4956l = 0;
        this.f4957m = false;
        this.f4951g = new CopyOnWriteArrayList<>();
        this.f4946b = new C1675m(new C1240j0[h0VarArr.length], new AbstractC1668i[h0VarArr.length], null);
        this.f4952h = new AbstractC1252n0.C1254b();
        this.f4961q = C1221c0.f4895e;
        this.f4962r = C1244l0.f4943g;
        this.f4948d = new HandlerC1246a(looper);
        this.f4964t = C1198b0.m34277a(0L, this.f4946b);
        this.f4953i = new ArrayDeque<>();
        this.f4949e = new C1509u(h0VarArr, lVar, this.f4946b, xVar, cVar, this.f4954j, this.f4956l, this.f4957m, this.f4948d, bVar);
        this.f4950f = new Handler(this.f4949e.m33033d());
    }

    /* renamed from: b */
    public static void m34121b(CopyOnWriteArrayList<AbstractC1156a.C1157a> copyOnWriteArrayList, AbstractC1156a.AbstractC1158b bVar) {
        Iterator<AbstractC1156a.C1157a> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            it.next().m34556a(bVar);
        }
    }

    /* renamed from: a */
    public final long m34129a(AbstractC1634r.C1635a aVar, long j) {
        long b = C1220c.m34195b(j);
        this.f4964t.f4782a.mo32960a(aVar.f6755a, this.f4952h);
        return b + this.f4952h.m34026d();
    }

    /* renamed from: a */
    public final C1198b0 m34123a(boolean z, boolean z2, int i) {
        long j = 0;
        boolean z3 = false;
        if (z) {
            this.f4965u = 0;
            this.f4966v = 0;
            this.f4967w = 0L;
        } else {
            this.f4965u = mo34079b();
            this.f4966v = m34117m();
            this.f4967w = getCurrentPosition();
        }
        if (z || z2) {
            z3 = true;
        }
        AbstractC1634r.C1635a a = z3 ? this.f4964t.m34271a(this.f4957m, this.f4667a) : this.f4964t.f4784c;
        if (!z3) {
            j = this.f4964t.f4794m;
        }
        return new C1198b0(z2 ? AbstractC1252n0.f5012a : this.f4964t.f4782a, z2 ? null : this.f4964t.f4783b, a, j, z3 ? -9223372036854775807L : this.f4964t.f4786e, i, false, z2 ? TrackGroupArray.f1858d : this.f4964t.f4789h, z2 ? this.f4946b : this.f4964t.f4790i, a, j, 0L, j);
    }

    /* renamed from: a */
    public C1230f0 m34131a(C1230f0.AbstractC1232b bVar) {
        return new C1230f0(this.f4949e, bVar, this.f4964t.f4782a, mo34079b(), this.f4950f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: a */
    public void mo34101a(int i, long j) {
        AbstractC1252n0 n0Var = this.f4964t.f4782a;
        if (i < 0 || (!n0Var.m34040c() && i >= n0Var.mo32713b())) {
            throw new IllegalSeekPositionException(n0Var, i, j);
        }
        this.f4960p = true;
        this.f4958n++;
        if (m34111s()) {
            C1175j.m34414d("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            this.f4948d.obtainMessage(0, 1, -1, this.f4964t).sendToTarget();
            return;
        }
        this.f4965u = i;
        if (n0Var.m34040c()) {
            this.f4967w = j == -9223372036854775807L ? 0 : j;
            this.f4966v = 0;
        } else {
            long b = j == -9223372036854775807L ? n0Var.m34045a(i, this.f4667a).m34022b() : C1220c.m34196a(j);
            Pair<Object, Long> a = n0Var.m34043a(this.f4667a, this.f4952h, i, b);
            this.f4967w = C1220c.m34195b(b);
            this.f4966v = n0Var.mo32715a(a.first);
        }
        this.f4949e.m33043b(n0Var, i, C1220c.m34196a(j));
        m34137a(C1237i.f4932a);
    }

    /* renamed from: a */
    public void m34139a(Message message) {
        int i = message.what;
        boolean z = true;
        if (i == 0) {
            C1198b0 b0Var = (C1198b0) message.obj;
            int i2 = message.arg1;
            if (message.arg2 == -1) {
                z = false;
            }
            m34136a(b0Var, i2, z, message.arg2);
        } else if (i == 1) {
            final C1221c0 c0Var = (C1221c0) message.obj;
            if (!this.f4961q.equals(c0Var)) {
                this.f4961q = c0Var;
                m34137a(new AbstractC1156a.AbstractC1158b(c0Var) { // from class: b.s.b.a.j

                    /* renamed from: a */
                    public final C1221c0 f4933a;

                    {
                        this.f4933a = c0Var;
                    }

                    @Override // p012b.p076s.p078b.p079a.AbstractC1156a.AbstractC1158b
                    /* renamed from: a */
                    public void mo33673a(AbstractC1223d0.AbstractC1225b bVar) {
                        bVar.mo34018a(this.f4933a);
                    }
                });
            }
        } else if (i == 2) {
            final ExoPlaybackException exoPlaybackException = (ExoPlaybackException) message.obj;
            this.f4963s = exoPlaybackException;
            m34137a(new AbstractC1156a.AbstractC1158b(exoPlaybackException) { // from class: b.s.b.a.k

                /* renamed from: a */
                public final ExoPlaybackException f4936a;

                {
                    this.f4936a = exoPlaybackException;
                }

                @Override // p012b.p076s.p078b.p079a.AbstractC1156a.AbstractC1158b
                /* renamed from: a */
                public void mo33673a(AbstractC1223d0.AbstractC1225b bVar) {
                    bVar.mo32187a(this.f4936a);
                }
            });
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final void m34137a(final AbstractC1156a.AbstractC1158b bVar) {
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.f4951g);
        m34127a(new Runnable(copyOnWriteArrayList, bVar) { // from class: b.s.b.a.l

            /* renamed from: a */
            public final CopyOnWriteArrayList f4937a;

            /* renamed from: b */
            public final AbstractC1156a.AbstractC1158b f4938b;

            {
                this.f4937a = copyOnWriteArrayList;
                this.f4938b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1245m.m34121b(this.f4937a, this.f4938b);
            }
        });
    }

    /* renamed from: a */
    public final void m34136a(C1198b0 b0Var, int i, boolean z, int i2) {
        int i3 = this.f4958n - i;
        this.f4958n = i3;
        if (i3 == 0) {
            C1198b0 b0Var2 = b0Var;
            if (b0Var.f4785d == -9223372036854775807L) {
                b0Var2 = b0Var.m34273a(b0Var.f4784c, 0L, b0Var.f4786e, b0Var.f4793l);
            }
            if (!this.f4964t.f4782a.m34040c() && b0Var2.f4782a.m34040c()) {
                this.f4966v = 0;
                this.f4965u = 0;
                this.f4967w = 0L;
            }
            int i4 = this.f4959o ? 0 : 2;
            boolean z2 = this.f4960p;
            this.f4959o = false;
            this.f4960p = false;
            m34135a(b0Var2, z, i2, i4, z2);
        }
    }

    /* renamed from: a */
    public final void m34135a(C1198b0 b0Var, boolean z, int i, int i2, boolean z2) {
        C1198b0 b0Var2 = this.f4964t;
        this.f4964t = b0Var;
        m34127a(new RunnableC1247b(b0Var, b0Var2, this.f4951g, this.f4947c, z, i, i2, z2, this.f4954j));
    }

    /* renamed from: a */
    public void m34134a(C1221c0 c0Var) {
        C1221c0 c0Var2 = c0Var;
        if (c0Var == null) {
            c0Var2 = C1221c0.f4895e;
        }
        this.f4949e.m33038c(c0Var2);
    }

    /* renamed from: a */
    public void m34132a(AbstractC1223d0.AbstractC1225b bVar) {
        this.f4951g.addIfAbsent(new AbstractC1156a.C1157a(bVar));
    }

    /* renamed from: a */
    public void m34130a(C1244l0 l0Var) {
        C1244l0 l0Var2 = l0Var;
        if (l0Var == null) {
            l0Var2 = C1244l0.f4943g;
        }
        if (!this.f4962r.equals(l0Var2)) {
            this.f4962r = l0Var2;
            this.f4949e.m33068a(l0Var2);
        }
    }

    /* renamed from: a */
    public void m34128a(AbstractC1634r rVar, boolean z, boolean z2) {
        this.f4963s = null;
        C1198b0 a = m34123a(z, z2, 2);
        this.f4959o = true;
        this.f4958n++;
        this.f4949e.m33060a(rVar, z, z2);
        m34135a(a, false, 4, 1, false);
    }

    /* renamed from: a */
    public final void m34127a(Runnable runnable) {
        boolean isEmpty = this.f4953i.isEmpty();
        this.f4953i.addLast(runnable);
        if (!(!isEmpty)) {
            while (!this.f4953i.isEmpty()) {
                this.f4953i.peekFirst().run();
                this.f4953i.removeFirst();
            }
        }
    }

    /* renamed from: a */
    public void m34124a(final boolean z, boolean z2) {
        boolean z3 = z && !z2;
        if (this.f4955k != z3) {
            this.f4955k = z3;
            this.f4949e.m33029d(z3);
        }
        if (this.f4954j != z) {
            this.f4954j = z;
            final int i = this.f4964t.f4787f;
            m34137a(new AbstractC1156a.AbstractC1158b(z, i) { // from class: b.s.b.a.h

                /* renamed from: a */
                public final boolean f4930a;

                /* renamed from: b */
                public final int f4931b;

                {
                    this.f4930a = z;
                    this.f4931b = i;
                }

                @Override // p012b.p076s.p078b.p079a.AbstractC1156a.AbstractC1158b
                /* renamed from: a */
                public void mo33673a(AbstractC1223d0.AbstractC1225b bVar) {
                    bVar.onPlayerStateChanged(this.f4930a, this.f4931b);
                }
            });
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: b */
    public int mo34079b() {
        if (m34109u()) {
            return this.f4965u;
        }
        C1198b0 b0Var = this.f4964t;
        return b0Var.f4782a.mo32960a(b0Var.f4784c.f6755a, this.f4952h).f5015c;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: c */
    public long mo34074c() {
        if (!m34111s()) {
            return getCurrentPosition();
        }
        C1198b0 b0Var = this.f4964t;
        b0Var.f4782a.mo32960a(b0Var.f4784c.f6755a, this.f4952h);
        return this.f4952h.m34026d() + C1220c.m34195b(this.f4964t.f4786e);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: d */
    public long mo34072d() {
        if (!m34111s()) {
            return m34118l();
        }
        C1198b0 b0Var = this.f4964t;
        return b0Var.f4791j.equals(b0Var.f4784c) ? C1220c.m34195b(this.f4964t.f4792k) : getDuration();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: e */
    public AbstractC1252n0 mo34070e() {
        return this.f4964t.f4782a;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: f */
    public C1671j mo34068f() {
        return this.f4964t.f4790i.f6858c;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: g */
    public long mo34066g() {
        return Math.max(0L, C1220c.m34195b(this.f4964t.f4793l));
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    public long getCurrentPosition() {
        if (m34109u()) {
            return this.f4967w;
        }
        if (this.f4964t.f4784c.m32501a()) {
            return C1220c.m34195b(this.f4964t.f4794m);
        }
        C1198b0 b0Var = this.f4964t;
        return m34129a(b0Var.f4784c, b0Var.f4794m);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    public long getDuration() {
        if (!m34111s()) {
            return m34557j();
        }
        C1198b0 b0Var = this.f4964t;
        AbstractC1634r.C1635a aVar = b0Var.f4784c;
        b0Var.f4782a.mo32960a(aVar.f6755a, this.f4952h);
        return C1220c.m34195b(this.f4952h.m34037a(aVar.f6756b, aVar.f6757c));
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: h */
    public int mo34064h() {
        return m34111s() ? this.f4964t.f4784c.f6757c : -1;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: i */
    public int mo34062i() {
        return m34111s() ? this.f4964t.f4784c.f6756b : -1;
    }

    /* renamed from: k */
    public Looper m34119k() {
        return this.f4948d.getLooper();
    }

    /* renamed from: l */
    public long m34118l() {
        if (m34109u()) {
            return this.f4967w;
        }
        C1198b0 b0Var = this.f4964t;
        if (b0Var.f4791j.f6758d != b0Var.f4784c.f6758d) {
            return b0Var.f4782a.m34045a(mo34079b(), this.f4667a).m34021c();
        }
        long j = b0Var.f4792k;
        if (this.f4964t.f4791j.m32501a()) {
            C1198b0 b0Var2 = this.f4964t;
            AbstractC1252n0.C1254b a = b0Var2.f4782a.mo32960a(b0Var2.f4791j.f6755a, this.f4952h);
            j = a.m34032b(this.f4964t.f4791j.f6756b);
            if (j == Long.MIN_VALUE) {
                j = a.f5016d;
            }
        }
        return m34129a(this.f4964t.f4791j, j);
    }

    /* renamed from: m */
    public int m34117m() {
        if (m34109u()) {
            return this.f4966v;
        }
        C1198b0 b0Var = this.f4964t;
        return b0Var.f4782a.mo32715a(b0Var.f4784c.f6755a);
    }

    /* renamed from: n */
    public boolean m34116n() {
        return this.f4954j;
    }

    /* renamed from: o */
    public ExoPlaybackException m34115o() {
        return this.f4963s;
    }

    /* renamed from: p */
    public Looper m34114p() {
        return this.f4949e.m33033d();
    }

    /* renamed from: q */
    public int m34113q() {
        return this.f4964t.f4787f;
    }

    /* renamed from: r */
    public int m34112r() {
        return this.f4956l;
    }

    /* renamed from: s */
    public boolean m34111s() {
        return !m34109u() && this.f4964t.f4784c.m32501a();
    }

    /* renamed from: t */
    public void m34110t() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = C1167d0.f4692e;
        String a = C1528v.m32963a();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 36 + String.valueOf(str).length() + String.valueOf(a).length());
        sb.append("Release ");
        sb.append(hexString);
        sb.append(" [");
        sb.append("ExoPlayerLib/2.10.1");
        sb.append("] [");
        sb.append(str);
        sb.append("] [");
        sb.append(a);
        sb.append("]");
        C1175j.m34415c("ExoPlayerImpl", sb.toString());
        this.f4949e.m33014n();
        this.f4948d.removeCallbacksAndMessages(null);
        this.f4964t = m34123a(false, false, 1);
    }

    /* renamed from: u */
    public final boolean m34109u() {
        return this.f4964t.f4782a.m34040c() || this.f4958n > 0;
    }
}
