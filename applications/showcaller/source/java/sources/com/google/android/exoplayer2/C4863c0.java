package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.google.android.exoplayer2.AbstractC5162o0;
import com.google.android.exoplayer2.AbstractC5312t;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.C4863c0;
import com.google.android.exoplayer2.C5179p0;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.trackselection.AbstractC5412h;
import com.google.android.exoplayer2.trackselection.C5411g;
import com.google.android.exoplayer2.trackselection.C5414i;
import com.google.android.exoplayer2.upstream.AbstractC5473f;
import com.google.android.exoplayer2.util.AbstractC5510f;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c0.class */
public final class C4863c0 extends AbstractC5312t implements AbstractC5162o0 {

    /* renamed from: b */
    final C5414i f14794b;

    /* renamed from: c */
    private final AbstractC5187r0[] f14795c;

    /* renamed from: d */
    private final AbstractC5412h f14796d;

    /* renamed from: e */
    private final Handler f14797e;

    /* renamed from: f */
    private final C5013d0 f14798f;

    /* renamed from: g */
    private final Handler f14799g;

    /* renamed from: h */
    private final CopyOnWriteArrayList<AbstractC5312t.C5313a> f14800h;

    /* renamed from: i */
    private final AbstractC5585y0.C5587b f14801i;

    /* renamed from: j */
    private final ArrayDeque<Runnable> f14802j;

    /* renamed from: k */
    private AbstractC5294v f14803k;

    /* renamed from: l */
    private boolean f14804l;

    /* renamed from: m */
    private int f14805m;

    /* renamed from: n */
    private int f14806n;

    /* renamed from: o */
    private boolean f14807o;

    /* renamed from: p */
    private int f14808p;

    /* renamed from: q */
    private boolean f14809q;

    /* renamed from: r */
    private boolean f14810r;

    /* renamed from: s */
    private int f14811s;

    /* renamed from: t */
    private C5102l0 f14812t;

    /* renamed from: u */
    private C5579w0 f14813u;

    /* renamed from: v */
    private C5100k0 f14814v;

    /* renamed from: w */
    private int f14815w;

    /* renamed from: x */
    private int f14816x;

    /* renamed from: y */
    private long f14817y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.c0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c0$a.class */
    public class HandlerC4864a extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        HandlerC4864a(Looper looper) {
            super(looper);
            C4863c0.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C4863c0.this.m21405c0(message);
        }
    }

    /* renamed from: com.google.android.exoplayer2.c0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c0$b.class */
    public static final class RunnableC4865b implements Runnable {

        /* renamed from: d */
        private final C5100k0 f14819d;

        /* renamed from: e */
        private final CopyOnWriteArrayList<AbstractC5312t.C5313a> f14820e;

        /* renamed from: f */
        private final AbstractC5412h f14821f;

        /* renamed from: g */
        private final boolean f14822g;

        /* renamed from: h */
        private final int f14823h;

        /* renamed from: i */
        private final int f14824i;

        /* renamed from: j */
        private final boolean f14825j;

        /* renamed from: k */
        private final boolean f14826k;

        /* renamed from: l */
        private final boolean f14827l;

        /* renamed from: m */
        private final boolean f14828m;

        /* renamed from: n */
        private final boolean f14829n;

        /* renamed from: o */
        private final boolean f14830o;

        /* renamed from: p */
        private final boolean f14831p;

        /* renamed from: q */
        private final boolean f14832q;

        public RunnableC4865b(C5100k0 c5100k0, C5100k0 c5100k02, CopyOnWriteArrayList<AbstractC5312t.C5313a> copyOnWriteArrayList, AbstractC5412h abstractC5412h, boolean z, int i, int i2, boolean z2, boolean z3, boolean z4) {
            this.f14819d = c5100k0;
            this.f14820e = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.f14821f = abstractC5412h;
            this.f14822g = z;
            this.f14823h = i;
            this.f14824i = i2;
            this.f14825j = z2;
            this.f14831p = z3;
            this.f14832q = z4;
            this.f14826k = c5100k02.f15974f != c5100k0.f15974f;
            ExoPlaybackException exoPlaybackException = c5100k02.f15975g;
            ExoPlaybackException exoPlaybackException2 = c5100k0.f15975g;
            this.f14827l = (exoPlaybackException == exoPlaybackException2 || exoPlaybackException2 == null) ? false : true;
            this.f14828m = c5100k02.f15970b != c5100k0.f15970b;
            this.f14829n = c5100k02.f15976h != c5100k0.f15976h;
            this.f14830o = c5100k02.f15978j != c5100k0.f15978j;
        }

        /* renamed from: a */
        public /* synthetic */ void m21384b(AbstractC5162o0.AbstractC5163a abstractC5163a) {
            abstractC5163a.onTimelineChanged(this.f14819d.f15970b, this.f14824i);
        }

        /* renamed from: c */
        public /* synthetic */ void m21382d(AbstractC5162o0.AbstractC5163a abstractC5163a) {
            abstractC5163a.onPositionDiscontinuity(this.f14823h);
        }

        /* renamed from: e */
        public /* synthetic */ void m21380f(AbstractC5162o0.AbstractC5163a abstractC5163a) {
            abstractC5163a.onPlayerError(this.f14819d.f15975g);
        }

        /* renamed from: g */
        public /* synthetic */ void m21378h(AbstractC5162o0.AbstractC5163a abstractC5163a) {
            C5100k0 c5100k0 = this.f14819d;
            abstractC5163a.onTracksChanged(c5100k0.f15977i, c5100k0.f15978j.f17391c);
        }

        /* renamed from: i */
        public /* synthetic */ void m21376j(AbstractC5162o0.AbstractC5163a abstractC5163a) {
            abstractC5163a.onLoadingChanged(this.f14819d.f15976h);
        }

        /* renamed from: k */
        public /* synthetic */ void m21374l(AbstractC5162o0.AbstractC5163a abstractC5163a) {
            abstractC5163a.onPlayerStateChanged(this.f14831p, this.f14819d.f15974f);
        }

        /* renamed from: m */
        public /* synthetic */ void m21372n(AbstractC5162o0.AbstractC5163a abstractC5163a) {
            abstractC5163a.onIsPlayingChanged(this.f14819d.f15974f == 3);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f14828m || this.f14824i == 0) {
                C4863c0.m21402f0(this.f14820e, new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.f
                    @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                    /* renamed from: a */
                    public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                        C4863c0.RunnableC4865b.this.m21384b(abstractC5163a);
                    }
                });
            }
            if (this.f14822g) {
                C4863c0.m21402f0(this.f14820e, new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.h
                    @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                    /* renamed from: a */
                    public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                        C4863c0.RunnableC4865b.this.m21382d(abstractC5163a);
                    }
                });
            }
            if (this.f14827l) {
                C4863c0.m21402f0(this.f14820e, new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.e
                    @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                    /* renamed from: a */
                    public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                        C4863c0.RunnableC4865b.this.m21380f(abstractC5163a);
                    }
                });
            }
            if (this.f14830o) {
                this.f14821f.mo19275c(this.f14819d.f15978j.f17392d);
                C4863c0.m21402f0(this.f14820e, new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.i
                    @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                    /* renamed from: a */
                    public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                        C4863c0.RunnableC4865b.this.m21378h(abstractC5163a);
                    }
                });
            }
            if (this.f14829n) {
                C4863c0.m21402f0(this.f14820e, new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.g
                    @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                    /* renamed from: a */
                    public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                        C4863c0.RunnableC4865b.this.m21376j(abstractC5163a);
                    }
                });
            }
            if (this.f14826k) {
                C4863c0.m21402f0(this.f14820e, new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.k
                    @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                    /* renamed from: a */
                    public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                        C4863c0.RunnableC4865b.this.m21374l(abstractC5163a);
                    }
                });
            }
            if (this.f14832q) {
                C4863c0.m21402f0(this.f14820e, new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.j
                    @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                    /* renamed from: a */
                    public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                        C4863c0.RunnableC4865b.this.m21372n(abstractC5163a);
                    }
                });
            }
            if (this.f14825j) {
                C4863c0.m21402f0(this.f14820e, C5182q.f16273a);
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    public C4863c0(AbstractC5187r0[] abstractC5187r0Arr, AbstractC5412h abstractC5412h, AbstractC5092g0 abstractC5092g0, AbstractC5473f abstractC5473f, AbstractC5510f abstractC5510f, Looper looper) {
        C5526o.m18743e("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.11.3] [" + C5515h0.f17880e + "]");
        C5508e.m18910f(abstractC5187r0Arr.length > 0);
        this.f14795c = (AbstractC5187r0[]) C5508e.m18911e(abstractC5187r0Arr);
        this.f14796d = (AbstractC5412h) C5508e.m18911e(abstractC5412h);
        this.f14804l = false;
        this.f14806n = 0;
        this.f14807o = false;
        this.f14800h = new CopyOnWriteArrayList<>();
        C5414i c5414i = new C5414i(new C5416u0[abstractC5187r0Arr.length], new AbstractC5408f[abstractC5187r0Arr.length], null);
        this.f14794b = c5414i;
        this.f14801i = new AbstractC5585y0.C5587b();
        this.f14812t = C5102l0.f15984a;
        this.f14813u = C5579w0.f18118e;
        this.f14805m = 0;
        HandlerC4864a handlerC4864a = new HandlerC4864a(looper);
        this.f14797e = handlerC4864a;
        this.f14814v = C5100k0.m20517h(0L, c5414i);
        this.f14802j = new ArrayDeque<>();
        C5013d0 c5013d0 = new C5013d0(abstractC5187r0Arr, abstractC5412h, c5414i, abstractC5092g0, abstractC5473f, this.f14804l, this.f14806n, this.f14807o, handlerC4864a, abstractC5510f);
        this.f14798f = c5013d0;
        this.f14799g = new Handler(c5013d0.m20859r());
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* renamed from: b0 */
    private C5100k0 m21406b0(boolean z, boolean z2, boolean z3, int i) {
        char c = 0;
        boolean z4 = false;
        if (z) {
            this.f14815w = 0;
            this.f14816x = 0;
            this.f14817y = 0L;
        } else {
            this.f14815w = mo18410u();
            this.f14816x = m21407a0();
            this.f14817y = getCurrentPosition();
        }
        if (z || z2) {
            z4 = true;
        }
        AbstractC5294v.C5295a m20516i = z4 ? this.f14814v.m20516i(this.f14807o, this.f16893a, this.f14801i) : this.f14814v.f15971c;
        if (!z4) {
            c = this.f14814v.f15982n;
        }
        return new C5100k0(z2 ? AbstractC5585y0.f18173a : this.f14814v.f15970b, m20516i, c, z4 ? (char) 1 : this.f14814v.f15973e, i, z3 ? null : this.f14814v.f15975g, false, z2 ? TrackGroupArray.f16307d : this.f14814v.f15977i, z2 ? this.f14794b : this.f14814v.f15978j, m20516i, c, 0L, c);
    }

    /* renamed from: d0 */
    private void m21404d0(C5100k0 c5100k0, int i, boolean z, int i2) {
        int i3 = this.f14808p - i;
        this.f14808p = i3;
        if (i3 == 0) {
            C5100k0 c5100k02 = c5100k0;
            if (c5100k0.f15972d == -9223372036854775807L) {
                c5100k02 = c5100k0.m20522c(c5100k0.f15971c, 0L, c5100k0.f15973e, c5100k0.f15981m);
            }
            if (!this.f14814v.f15970b.m18358q() && c5100k02.f15970b.m18358q()) {
                this.f14816x = 0;
                this.f14815w = 0;
                this.f14817y = 0L;
            }
            int i4 = this.f14809q ? 0 : 2;
            boolean z2 = this.f14810r;
            this.f14809q = false;
            this.f14810r = false;
            m21386v0(c5100k02, z, i2, i4, z2);
        }
    }

    /* renamed from: e0 */
    private void m21403e0(final C5102l0 c5102l0, boolean z) {
        if (z) {
            this.f14811s--;
        }
        if (this.f14811s != 0 || this.f14812t.equals(c5102l0)) {
            return;
        }
        this.f14812t = c5102l0;
        m21394n0(new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.b
            @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
            /* renamed from: a */
            public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                abstractC5163a.onPlaybackParametersChanged(C5102l0.this);
            }
        });
    }

    /* renamed from: f0 */
    public static void m21402f0(CopyOnWriteArrayList<AbstractC5312t.C5313a> copyOnWriteArrayList, AbstractC5312t.AbstractC5314b abstractC5314b) {
        Iterator<AbstractC5312t.C5313a> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            it.next().m19695a(abstractC5314b);
        }
    }

    /* renamed from: j0 */
    public static /* synthetic */ void m21398j0(boolean z, boolean z2, int i, boolean z3, int i2, boolean z4, boolean z5, AbstractC5162o0.AbstractC5163a abstractC5163a) {
        if (z) {
            abstractC5163a.onPlayerStateChanged(z2, i);
        }
        if (z3) {
            abstractC5163a.onPlaybackSuppressionReasonChanged(i2);
        }
        if (z4) {
            abstractC5163a.onIsPlayingChanged(z5);
        }
    }

    /* renamed from: n0 */
    private void m21394n0(final AbstractC5312t.AbstractC5314b abstractC5314b) {
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.f14800h);
        m21393o0(new Runnable() { // from class: com.google.android.exoplayer2.m
            @Override // java.lang.Runnable
            public final void run() {
                C4863c0.m21402f0(copyOnWriteArrayList, abstractC5314b);
            }
        });
    }

    /* renamed from: o0 */
    private void m21393o0(Runnable runnable) {
        boolean isEmpty = this.f14802j.isEmpty();
        this.f14802j.addLast(runnable);
        if (!isEmpty) {
            return;
        }
        while (!this.f14802j.isEmpty()) {
            this.f14802j.peekFirst().run();
            this.f14802j.removeFirst();
        }
    }

    /* renamed from: p0 */
    private long m21392p0(AbstractC5294v.C5295a c5295a, long j) {
        long m18629b = C5543v.m18629b(j);
        this.f14814v.f15970b.m18363h(c5295a.f16780a, this.f14801i);
        return m18629b + this.f14801i.m18340k();
    }

    /* renamed from: u0 */
    private boolean m21387u0() {
        return this.f14814v.f15970b.m18358q() || this.f14808p > 0;
    }

    /* renamed from: v0 */
    private void m21386v0(C5100k0 c5100k0, boolean z, int i, int i2, boolean z2) {
        boolean isPlaying = isPlaying();
        C5100k0 c5100k02 = this.f14814v;
        this.f14814v = c5100k0;
        m21393o0(new RunnableC4865b(c5100k0, c5100k02, this.f14800h, this.f14796d, z, i, i2, z2, this.f14804l, isPlaying != isPlaying()));
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: A */
    public long mo18481A() {
        if (mo18441e()) {
            C5100k0 c5100k0 = this.f14814v;
            return c5100k0.f15979k.equals(c5100k0.f15971c) ? C5543v.m18629b(this.f14814v.f15980l) : getDuration();
        }
        return mo18457O();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: B */
    public int mo18479B() {
        return this.f14814v.f15974f;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: D */
    public int mo18475D() {
        return mo18441e() ? this.f14814v.f15971c.f16781b : -1;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: E */
    public void mo18473E(final int i) {
        if (this.f14806n != i) {
            this.f14806n = i;
            this.f14798f.m20862p0(i);
            m21394n0(new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.o
                @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                /* renamed from: a */
                public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                    abstractC5163a.onRepeatModeChanged(i);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: I */
    public int mo18466I() {
        return this.f14805m;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: J */
    public TrackGroupArray mo18464J() {
        return this.f14814v.f15977i;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: K */
    public int mo18462K() {
        return this.f14806n;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: L */
    public AbstractC5585y0 mo18460L() {
        return this.f14814v.f15970b;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: M */
    public Looper mo18459M() {
        return this.f14797e.getLooper();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: N */
    public boolean mo18458N() {
        return this.f14807o;
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: O */
    public long mo18457O() {
        if (m21387u0()) {
            return this.f14817y;
        }
        C5100k0 c5100k0 = this.f14814v;
        if (c5100k0.f15979k.f16783d != c5100k0.f15971c.f16783d) {
            return c5100k0.f15970b.m18359n(mo18410u(), this.f16893a).m18332c();
        }
        char c = c5100k0.f15980l;
        if (this.f14814v.f15979k.m19842a()) {
            C5100k0 c5100k02 = this.f14814v;
            AbstractC5585y0.C5587b m18363h = c5100k02.f15970b.m18363h(c5100k02.f15979k.f16780a, this.f14801i);
            c = m18363h.m18345f(this.f14814v.f15979k.f16781b);
            if (c == Long.MIN_VALUE) {
                c = m18363h.f18177d;
            }
        }
        return m21392p0(this.f14814v.f15979k, c);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: Q */
    public C5411g mo18455Q() {
        return this.f14814v.f15978j.f17391c;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: R */
    public int mo18454R(int i) {
        return this.f14795c[i].mo19258i();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: T */
    public AbstractC5162o0.AbstractC5164b mo18452T() {
        return null;
    }

    /* renamed from: Z */
    public C5179p0 m21408Z(C5179p0.AbstractC5181b abstractC5181b) {
        return new C5179p0(this.f14798f, abstractC5181b, this.f14814v.f15970b, mo18410u(), this.f14799g);
    }

    /* renamed from: a0 */
    public int m21407a0() {
        if (m21387u0()) {
            return this.f14816x;
        }
        C5100k0 c5100k0 = this.f14814v;
        return c5100k0.f15970b.mo18356b(c5100k0.f15971c.f16780a);
    }

    /* renamed from: c0 */
    void m21405c0(Message message) {
        int i = message.what;
        boolean z = false;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException();
            }
            C5102l0 c5102l0 = (C5102l0) message.obj;
            if (message.arg1 != 0) {
                z = true;
            }
            m21403e0(c5102l0, z);
            return;
        }
        C5100k0 c5100k0 = (C5100k0) message.obj;
        int i2 = message.arg1;
        int i3 = message.arg2;
        boolean z2 = false;
        if (i3 != -1) {
            z2 = true;
        }
        m21404d0(c5100k0, i2, z2, i3);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: d */
    public C5102l0 mo18443d() {
        return this.f14812t;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: e */
    public boolean mo18441e() {
        return !m21387u0() && this.f14814v.f15971c.m19842a();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: f */
    public long mo18439f() {
        return C5543v.m18629b(this.f14814v.f15981m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: g */
    public void mo18437g(int i, long j) {
        AbstractC5585y0 abstractC5585y0 = this.f14814v.f15970b;
        if (i < 0 || (!abstractC5585y0.m18358q() && i >= abstractC5585y0.mo18351p())) {
            throw new IllegalSeekPositionException(abstractC5585y0, i, j);
        }
        this.f14810r = true;
        this.f14808p++;
        if (mo18441e()) {
            C5526o.m18742f("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            this.f14797e.obtainMessage(0, 1, -1, this.f14814v).sendToTarget();
            return;
        }
        this.f14815w = i;
        if (abstractC5585y0.m18358q()) {
            this.f14817y = j == -9223372036854775807L ? (char) 0 : j;
            this.f14816x = 0;
        } else {
            char m18333b = j == -9223372036854775807L ? abstractC5585y0.m18359n(i, this.f16893a).m18333b() : C5543v.m18630a(j);
            Pair<Object, Long> m18362j = abstractC5585y0.m18362j(this.f16893a, this.f14801i, i, m18333b);
            this.f14817y = C5543v.m18629b(m18333b);
            this.f14816x = abstractC5585y0.mo18356b(m18362j.first);
        }
        this.f14798f.m20887a0(abstractC5585y0, i, C5543v.m18630a(j));
        m21394n0(C4862c.f14793a);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    public long getCurrentPosition() {
        if (m21387u0()) {
            return this.f14817y;
        }
        if (this.f14814v.f15971c.m19842a()) {
            return C5543v.m18629b(this.f14814v.f15982n);
        }
        C5100k0 c5100k0 = this.f14814v;
        return m21392p0(c5100k0.f15971c, c5100k0.f15982n);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    public long getDuration() {
        if (mo18441e()) {
            C5100k0 c5100k0 = this.f14814v;
            AbstractC5294v.C5295a c5295a = c5100k0.f15971c;
            c5100k0.f15970b.m18363h(c5295a.f16780a, this.f14801i);
            return C5543v.m18629b(this.f14801i.m18349b(c5295a.f16781b, c5295a.f16782c));
        }
        return m19700V();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: h */
    public boolean mo18435h() {
        return this.f14804l;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: j */
    public void mo18431j(final boolean z) {
        if (this.f14807o != z) {
            this.f14807o = z;
            this.f14798f.m20856s0(z);
            m21394n0(new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.l
                @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                /* renamed from: a */
                public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                    abstractC5163a.onShuffleModeEnabledChanged(z);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: k */
    public ExoPlaybackException mo18429k() {
        return this.f14814v.f15975g;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: o */
    public void mo18422o(AbstractC5162o0.AbstractC5163a abstractC5163a) {
        this.f14800h.addIfAbsent(new AbstractC5312t.C5313a(abstractC5163a));
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: q */
    public int mo18418q() {
        return mo18441e() ? this.f14814v.f15971c.f16782c : -1;
    }

    /* renamed from: q0 */
    public void m21391q0(AbstractC5294v abstractC5294v, boolean z, boolean z2) {
        this.f14803k = abstractC5294v;
        C5100k0 m21406b0 = m21406b0(z, z2, true, 2);
        this.f14809q = true;
        this.f14808p++;
        this.f14798f.m20899O(abstractC5294v, z, z2);
        m21386v0(m21406b0, false, 4, 1, false);
    }

    /* renamed from: r0 */
    public void m21390r0() {
        C5526o.m18743e("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.11.3] [" + C5515h0.f17880e + "] [" + C5053e0.m20745b() + "]");
        this.f14803k = null;
        this.f14798f.m20897Q();
        this.f14797e.removeCallbacksAndMessages(null);
        this.f14814v = m21406b0(false, false, false, 1);
    }

    /* renamed from: s0 */
    public void m21389s0(final boolean z, final int i) {
        boolean isPlaying = isPlaying();
        boolean z2 = this.f14804l && this.f14805m == 0;
        boolean z3 = z && i == 0;
        if (z2 != z3) {
            this.f14798f.m20869l0(z3);
        }
        boolean z4 = this.f14804l != z;
        boolean z5 = this.f14805m != i;
        this.f14804l = z;
        this.f14805m = i;
        final boolean isPlaying2 = isPlaying();
        boolean z6 = isPlaying != isPlaying2;
        if (z4 || z5 || z6) {
            final boolean z7 = z4;
            final int i2 = this.f14814v.f15974f;
            final boolean z8 = z5;
            final boolean z9 = z6;
            m21394n0(new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.d
                @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
                /* renamed from: a */
                public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                    C4863c0.m21398j0(z7, z, i2, z8, i, z9, isPlaying2, abstractC5163a);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: t */
    public void mo18412t(AbstractC5162o0.AbstractC5163a abstractC5163a) {
        Iterator<AbstractC5312t.C5313a> it = this.f14800h.iterator();
        while (it.hasNext()) {
            AbstractC5312t.C5313a next = it.next();
            if (next.f16894a.equals(abstractC5163a)) {
                next.m19694b();
                this.f14800h.remove(next);
            }
        }
    }

    /* renamed from: t0 */
    public void m21388t0(C5102l0 c5102l0) {
        C5102l0 c5102l02 = c5102l0;
        if (c5102l0 == null) {
            c5102l02 = C5102l0.f15984a;
        }
        if (this.f14812t.equals(c5102l02)) {
            return;
        }
        this.f14811s++;
        this.f14812t = c5102l02;
        this.f14798f.m20865n0(c5102l02);
        final C5102l0 c5102l03 = c5102l02;
        m21394n0(new AbstractC5312t.AbstractC5314b() { // from class: com.google.android.exoplayer2.n
            @Override // com.google.android.exoplayer2.AbstractC5312t.AbstractC5314b
            /* renamed from: a */
            public final void mo19693a(AbstractC5162o0.AbstractC5163a abstractC5163a) {
                abstractC5163a.onPlaybackParametersChanged(C5102l0.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: u */
    public int mo18410u() {
        if (m21387u0()) {
            return this.f14815w;
        }
        C5100k0 c5100k0 = this.f14814v;
        return c5100k0.f15970b.m18363h(c5100k0.f15971c.f16780a, this.f14801i).f18176c;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: w */
    public void mo18406w(boolean z) {
        m21389s0(z, 0);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: x */
    public AbstractC5162o0.AbstractC5165c mo18404x() {
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: y */
    public long mo18402y() {
        if (mo18441e()) {
            C5100k0 c5100k0 = this.f14814v;
            c5100k0.f15970b.m18363h(c5100k0.f15971c.f16780a, this.f14801i);
            C5100k0 c5100k02 = this.f14814v;
            return c5100k02.f15973e == -9223372036854775807L ? c5100k02.f15970b.m18359n(mo18410u(), this.f16893a).m18334a() : this.f14801i.m18340k() + C5543v.m18629b(this.f14814v.f15973e);
        }
        return getCurrentPosition();
    }
}
