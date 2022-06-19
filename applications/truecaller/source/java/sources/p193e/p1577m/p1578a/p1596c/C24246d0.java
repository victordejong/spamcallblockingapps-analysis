package p193e.p1577m.p1578a.p1596c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.ArrayDeque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24848t;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24246d0;
import p193e.p1577m.p1578a.p1596c.C24253e0;
import p193e.p1577m.p1578a.p1596c.C24845s0;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24649h;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24650i;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24695f;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.d0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/d0.class */
public final class C24246d0 extends AbstractC24848t implements AbstractC24196c0 {

    /* renamed from: a */
    public final C24650i f67196a;

    /* renamed from: b */
    public final AbstractC24853u0[] f67197b;

    /* renamed from: c */
    public final AbstractC24649h f67198c;

    /* renamed from: d */
    public final Handler f67199d;

    /* renamed from: e */
    public final C24253e0 f67200e;

    /* renamed from: f */
    public final Handler f67201f;

    /* renamed from: g */
    public final CopyOnWriteArrayList<AbstractC24848t.C24849a> f67202g;

    /* renamed from: h */
    public final AbstractC24861y0.C24863b f67203h;

    /* renamed from: i */
    public final ArrayDeque<Runnable> f67204i;

    /* renamed from: j */
    public AbstractC24531p f67205j;

    /* renamed from: k */
    public boolean f67206k;

    /* renamed from: l */
    public int f67207l;

    /* renamed from: m */
    public int f67208m;

    /* renamed from: n */
    public boolean f67209n;

    /* renamed from: o */
    public int f67210o;

    /* renamed from: p */
    public boolean f67211p;

    /* renamed from: q */
    public boolean f67212q;

    /* renamed from: r */
    public boolean f67213r;

    /* renamed from: s */
    public int f67214s;

    /* renamed from: t */
    public C24652o0 f67215t;

    /* renamed from: u */
    public C24859x0 f67216u;

    /* renamed from: v */
    public C24632n0 f67217v;

    /* renamed from: w */
    public int f67218w;

    /* renamed from: x */
    public int f67219x;

    /* renamed from: y */
    public long f67220y;

    /* renamed from: e.m.a.c.d0$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/d0$a.class */
    public class HandlerC24247a extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC24247a(Looper looper) {
            super(looper);
            C24246d0.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C24246d0 c24246d0 = C24246d0.this;
            Objects.requireNonNull(c24246d0);
            int i = message.what;
            boolean z = false;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException();
                }
                final C24652o0 c24652o0 = (C24652o0) message.obj;
                if (message.arg1 != 0) {
                    z = true;
                }
                if (z) {
                    c24246d0.f67214s--;
                }
                if (c24246d0.f67214s != 0 || c24246d0.f67215t.equals(c24652o0)) {
                    return;
                }
                c24246d0.f67215t = c24652o0;
                c24246d0.m5385c(new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.b
                    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                    /* renamed from: a */
                    public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                        abstractC24762b.mo4645rs(C24652o0.this);
                    }
                });
                return;
            }
            C24632n0 c24632n0 = (C24632n0) message.obj;
            int i2 = message.arg1;
            int i3 = message.arg2;
            boolean z2 = i3 != -1;
            int i4 = c24246d0.f67210o - i2;
            c24246d0.f67210o = i4;
            if (i4 != 0) {
                return;
            }
            C24632n0 m4809a = c24632n0.f68996c == -9223372036854775807L ? c24632n0.m4809a(c24632n0.f68995b, 0L, c24632n0.f68997d, c24632n0.f69005l) : c24632n0;
            if (!c24246d0.f67217v.f68994a.m4362p() && m4809a.f68994a.m4362p()) {
                c24246d0.f67219x = 0;
                c24246d0.f67218w = 0;
                c24246d0.f67220y = 0L;
            }
            int i5 = c24246d0.f67211p ? 0 : 2;
            boolean z3 = c24246d0.f67212q;
            c24246d0.f67211p = false;
            c24246d0.f67212q = false;
            c24246d0.m5380h(m4809a, z2, i3, i5, z3);
        }
    }

    /* renamed from: e.m.a.c.d0$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/d0$b.class */
    public static final class RunnableC24248b implements Runnable {

        /* renamed from: a */
        public final C24632n0 f67222a;

        /* renamed from: b */
        public final CopyOnWriteArrayList<AbstractC24848t.C24849a> f67223b;

        /* renamed from: c */
        public final AbstractC24649h f67224c;

        /* renamed from: d */
        public final boolean f67225d;

        /* renamed from: e */
        public final int f67226e;

        /* renamed from: f */
        public final int f67227f;

        /* renamed from: g */
        public final boolean f67228g;

        /* renamed from: h */
        public final boolean f67229h;

        /* renamed from: i */
        public final boolean f67230i;

        /* renamed from: j */
        public final boolean f67231j;

        /* renamed from: k */
        public final boolean f67232k;

        /* renamed from: l */
        public final boolean f67233l;

        /* renamed from: m */
        public final boolean f67234m;

        /* renamed from: n */
        public final boolean f67235n;

        public RunnableC24248b(C24632n0 c24632n0, C24632n0 c24632n02, CopyOnWriteArrayList<AbstractC24848t.C24849a> copyOnWriteArrayList, AbstractC24649h abstractC24649h, boolean z, int i, int i2, boolean z2, boolean z3, boolean z4) {
            this.f67222a = c24632n0;
            this.f67223b = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.f67224c = abstractC24649h;
            this.f67225d = z;
            this.f67226e = i;
            this.f67227f = i2;
            this.f67228g = z2;
            this.f67234m = z3;
            this.f67235n = z4;
            this.f67229h = c24632n02.f68998e != c24632n0.f68998e;
            C24189b0 c24189b0 = c24632n02.f68999f;
            C24189b0 c24189b02 = c24632n0.f68999f;
            this.f67230i = (c24189b0 == c24189b02 || c24189b02 == null) ? false : true;
            this.f67231j = c24632n02.f68994a != c24632n0.f68994a;
            this.f67232k = c24632n02.f69000g != c24632n0.f69000g;
            this.f67233l = c24632n02.f69002i != c24632n0.f69002i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f67231j || this.f67227f == 0) {
                C24246d0.m5386b(this.f67223b, new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.f
                    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                    /* renamed from: a */
                    public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                        C24246d0.RunnableC24248b runnableC24248b = C24246d0.RunnableC24248b.this;
                        abstractC24762b.mo4653N7(runnableC24248b.f67222a.f68994a, runnableC24248b.f67227f);
                    }
                });
            }
            if (this.f67225d) {
                C24246d0.m5386b(this.f67223b, new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.h
                    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                    /* renamed from: a */
                    public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                        abstractC24762b.mo4647h5(C24246d0.RunnableC24248b.this.f67226e);
                    }
                });
            }
            if (this.f67230i) {
                C24246d0.m5386b(this.f67223b, new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.e
                    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                    /* renamed from: a */
                    public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                        abstractC24762b.mo4644tf(C24246d0.RunnableC24248b.this.f67222a.f68999f);
                    }
                });
            }
            if (this.f67233l) {
                this.f67224c.mo4792a(this.f67222a.f69002i.f69033d);
                C24246d0.m5386b(this.f67223b, new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.i
                    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                    /* renamed from: a */
                    public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                        C24632n0 c24632n0 = C24246d0.RunnableC24248b.this.f67222a;
                        abstractC24762b.mo4648fs(c24632n0.f69001h, c24632n0.f69002i.f69032c);
                    }
                });
            }
            if (this.f67232k) {
                C24246d0.m5386b(this.f67223b, new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.g
                    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                    /* renamed from: a */
                    public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                        abstractC24762b.mo4643w1(C24246d0.RunnableC24248b.this.f67222a.f69000g);
                    }
                });
            }
            if (this.f67229h) {
                C24246d0.m5386b(this.f67223b, new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.k
                    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                    /* renamed from: a */
                    public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                        C24246d0.RunnableC24248b runnableC24248b = C24246d0.RunnableC24248b.this;
                        abstractC24762b.mo4654G5(runnableC24248b.f67234m, runnableC24248b.f67222a.f68998e);
                    }
                });
            }
            if (this.f67235n) {
                C24246d0.m5386b(this.f67223b, new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.j
                    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                    /* renamed from: a */
                    public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                        abstractC24762b.mo4650Xl(C24246d0.RunnableC24248b.this.f67222a.f68998e == 3);
                    }
                });
            }
            if (this.f67228g) {
                C24246d0.m5386b(this.f67223b, C24759q.f69413a);
            }
        }
    }

    public C24246d0(AbstractC24853u0[] abstractC24853u0Arr, AbstractC24649h abstractC24649h, AbstractC24460i0 abstractC24460i0, AbstractC24695f abstractC24695f, AbstractC24776f abstractC24776f, Looper looper) {
        Integer.toHexString(System.identityHashCode(this));
        String str = C24773d0.f69431e;
        C26232y.m2286x(abstractC24853u0Arr.length > 0);
        this.f67197b = abstractC24853u0Arr;
        Objects.requireNonNull(abstractC24649h);
        this.f67198c = abstractC24649h;
        this.f67206k = false;
        this.f67208m = 0;
        this.f67209n = false;
        this.f67202g = new CopyOnWriteArrayList<>();
        C24650i c24650i = new C24650i(new C24855v0[abstractC24853u0Arr.length], new AbstractC24645f[abstractC24853u0Arr.length], null);
        this.f67196a = c24650i;
        this.f67203h = new AbstractC24861y0.C24863b();
        this.f67215t = C24652o0.f69035e;
        this.f67216u = C24859x0.f69709d;
        this.f67207l = 0;
        HandlerC24247a handlerC24247a = new HandlerC24247a(looper);
        this.f67199d = handlerC24247a;
        this.f67217v = C24632n0.m4806d(0L, c24650i);
        this.f67204i = new ArrayDeque<>();
        C24253e0 c24253e0 = new C24253e0(abstractC24853u0Arr, abstractC24649h, c24650i, abstractC24460i0, abstractC24695f, this.f67206k, this.f67208m, this.f67209n, handlerC24247a, abstractC24776f);
        this.f67200e = c24253e0;
        this.f67201f = new Handler(c24253e0.f67252h.getLooper());
    }

    /* renamed from: b */
    public static void m5386b(CopyOnWriteArrayList<AbstractC24848t.C24849a> copyOnWriteArrayList, AbstractC24848t.AbstractC24850b abstractC24850b) {
        Iterator<AbstractC24848t.C24849a> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            AbstractC24848t.C24849a next = it.next();
            if (!next.f69689b) {
                abstractC24850b.mo4417a(next.f69688a);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* renamed from: a */
    public final C24632n0 m5387a(boolean z, boolean z2, boolean z3, int i) {
        char c = 0;
        boolean z4 = false;
        if (z) {
            this.f67218w = 0;
            this.f67219x = 0;
            this.f67220y = 0L;
        } else {
            this.f67218w = getCurrentWindowIndex();
            this.f67219x = getCurrentPeriodIndex();
            this.f67220y = getCurrentPosition();
        }
        if (z || z2) {
            z4 = true;
        }
        AbstractC24531p.C24532a m4805e = z4 ? this.f67217v.m4805e(this.f67209n, this.window, this.f67203h) : this.f67217v.f68995b;
        if (!z4) {
            c = this.f67217v.f69006m;
        }
        return new C24632n0(z2 ? AbstractC24861y0.f69725a : this.f67217v.f68994a, m4805e, c, z4 ? (char) 1 : this.f67217v.f68997d, i, z3 ? null : this.f67217v.f68999f, false, z2 ? TrackGroupArray.f5002d : this.f67217v.f69001h, z2 ? this.f67196a : this.f67217v.f69002i, m4805e, c, 0L, c);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void addListener(AbstractC24760q0.AbstractC24762b abstractC24762b) {
        this.f67202g.addIfAbsent(new AbstractC24848t.C24849a(abstractC24762b));
    }

    /* renamed from: c */
    public final void m5385c(final AbstractC24848t.AbstractC24850b abstractC24850b) {
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.f67202g);
        m5384d(new Runnable() { // from class: e.m.a.c.m
            @Override // java.lang.Runnable
            public final void run() {
                C24246d0.m5386b(copyOnWriteArrayList, abstractC24850b);
            }
        });
    }

    public C24845s0 createMessage(C24845s0.AbstractC24847b abstractC24847b) {
        return new C24845s0(this.f67200e, abstractC24847b, this.f67217v.f68994a, getCurrentWindowIndex(), this.f67201f);
    }

    /* renamed from: d */
    public final void m5384d(Runnable runnable) {
        boolean isEmpty = this.f67204i.isEmpty();
        this.f67204i.addLast(runnable);
        if (!isEmpty) {
            return;
        }
        while (!this.f67204i.isEmpty()) {
            this.f67204i.peekFirst().run();
            this.f67204i.removeFirst();
        }
    }

    /* renamed from: e */
    public final long m5383e(AbstractC24531p.C24532a c24532a, long j) {
        long m4382b = C24854v.m4382b(j);
        this.f67217v.f68994a.m4366h(c24532a.f68507a, this.f67203h);
        return m4382b + C24854v.m4382b(this.f67203h.f69729d);
    }

    /* renamed from: f */
    public void m5382f(final boolean z, final int i) {
        boolean isPlaying = isPlaying();
        int i2 = (!this.f67206k || this.f67207l != 0) ? 0 : 1;
        int i3 = (!z || i != 0) ? 0 : 1;
        if (i2 != i3) {
            this.f67200e.f67251g.m4642a(1, i3, 0).sendToTarget();
        }
        boolean z2 = this.f67206k != z;
        boolean z3 = this.f67207l != i;
        this.f67206k = z;
        this.f67207l = i;
        final boolean isPlaying2 = isPlaying();
        boolean z4 = isPlaying != isPlaying2;
        if (z2 || z3 || z4) {
            final boolean z5 = z2;
            final int i4 = this.f67217v.f68998e;
            final boolean z6 = z3;
            final boolean z7 = z4;
            m5385c(new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.d
                @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                /* renamed from: a */
                public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                    boolean z8 = z5;
                    boolean z9 = z;
                    int i5 = i4;
                    boolean z10 = z6;
                    int i6 = i;
                    boolean z11 = z7;
                    boolean z12 = isPlaying2;
                    if (z8) {
                        abstractC24762b.mo4654G5(z9, i5);
                    }
                    if (z10) {
                        abstractC24762b.mo4649Zl(i6);
                    }
                    if (z11) {
                        abstractC24762b.mo4650Xl(z12);
                    }
                }
            });
        }
    }

    /* renamed from: g */
    public final boolean m5381g() {
        return this.f67217v.f68994a.m4362p() || this.f67210o > 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public Looper getApplicationLooper() {
        return this.f67199d.getLooper();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getBufferedPosition() {
        if (isPlayingAd()) {
            C24632n0 c24632n0 = this.f67217v;
            return c24632n0.f69003j.equals(c24632n0.f68995b) ? C24854v.m4382b(this.f67217v.f69004k) : getDuration();
        }
        return getContentBufferedPosition();
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getContentBufferedPosition() {
        if (m5381g()) {
            return this.f67220y;
        }
        C24632n0 c24632n0 = this.f67217v;
        if (c24632n0.f69003j.f68510d != c24632n0.f68995b.f68510d) {
            return c24632n0.f68994a.m4363m(getCurrentWindowIndex(), this.window).m4349a();
        }
        char c = c24632n0.f69004k;
        if (this.f67217v.f69003j.m4974a()) {
            C24632n0 c24632n02 = this.f67217v;
            AbstractC24861y0.C24863b m4366h = c24632n02.f68994a.m4366h(c24632n02.f69003j.f68507a, this.f67203h);
            c = m4366h.m4352d(this.f67217v.f69003j.f68508b);
            if (c == Long.MIN_VALUE) {
                c = m4366h.f69728c;
            }
        }
        return m5383e(this.f67217v.f69003j, c);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getContentPosition() {
        if (isPlayingAd()) {
            C24632n0 c24632n0 = this.f67217v;
            c24632n0.f68994a.m4366h(c24632n0.f68995b.f68507a, this.f67203h);
            C24632n0 c24632n02 = this.f67217v;
            return c24632n02.f68997d == -9223372036854775807L ? C24854v.m4382b(c24632n02.f68994a.m4363m(getCurrentWindowIndex(), this.window).f69740i) : C24854v.m4382b(this.f67203h.f69729d) + C24854v.m4382b(this.f67217v.f68997d);
        }
        return getCurrentPosition();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getCurrentAdGroupIndex() {
        return isPlayingAd() ? this.f67217v.f68995b.f68508b : -1;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getCurrentAdIndexInAdGroup() {
        return isPlayingAd() ? this.f67217v.f68995b.f68509c : -1;
    }

    public int getCurrentPeriodIndex() {
        if (m5381g()) {
            return this.f67219x;
        }
        C24632n0 c24632n0 = this.f67217v;
        return c24632n0.f68994a.mo4361b(c24632n0.f68995b.f68507a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getCurrentPosition() {
        if (m5381g()) {
            return this.f67220y;
        }
        if (this.f67217v.f68995b.m4974a()) {
            return C24854v.m4382b(this.f67217v.f69006m);
        }
        C24632n0 c24632n0 = this.f67217v;
        return m5383e(c24632n0.f68995b, c24632n0.f69006m);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public AbstractC24861y0 getCurrentTimeline() {
        return this.f67217v.f68994a;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public TrackGroupArray getCurrentTrackGroups() {
        return this.f67217v.f69001h;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public C24648g getCurrentTrackSelections() {
        return this.f67217v.f69002i.f69032c;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getCurrentWindowIndex() {
        if (m5381g()) {
            return this.f67218w;
        }
        C24632n0 c24632n0 = this.f67217v;
        return c24632n0.f68994a.m4366h(c24632n0.f68995b.f68507a, this.f67203h).f69727b;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getDuration() {
        if (isPlayingAd()) {
            C24632n0 c24632n0 = this.f67217v;
            AbstractC24531p.C24532a c24532a = c24632n0.f68995b;
            c24632n0.f68994a.m4366h(c24532a.f68507a, this.f67203h);
            return C24854v.m4382b(this.f67203h.m4355a(c24532a.f68508b, c24532a.f68509c));
        }
        return getContentDuration();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public boolean getPlayWhenReady() {
        return this.f67206k;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public C24189b0 getPlaybackError() {
        return this.f67217v.f68999f;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public C24652o0 getPlaybackParameters() {
        return this.f67215t;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getPlaybackState() {
        return this.f67217v.f68998e;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getPlaybackSuppressionReason() {
        return this.f67207l;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getRendererType(int i) {
        return this.f67197b[i].mo4387p();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getRepeatMode() {
        return this.f67208m;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public boolean getShuffleModeEnabled() {
        return this.f67209n;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public AbstractC24760q0.AbstractC24764d getTextComponent() {
        return null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getTotalBufferedDuration() {
        return C24854v.m4382b(this.f67217v.f69005l);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public AbstractC24760q0.AbstractC24765e getVideoComponent() {
        return null;
    }

    /* renamed from: h */
    public final void m5380h(C24632n0 c24632n0, boolean z, int i, int i2, boolean z2) {
        boolean isPlaying = isPlaying();
        C24632n0 c24632n02 = this.f67217v;
        this.f67217v = c24632n0;
        m5384d(new RunnableC24248b(c24632n0, c24632n02, this.f67202g, this.f67198c, z, i, i2, z2, this.f67206k, isPlaying != isPlaying()));
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public boolean isPlayingAd() {
        return !m5381g() && this.f67217v.f68995b.m4974a();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24196c0
    public void prepare(AbstractC24531p abstractC24531p) {
        prepare(abstractC24531p, true, true);
    }

    public void prepare(AbstractC24531p abstractC24531p, boolean z, boolean z2) {
        this.f67205j = abstractC24531p;
        C24632n0 m5387a = m5387a(z, z2, true, 2);
        this.f67211p = true;
        this.f67210o++;
        this.f67200e.f67251g.m4641b(0, z ? 1 : 0, z2 ? 1 : 0, abstractC24531p).sendToTarget();
        m5380h(m5387a, false, 4, 1, false);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void release() {
        Integer.toHexString(System.identityHashCode(this));
        String str = C24773d0.f69431e;
        HashSet<String> hashSet = C24270f0.f67321a;
        synchronized (C24270f0.class) {
            try {
                String str2 = C24270f0.f67322b;
            } catch (Throwable th) {
                throw th;
            }
        }
        C24253e0 c24253e0 = this.f67200e;
        synchronized (c24253e0) {
            if (!c24253e0.f67267w && c24253e0.f67252h.isAlive()) {
                c24253e0.f67251g.m4639d(7);
                boolean z = false;
                while (!c24253e0.f67267w) {
                    try {
                        c24253e0.wait();
                    } catch (InterruptedException e) {
                        z = true;
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        this.f67199d.removeCallbacksAndMessages(null);
        this.f67217v = m5387a(false, false, false, 1);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void removeListener(AbstractC24760q0.AbstractC24762b abstractC24762b) {
        Iterator<AbstractC24848t.C24849a> it = this.f67202g.iterator();
        while (it.hasNext()) {
            AbstractC24848t.C24849a next = it.next();
            if (next.f69688a.equals(abstractC24762b)) {
                next.f69689b = true;
                this.f67202g.remove(next);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void seekTo(int i, long j) {
        AbstractC24861y0 abstractC24861y0 = this.f67217v.f68994a;
        if (i < 0 || (!abstractC24861y0.m4362p() && i >= abstractC24861y0.mo4356o())) {
            throw new C24441h0(abstractC24861y0, i, j);
        }
        this.f67212q = true;
        this.f67210o++;
        if (isPlayingAd()) {
            this.f67199d.obtainMessage(0, 1, -1, this.f67217v).sendToTarget();
            return;
        }
        this.f67218w = i;
        char c = 0;
        if (abstractC24861y0.m4362p()) {
            if (j != -9223372036854775807L) {
                c = j;
            }
            this.f67220y = c;
            this.f67219x = 0;
        } else {
            char m4383a = j == -9223372036854775807L ? abstractC24861y0.mo4357n(i, this.window, 0L).f69740i : C24854v.m4383a(j);
            Pair<Object, Long> m4365j = abstractC24861y0.m4365j(this.window, this.f67203h, i, m4383a);
            this.f67220y = C24854v.m4382b(m4383a);
            this.f67219x = abstractC24861y0.mo4361b(m4365j.first);
        }
        this.f67200e.f67251g.m4640c(3, new C24253e0.C24258e(abstractC24861y0, i, C24854v.m4383a(j))).sendToTarget();
        m5385c(C24195c.f66962a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void setPlayWhenReady(boolean z) {
        m5382f(z, 0);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void setRepeatMode(final int i) {
        if (this.f67208m != i) {
            this.f67208m = i;
            this.f67200e.f67251g.m4642a(12, i, 0).sendToTarget();
            m5385c(new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.o
                @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                /* renamed from: a */
                public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                    abstractC24762b.mo4646hy(i);
                }
            });
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void setShuffleModeEnabled(final boolean z) {
        if (this.f67209n != z) {
            this.f67209n = z;
            this.f67200e.f67251g.m4642a(13, z ? 1 : 0, 0).sendToTarget();
            m5385c(new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.l
                @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
                /* renamed from: a */
                public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                    abstractC24762b.mo4651S8(z);
                }
            });
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void stop(boolean z) {
        C24632n0 m5387a = m5387a(z, z, z, 1);
        this.f67210o++;
        this.f67200e.f67251g.m4642a(6, z ? 1 : 0, 0).sendToTarget();
        m5380h(m5387a, false, 4, 1, false);
    }
}
