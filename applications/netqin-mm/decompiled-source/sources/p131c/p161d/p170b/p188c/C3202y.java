package p131c.p161d.p170b.p188c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.IllegalSeekPositionException;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p131c.p161d.p170b.p188c.AbstractC2941j0;
import p131c.p161d.p170b.p188c.AbstractC2958p;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.C2949l0;
import p131c.p161d.p170b.p188c.C3202y;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2780f;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2784h;
import p131c.p161d.p170b.p188c.p198d1.C2783g;
import p131c.p161d.p170b.p188c.p198d1.C2786i;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2822f;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2882g;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
/* renamed from: c.d.b.c.y */
/* loaded from: classes-dex2jar.jar:c/d/b/c/y.class */
public final class C3202y extends AbstractC2958p implements AbstractC3028w {

    /* renamed from: b */
    public final C2786i f11808b;

    /* renamed from: c */
    public final AbstractC2953m0[] f11809c;

    /* renamed from: d */
    public final AbstractC2784h f11810d;

    /* renamed from: e */
    public final Handler f11811e;

    /* renamed from: f */
    public final C3210z f11812f;

    /* renamed from: g */
    public final Handler f11813g;

    /* renamed from: h */
    public final CopyOnWriteArrayList<AbstractC2958p.C2959a> f11814h;

    /* renamed from: i */
    public final AbstractC2965r0.C2967b f11815i;

    /* renamed from: j */
    public final ArrayDeque<Runnable> f11816j;

    /* renamed from: k */
    public boolean f11817k;

    /* renamed from: l */
    public int f11818l;

    /* renamed from: m */
    public int f11819m;

    /* renamed from: n */
    public boolean f11820n;

    /* renamed from: o */
    public int f11821o;

    /* renamed from: p */
    public boolean f11822p;

    /* renamed from: q */
    public boolean f11823q;

    /* renamed from: r */
    public int f11824r;

    /* renamed from: s */
    public C2910h0 f11825s;

    /* renamed from: t */
    public C2866g0 f11826t;

    /* renamed from: u */
    public int f11827u;

    /* renamed from: v */
    public int f11828v;

    /* renamed from: w */
    public long f11829w;

    /* renamed from: c.d.b.c.y$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/y$a.class */
    public class HandlerC3203a extends Handler {
        public HandlerC3203a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C3202y.this.m27486a(message);
        }
    }

    /* renamed from: c.d.b.c.y$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/y$b.class */
    public static final class RunnableC3204b implements Runnable {

        /* renamed from: a */
        public final C2866g0 f11831a;

        /* renamed from: b */
        public final CopyOnWriteArrayList<AbstractC2958p.C2959a> f11832b;

        /* renamed from: c */
        public final AbstractC2784h f11833c;

        /* renamed from: d */
        public final boolean f11834d;

        /* renamed from: e */
        public final int f11835e;

        /* renamed from: f */
        public final int f11836f;

        /* renamed from: g */
        public final boolean f11837g;

        /* renamed from: h */
        public final boolean f11838h;

        /* renamed from: i */
        public final boolean f11839i;

        /* renamed from: j */
        public final boolean f11840j;

        /* renamed from: k */
        public final boolean f11841k;

        /* renamed from: l */
        public final boolean f11842l;

        /* renamed from: m */
        public final boolean f11843m;

        /* renamed from: n */
        public final boolean f11844n;

        public RunnableC3204b(C2866g0 g0Var, C2866g0 g0Var2, CopyOnWriteArrayList<AbstractC2958p.C2959a> copyOnWriteArrayList, AbstractC2784h hVar, boolean z, int i, int i2, boolean z2, boolean z3, boolean z4) {
            this.f11831a = g0Var;
            this.f11832b = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.f11833c = hVar;
            this.f11834d = z;
            this.f11835e = i;
            this.f11836f = i2;
            this.f11837g = z2;
            this.f11843m = z3;
            this.f11844n = z4;
            boolean z5 = true;
            this.f11838h = g0Var2.f10430e != g0Var.f10430e;
            ExoPlaybackException exoPlaybackException = g0Var2.f10431f;
            ExoPlaybackException exoPlaybackException2 = g0Var.f10431f;
            this.f11839i = (exoPlaybackException == exoPlaybackException2 || exoPlaybackException2 == null) ? false : true;
            this.f11840j = g0Var2.f10426a != g0Var.f10426a;
            this.f11841k = g0Var2.f10432g != g0Var.f10432g;
            if (g0Var2.f10434i == g0Var.f10434i) {
                z5 = false;
            }
            this.f11842l = z5;
        }

        /* renamed from: a */
        public /* synthetic */ void m27450a(AbstractC2941j0.AbstractC2943b bVar) {
            bVar.onTimelineChanged(this.f11831a.f10426a, this.f11836f);
        }

        /* renamed from: b */
        public /* synthetic */ void m27449b(AbstractC2941j0.AbstractC2943b bVar) {
            bVar.mo18321b(this.f11835e);
        }

        /* renamed from: c */
        public /* synthetic */ void m27448c(AbstractC2941j0.AbstractC2943b bVar) {
            bVar.onPlayerError(this.f11831a.f10431f);
        }

        /* renamed from: d */
        public /* synthetic */ void m27447d(AbstractC2941j0.AbstractC2943b bVar) {
            C2866g0 g0Var = this.f11831a;
            bVar.onTracksChanged(g0Var.f10433h, g0Var.f10434i.f10139c);
        }

        /* renamed from: e */
        public /* synthetic */ void m27446e(AbstractC2941j0.AbstractC2943b bVar) {
            bVar.onLoadingChanged(this.f11831a.f10432g);
        }

        /* renamed from: f */
        public /* synthetic */ void m27445f(AbstractC2941j0.AbstractC2943b bVar) {
            bVar.onPlayerStateChanged(this.f11843m, this.f11831a.f10430e);
        }

        /* renamed from: g */
        public /* synthetic */ void m27444g(AbstractC2941j0.AbstractC2943b bVar) {
            bVar.mo18320b(this.f11831a.f10430e == 3);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f11840j || this.f11836f == 0) {
                C3202y.m27464b(this.f11832b, new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.f
                    @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                    /* renamed from: a */
                    public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                        C3202y.RunnableC3204b.this.m27450a(bVar);
                    }
                });
            }
            if (this.f11834d) {
                C3202y.m27464b(this.f11832b, new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.e
                    @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                    /* renamed from: a */
                    public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                        C3202y.RunnableC3204b.this.m27449b(bVar);
                    }
                });
            }
            if (this.f11839i) {
                C3202y.m27464b(this.f11832b, new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.i
                    @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                    /* renamed from: a */
                    public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                        C3202y.RunnableC3204b.this.m27448c(bVar);
                    }
                });
            }
            if (this.f11842l) {
                this.f11833c.mo29016a(this.f11831a.f10434i.f10140d);
                C3202y.m27464b(this.f11832b, new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.h
                    @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                    /* renamed from: a */
                    public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                        C3202y.RunnableC3204b.this.m27447d(bVar);
                    }
                });
            }
            if (this.f11841k) {
                C3202y.m27464b(this.f11832b, new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.j
                    @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                    /* renamed from: a */
                    public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                        C3202y.RunnableC3204b.this.m27446e(bVar);
                    }
                });
            }
            if (this.f11838h) {
                C3202y.m27464b(this.f11832b, new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.d
                    @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                    /* renamed from: a */
                    public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                        C3202y.RunnableC3204b.this.m27445f(bVar);
                    }
                });
            }
            if (this.f11844n) {
                C3202y.m27464b(this.f11832b, new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.g
                    @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                    /* renamed from: a */
                    public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                        C3202y.RunnableC3204b.this.m27444g(bVar);
                    }
                });
            }
            if (this.f11837g) {
                C3202y.m27464b(this.f11832b, C2682a.f9815a);
            }
        }
    }

    public C3202y(AbstractC2953m0[] m0VarArr, AbstractC2784h hVar, AbstractC2760c0 c0Var, AbstractC2822f fVar, AbstractC2882g gVar, Looper looper) {
        C2894o.m28595c("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.11.0] [" + C2885h0.f10481e + "]");
        C2877e.m28731b(m0VarArr.length > 0);
        C2877e.m28737a(m0VarArr);
        this.f11809c = m0VarArr;
        C2877e.m28737a(hVar);
        this.f11810d = hVar;
        this.f11817k = false;
        this.f11819m = 0;
        this.f11820n = false;
        this.f11814h = new CopyOnWriteArrayList<>();
        this.f11808b = new C2786i(new C2961p0[m0VarArr.length], new AbstractC2780f[m0VarArr.length], null);
        this.f11815i = new AbstractC2965r0.C2967b();
        this.f11825s = C2910h0.f10539e;
        C2963q0 q0Var = C2963q0.f10671d;
        this.f11818l = 0;
        this.f11811e = new HandlerC3203a(looper);
        this.f11826t = C2866g0.m28756a(0L, this.f11808b);
        this.f11816j = new ArrayDeque<>();
        this.f11812f = new C3210z(m0VarArr, hVar, this.f11808b, c0Var, fVar, this.f11817k, this.f11819m, this.f11820n, this.f11811e, gVar);
        this.f11813g = new Handler(this.f11812f.m27366c());
    }

    /* renamed from: a */
    public static /* synthetic */ void m27470a(boolean z, boolean z2, int i, boolean z3, int i2, boolean z4, boolean z5, AbstractC2941j0.AbstractC2943b bVar) {
        if (z) {
            bVar.onPlayerStateChanged(z2, i);
        }
        if (z3) {
            bVar.mo18323a(i2);
        }
        if (z4) {
            bVar.mo18320b(z5);
        }
    }

    /* renamed from: b */
    public static void m27464b(CopyOnWriteArrayList<AbstractC2958p.C2959a> copyOnWriteArrayList, AbstractC2958p.AbstractC2960b bVar) {
        Iterator<AbstractC2958p.C2959a> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            it.next().m28384a(bVar);
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: P */
    public int mo27498P() {
        return this.f11826t.f10430e;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: Q */
    public boolean mo27497Q() {
        return !m27451j() && this.f11826t.f10427b.m29245a();
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: R */
    public boolean mo27496R() {
        return this.f11817k;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: S */
    public ExoPlaybackException mo27495S() {
        return this.f11826t.f10431f;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: U */
    public AbstractC2941j0.AbstractC2945d mo27494U() {
        return null;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: X */
    public int mo27493X() {
        return this.f11818l;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: Y */
    public TrackGroupArray mo27492Y() {
        return this.f11826t.f10433h;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: Z */
    public int mo27491Z() {
        return this.f11819m;
    }

    /* renamed from: a */
    public final long m27485a(AbstractC2737t.C2738a aVar, long j) {
        long b = C2964r.m28356b(j);
        this.f11826t.f10426a.m28349a(aVar.f9929a, this.f11815i);
        return b + this.f11815i.m28324d();
    }

    /* renamed from: a */
    public final C2866g0 m27469a(boolean z, boolean z2, boolean z3, int i) {
        long j = 0;
        boolean z4 = false;
        if (z) {
            this.f11827u = 0;
            this.f11828v = 0;
            this.f11829w = 0L;
        } else {
            this.f11827u = mo27467b();
            this.f11828v = m27452i();
            this.f11829w = getCurrentPosition();
        }
        if (z || z2) {
            z4 = true;
        }
        AbstractC2737t.C2738a a = z4 ? this.f11826t.m28749a(this.f11820n, this.f10654a, this.f11815i) : this.f11826t.f10427b;
        if (!z4) {
            j = this.f11826t.f10438m;
        }
        return new C2866g0(z2 ? AbstractC2965r0.f10677a : this.f11826t.f10426a, a, j, z4 ? -9223372036854775807L : this.f11826t.f10429d, i, z3 ? null : this.f11826t.f10431f, false, z2 ? TrackGroupArray.f22260d : this.f11826t.f10433h, z2 ? this.f11808b : this.f11826t.f10434i, a, j, 0L, j);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC3028w
    /* renamed from: a */
    public C2949l0 mo27477a(C2949l0.AbstractC2951b bVar) {
        return new C2949l0(this.f11812f, bVar, this.f11826t.f10426a, mo27467b(), this.f11813g);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: a */
    public void mo27490a() {
        C2894o.m28595c("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.11.0] [" + C2885h0.f10481e + "] [" + C2683a0.m29297a() + "]");
        this.f11812f.m27340p();
        this.f11811e.removeCallbacksAndMessages(null);
        this.f11826t = m27469a(false, false, false, 1);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: a */
    public void mo27489a(final int i) {
        if (this.f11819m != i) {
            this.f11819m = i;
            this.f11812f.m27408a(i);
            m27476a(new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.n
                @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                /* renamed from: a */
                public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                    bVar.mo18318d(i);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: a */
    public void mo27488a(int i, long j) {
        AbstractC2965r0 r0Var = this.f11826t.f10426a;
        if (i < 0 || (!r0Var.m28344c() && i >= r0Var.mo28338b())) {
            throw new IllegalSeekPositionException(r0Var, i, j);
        }
        this.f11823q = true;
        this.f11821o++;
        if (mo27497Q()) {
            C2894o.m28594d("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            this.f11811e.obtainMessage(0, 1, -1, this.f11826t).sendToTarget();
            return;
        }
        this.f11827u = i;
        if (r0Var.m28344c()) {
            this.f11829w = j == -9223372036854775807L ? 0 : j;
            this.f11828v = 0;
        } else {
            long b = j == -9223372036854775807L ? r0Var.m28352a(i, this.f10654a).m28319b() : C2964r.m28357a(j);
            Pair<Object, Long> a = r0Var.m28351a(this.f10654a, this.f11815i, i, b);
            this.f11829w = C2964r.m28356b(b);
            this.f11828v = r0Var.mo28339a(a.first);
        }
        this.f11812f.m27368b(r0Var, i, C2964r.m28357a(j));
        m27476a(C2759c.f10070a);
    }

    /* renamed from: a */
    public void m27486a(Message message) {
        int i = message.what;
        boolean z = false;
        boolean z2 = false;
        if (i == 0) {
            C2866g0 g0Var = (C2866g0) message.obj;
            int i2 = message.arg1;
            if (message.arg2 != -1) {
                z = true;
            }
            m27482a(g0Var, i2, z, message.arg2);
        } else if (i == 1) {
            C2910h0 h0Var = (C2910h0) message.obj;
            if (message.arg1 != 0) {
                z2 = true;
            }
            m27479a(h0Var, z2);
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC3028w
    /* renamed from: a */
    public void mo27484a(AbstractC2737t tVar) {
        m27483a(tVar, true, true);
    }

    /* renamed from: a */
    public void m27483a(AbstractC2737t tVar, boolean z, boolean z2) {
        C2866g0 a = m27469a(z, z2, true, 2);
        this.f11822p = true;
        this.f11821o++;
        this.f11812f.m27398a(tVar, z, z2);
        m27481a(a, false, 4, 1, false);
    }

    /* renamed from: a */
    public final void m27482a(C2866g0 g0Var, int i, boolean z, int i2) {
        int i3 = this.f11821o - i;
        this.f11821o = i3;
        if (i3 == 0) {
            C2866g0 g0Var2 = g0Var;
            if (g0Var.f10428c == -9223372036854775807L) {
                g0Var2 = g0Var.m28754a(g0Var.f10427b, 0L, g0Var.f10429d, g0Var.f10437l);
            }
            if (!this.f11826t.f10426a.m28344c() && g0Var2.f10426a.m28344c()) {
                this.f11828v = 0;
                this.f11827u = 0;
                this.f11829w = 0L;
            }
            int i4 = this.f11822p ? 0 : 2;
            boolean z2 = this.f11823q;
            this.f11822p = false;
            this.f11823q = false;
            m27481a(g0Var2, z, i2, i4, z2);
        }
    }

    /* renamed from: a */
    public final void m27481a(C2866g0 g0Var, boolean z, int i, int i2, boolean z2) {
        boolean isPlaying = isPlaying();
        C2866g0 g0Var2 = this.f11826t;
        this.f11826t = g0Var;
        m27475a(new RunnableC3204b(g0Var, g0Var2, this.f11814h, this.f11810d, z, i, i2, z2, this.f11817k, isPlaying != isPlaying()));
    }

    /* renamed from: a */
    public final void m27479a(final C2910h0 h0Var, boolean z) {
        if (z) {
            this.f11824r--;
        }
        if (this.f11824r == 0 && !this.f11825s.equals(h0Var)) {
            this.f11825s = h0Var;
            m27476a(new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.m
                @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                /* renamed from: a */
                public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                    bVar.onPlaybackParametersChanged(C2910h0.this);
                }
            });
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: a */
    public void mo27478a(AbstractC2941j0.AbstractC2943b bVar) {
        this.f11814h.addIfAbsent(new AbstractC2958p.C2959a(bVar));
    }

    /* renamed from: a */
    public final void m27476a(final AbstractC2958p.AbstractC2960b bVar) {
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.f11814h);
        m27475a(new Runnable() { // from class: c.d.b.c.b
            @Override // java.lang.Runnable
            public final void run() {
                C3202y.m27464b(copyOnWriteArrayList, bVar);
            }
        });
    }

    /* renamed from: a */
    public final void m27475a(Runnable runnable) {
        boolean isEmpty = this.f11816j.isEmpty();
        this.f11816j.addLast(runnable);
        if (!(!isEmpty)) {
            while (!this.f11816j.isEmpty()) {
                this.f11816j.peekFirst().run();
                this.f11816j.removeFirst();
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: a */
    public void mo27473a(final boolean z) {
        if (this.f11820n != z) {
            this.f11820n = z;
            this.f11812f.m27355e(z);
            m27476a(new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.k
                @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                /* renamed from: a */
                public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                    bVar.mo18322a(z);
                }
            });
        }
    }

    /* renamed from: a */
    public void m27472a(final boolean z, final int i) {
        boolean isPlaying = isPlaying();
        boolean z2 = this.f11817k && this.f11818l == 0;
        boolean z3 = z && i == 0;
        if (z2 != z3) {
            this.f11812f.m27362c(z3);
        }
        final boolean z4 = this.f11817k != z;
        final boolean z5 = this.f11818l != i;
        this.f11817k = z;
        this.f11818l = i;
        final boolean isPlaying2 = isPlaying();
        final boolean z6 = isPlaying != isPlaying2;
        if (z4 || z5 || z6) {
            final int i2 = this.f11826t.f10430e;
            m27476a(new AbstractC2958p.AbstractC2960b() { // from class: c.d.b.c.l
                @Override // p131c.p161d.p170b.p188c.AbstractC2958p.AbstractC2960b
                /* renamed from: a */
                public final void mo28383a(AbstractC2941j0.AbstractC2943b bVar) {
                    C3202y.m27470a(z4, z, i2, z5, i, z6, isPlaying2, bVar);
                }
            });
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: a0 */
    public Looper mo27468a0() {
        return this.f11811e.getLooper();
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: b */
    public int mo27467b() {
        if (m27451j()) {
            return this.f11827u;
        }
        C2866g0 g0Var = this.f11826t;
        return g0Var.f10426a.m28349a(g0Var.f10427b.f9929a, this.f11815i).f10680c;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: b */
    public int mo27466b(int i) {
        return this.f11809c[i].mo28371e();
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: b */
    public void mo27465b(AbstractC2941j0.AbstractC2943b bVar) {
        Iterator<AbstractC2958p.C2959a> it = this.f11814h.iterator();
        while (it.hasNext()) {
            AbstractC2958p.C2959a next = it.next();
            if (next.f10655a.equals(bVar)) {
                next.m28385a();
                this.f11814h.remove(next);
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: b */
    public void mo27463b(boolean z) {
        C2866g0 a = m27469a(z, z, z, 1);
        this.f11821o++;
        this.f11812f.m27348h(z);
        m27481a(a, false, 4, 1, false);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: b0 */
    public boolean mo27462b0() {
        return this.f11820n;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: c */
    public long mo27461c() {
        if (!mo27497Q()) {
            return getCurrentPosition();
        }
        C2866g0 g0Var = this.f11826t;
        g0Var.f10426a.m28349a(g0Var.f10427b.f9929a, this.f11815i);
        C2866g0 g0Var2 = this.f11826t;
        return g0Var2.f10429d == -9223372036854775807L ? g0Var2.f10426a.m28352a(mo27467b(), this.f10654a).m28321a() : this.f11815i.m28324d() + C2964r.m28356b(this.f11826t.f10429d);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: c */
    public void mo27458c(boolean z) {
        m27472a(z, 0);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: c0 */
    public long mo27457c0() {
        if (m27451j()) {
            return this.f11829w;
        }
        C2866g0 g0Var = this.f11826t;
        if (g0Var.f10435j.f9932d != g0Var.f10427b.f9932d) {
            return g0Var.f10426a.m28352a(mo27467b(), this.f10654a).m28318c();
        }
        long j = g0Var.f10436k;
        if (this.f11826t.f10435j.m29245a()) {
            C2866g0 g0Var2 = this.f11826t;
            AbstractC2965r0.C2967b a = g0Var2.f10426a.m28349a(g0Var2.f10435j.f9929a, this.f11815i);
            j = a.m28330b(this.f11826t.f10435j.f9930b);
            if (j == Long.MIN_VALUE) {
                j = a.f10681d;
            }
        }
        return m27485a(this.f11826t.f10435j, j);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: d0 */
    public AbstractC2941j0.AbstractC2944c mo27456d0() {
        return null;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: e */
    public AbstractC2965r0 mo27455e() {
        return this.f11826t.f10426a;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: f */
    public C2783g mo27454f() {
        return this.f11826t.f10434i.f10139c;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: g */
    public C2910h0 mo27453g() {
        return this.f11825s;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    public long getCurrentPosition() {
        if (m27451j()) {
            return this.f11829w;
        }
        if (this.f11826t.f10427b.m29245a()) {
            return C2964r.m28356b(this.f11826t.f10438m);
        }
        C2866g0 g0Var = this.f11826t;
        return m27485a(g0Var.f10427b, g0Var.f10438m);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    public long getDuration() {
        if (!mo27497Q()) {
            return m28387d();
        }
        C2866g0 g0Var = this.f11826t;
        AbstractC2737t.C2738a aVar = g0Var.f10427b;
        g0Var.f10426a.m28349a(aVar.f9929a, this.f11815i);
        return C2964r.m28356b(this.f11815i.m28335a(aVar.f9930b, aVar.f9931c));
    }

    /* renamed from: i */
    public int m27452i() {
        if (m27451j()) {
            return this.f11828v;
        }
        C2866g0 g0Var = this.f11826t;
        return g0Var.f10426a.mo28339a(g0Var.f10427b.f9929a);
    }

    /* renamed from: j */
    public final boolean m27451j() {
        return this.f11826t.f10426a.m28344c() || this.f11821o > 0;
    }
}
