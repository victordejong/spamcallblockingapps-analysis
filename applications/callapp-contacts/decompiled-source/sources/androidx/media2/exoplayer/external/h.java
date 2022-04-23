package androidx.media2.exoplayer.external;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.media2.exoplayer.external.a;
import androidx.media2.exoplayer.external.ae;
import androidx.media2.exoplayer.external.af;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.h;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.trackselection.e;
import androidx.media2.exoplayer.external.trackselection.g;
import androidx.media2.exoplayer.external.u;
import androidx.media2.exoplayer.external.upstream.c;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.b;
import androidx.media2.exoplayer.external.util.i;
import androidx.media2.exoplayer.external.util.j;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/h.class */
public final class h extends androidx.media2.exoplayer.external.a implements g {

    /* renamed from: b  reason: collision with root package name */
    final androidx.media2.exoplayer.external.trackselection.h f3402b;

    /* renamed from: c  reason: collision with root package name */
    final Handler f3403c;

    /* renamed from: d  reason: collision with root package name */
    public final u f3404d;
    boolean e;
    int f;
    int g;
    boolean h;
    boolean i;
    public int j;
    public ad k;
    public aj l;
    ac m;
    int n;
    int o;
    long p;
    private final ag[] q;
    private final g r;
    private final Handler s;
    private final CopyOnWriteArrayList<a.C0074a> t;
    private final al.a u;
    private final ArrayDeque<Runnable> v;
    private t w;
    private boolean x;
    private boolean y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/h$a.class */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ac f3406a;

        /* renamed from: b  reason: collision with root package name */
        final int f3407b;

        /* renamed from: c  reason: collision with root package name */
        final int f3408c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f3409d;
        private final CopyOnWriteArrayList<a.C0074a> e;
        private final g f;
        private final boolean g;
        private final boolean h;
        private final boolean i;
        private final boolean j;
        private final boolean k;
        private final boolean l;
        private final boolean m;

        public a(ac acVar, ac acVar2, CopyOnWriteArrayList<a.C0074a> copyOnWriteArrayList, g gVar, boolean z, int i, int i2, boolean z2, boolean z3) {
            this.f3406a = acVar;
            this.e = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.f = gVar;
            this.g = z;
            this.f3407b = i;
            this.f3408c = i2;
            this.h = z2;
            this.f3409d = z3;
            boolean z4 = true;
            this.i = acVar2.e != acVar.e;
            this.j = (acVar2.f == acVar.f || acVar.f == null) ? false : true;
            this.k = acVar2.f2805a != acVar.f2805a;
            this.l = acVar2.g != acVar.g;
            if (acVar2.i == acVar.i) {
                z4 = false;
            }
            this.m = z4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.k || this.f3408c == 0) {
                h.a(this.e, new a.b(this) { // from class: androidx.media2.exoplayer.external.n

                    /* renamed from: a  reason: collision with root package name */
                    private final h.a f3471a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3471a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.a.b
                    public final void a(ae.b bVar) {
                        h.a aVar = this.f3471a;
                        bVar.a(aVar.f3406a.f2805a, aVar.f3408c);
                    }
                });
            }
            if (this.g) {
                h.a(this.e, new a.b(this) { // from class: androidx.media2.exoplayer.external.o

                    /* renamed from: a  reason: collision with root package name */
                    private final h.a f3472a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3472a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.a.b
                    public final void a(ae.b bVar) {
                        bVar.a(this.f3472a.f3407b);
                    }
                });
            }
            if (this.j) {
                h.a(this.e, new a.b(this) { // from class: androidx.media2.exoplayer.external.p

                    /* renamed from: a  reason: collision with root package name */
                    private final h.a f3475a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3475a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.a.b
                    public final void a(ae.b bVar) {
                        bVar.a(this.f3475a.f3406a.f);
                    }
                });
            }
            if (this.m) {
                this.f.a(this.f3406a.i.f3991d);
                h.a(this.e, new a.b(this) { // from class: androidx.media2.exoplayer.external.q

                    /* renamed from: a  reason: collision with root package name */
                    private final h.a f3476a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3476a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.a.b
                    public final void a(ae.b bVar) {
                        bVar.a(this.f3476a.f3406a.i.f3990c);
                    }
                });
            }
            if (this.l) {
                h.a(this.e, new a.b(this) { // from class: androidx.media2.exoplayer.external.r

                    /* renamed from: a  reason: collision with root package name */
                    private final h.a f3477a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3477a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.a.b
                    public final void a(ae.b bVar) {
                        bVar.a(this.f3477a.f3406a.g);
                    }
                });
            }
            if (this.i) {
                h.a(this.e, new a.b(this) { // from class: androidx.media2.exoplayer.external.s

                    /* renamed from: a  reason: collision with root package name */
                    private final h.a f3478a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3478a = this;
                    }

                    @Override // androidx.media2.exoplayer.external.a.b
                    public final void a(ae.b bVar) {
                        h.a aVar = this.f3478a;
                        bVar.a(aVar.f3409d, aVar.f3406a.e);
                    }
                });
            }
            if (this.h) {
                h.a(this.e, t.f3784a);
            }
        }
    }

    public h(ag[] agVarArr, g gVar, y yVar, c cVar, b bVar, Looper looper) {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = ac.e;
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 30 + String.valueOf(str).length());
        sb.append("Init ");
        sb.append(hexString);
        sb.append(" [ExoPlayerLib/2.10.4] [");
        sb.append(str);
        sb.append("]");
        j.b();
        androidx.media2.exoplayer.external.util.a.b(agVarArr.length > 0);
        this.q = (ag[]) androidx.media2.exoplayer.external.util.a.a(agVarArr);
        this.r = (g) androidx.media2.exoplayer.external.util.a.a(gVar);
        this.e = false;
        this.f = 0;
        this.y = false;
        this.t = new CopyOnWriteArrayList<>();
        androidx.media2.exoplayer.external.trackselection.h hVar = new androidx.media2.exoplayer.external.trackselection.h(new RendererConfiguration[agVarArr.length], new e[agVarArr.length], null);
        this.f3402b = hVar;
        this.u = new al.a();
        this.k = ad.f2809a;
        this.l = aj.e;
        Handler handler = new Handler(looper) { // from class: androidx.media2.exoplayer.external.h.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                h hVar2 = h.this;
                int i = message.what;
                boolean z = true;
                boolean z2 = false;
                if (i == 0) {
                    ac acVar = (ac) message.obj;
                    int i2 = message.arg1;
                    if (message.arg2 == -1) {
                        z = false;
                    }
                    int i3 = message.arg2;
                    hVar2.g -= i2;
                    if (hVar2.g == 0) {
                        ac a2 = acVar.f2807c == -9223372036854775807L ? acVar.a(acVar.f2806b, 0L, acVar.f2808d, acVar.l) : acVar;
                        if (!hVar2.m.f2805a.a() && a2.f2805a.a()) {
                            hVar2.o = 0;
                            hVar2.n = 0;
                            hVar2.p = 0L;
                        }
                        int i4 = hVar2.h ? 0 : 2;
                        boolean z3 = hVar2.i;
                        hVar2.h = false;
                        hVar2.i = false;
                        hVar2.a(a2, z, i3, i4, z3);
                    }
                } else if (i == 1) {
                    final ad adVar = (ad) message.obj;
                    if (message.arg1 != 0) {
                        z2 = true;
                    }
                    if (z2) {
                        hVar2.j--;
                    }
                    if (hVar2.j == 0 && !hVar2.k.equals(adVar)) {
                        hVar2.k = adVar;
                        hVar2.a(new a.b(adVar) { // from class: androidx.media2.exoplayer.external.l

                            /* renamed from: a  reason: collision with root package name */
                            private final ad f3414a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f3414a = adVar;
                            }

                            @Override // androidx.media2.exoplayer.external.a.b
                            public final void a(ae.b bVar2) {
                                bVar2.a();
                            }
                        });
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
        };
        this.f3403c = handler;
        this.m = ac.a(0L, hVar);
        this.v = new ArrayDeque<>();
        u uVar = new u(agVarArr, gVar, hVar, yVar, cVar, this.e, this.f, this.y, handler, bVar);
        this.f3404d = uVar;
        this.s = new Handler(uVar.f3993b.getLooper());
    }

    private long a(t.a aVar, long j) {
        long a2 = c.a(j);
        this.m.f2805a.a(aVar.f3748a, this.u);
        return a2 + c.a(this.u.e);
    }

    private ac a(boolean z, boolean z2, boolean z3, int i) {
        long j = 0;
        boolean z4 = false;
        if (z) {
            this.n = 0;
            this.o = 0;
            this.p = 0L;
        } else {
            this.n = c();
            this.o = l();
            this.p = e();
        }
        if (z || z2) {
            z4 = true;
        }
        t.a a2 = z4 ? this.m.a(this.y, this.f2779a, this.u) : this.m.f2806b;
        if (!z4) {
            j = this.m.m;
        }
        return new ac(z2 ? al.f2829a : this.m.f2805a, a2, j, z4 ? -9223372036854775807L : this.m.f2808d, i, z3 ? null : this.m.f, false, z2 ? TrackGroupArray.EMPTY : this.m.h, z2 ? this.f3402b : this.m.i, a2, j, 0L, j);
    }

    private void a(Runnable runnable) {
        boolean isEmpty = this.v.isEmpty();
        this.v.addLast(runnable);
        if (!(!isEmpty)) {
            while (!this.v.isEmpty()) {
                this.v.peekFirst().run();
                this.v.removeFirst();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CopyOnWriteArrayList<a.C0074a> copyOnWriteArrayList, a.b bVar) {
        Iterator<a.C0074a> it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            a.C0074a next = it2.next();
            if (!next.f2781b) {
                bVar.a(next.f2780a);
            }
        }
    }

    private int l() {
        return n() ? this.o : this.m.f2805a.a(this.m.f2806b.f3748a);
    }

    private boolean m() {
        return !n() && this.m.f2806b.a();
    }

    private boolean n() {
        return this.m.f2805a.a() || this.g > 0;
    }

    public final af a(af.b bVar) {
        return new af(this.f3404d, bVar, this.m.f2805a, c(), this.s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v5 */
    @Override // androidx.media2.exoplayer.external.ae
    public final void a(int i, long j) {
        al alVar = this.m.f2805a;
        if (i < 0 || (!alVar.a() && i >= alVar.b())) {
            throw new IllegalSeekPositionException(alVar, i, j);
        }
        this.i = true;
        this.g++;
        if (m()) {
            j.a("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            this.f3403c.obtainMessage(0, 1, -1, this.m).sendToTarget();
            return;
        }
        this.n = i;
        long j2 = 0;
        if (alVar.a()) {
            if (j != -9223372036854775807L) {
                j2 = j;
            }
            this.p = j2;
            this.o = 0;
        } else {
            long b2 = j == -9223372036854775807L ? alVar.a(i, this.f2779a, 0L).i : c.b(j);
            Pair<Object, Long> a2 = alVar.a(this.f2779a, this.u, i, b2);
            this.p = c.a(b2);
            this.o = alVar.a(a2.first);
        }
        this.f3404d.f3992a.a(3, new u.d(alVar, i, c.b(j))).sendToTarget();
        a(j.f3412a);
    }

    public final void a(final a.b bVar) {
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.t);
        a(new Runnable(copyOnWriteArrayList, bVar) { // from class: androidx.media2.exoplayer.external.m

            /* renamed from: a  reason: collision with root package name */
            private final CopyOnWriteArrayList f3415a;

            /* renamed from: b  reason: collision with root package name */
            private final a.b f3416b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3415a = copyOnWriteArrayList;
                this.f3416b = bVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                h.a(this.f3415a, this.f3416b);
            }
        });
    }

    final void a(ac acVar, boolean z, int i, int i2, boolean z2) {
        ac acVar2 = this.m;
        this.m = acVar;
        a(new a(acVar, acVar2, this.t, this.r, z, i, i2, z2, this.e));
    }

    public final void a(ae.b bVar) {
        this.t.addIfAbsent(new a.C0074a(bVar));
    }

    public final void a(t tVar, boolean z, boolean z2) {
        this.w = tVar;
        ac a2 = a(true, true, true, 2);
        this.h = true;
        this.g++;
        this.f3404d.f3992a.a(0, 1, 1, tVar).sendToTarget();
        a(a2, false, 4, 1, false);
    }

    public final void a(final boolean z, boolean z2) {
        boolean z3 = z && !z2;
        if (this.x != z3) {
            this.x = z3;
            i iVar = this.f3404d.f3992a;
            int i = z3 ? 1 : 0;
            int i2 = z3 ? 1 : 0;
            iVar.a(i).sendToTarget();
        }
        if (this.e != z) {
            this.e = z;
            final int i3 = this.m.e;
            a(new a.b(z, i3) { // from class: androidx.media2.exoplayer.external.i

                /* renamed from: a  reason: collision with root package name */
                private final boolean f3410a;

                /* renamed from: b  reason: collision with root package name */
                private final int f3411b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f3410a = z;
                    this.f3411b = i3;
                }

                @Override // androidx.media2.exoplayer.external.a.b
                public final void a(ae.b bVar) {
                    bVar.a(this.f3410a, this.f3411b);
                }
            });
        }
    }

    public final void b() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = ac.e;
        String a2 = w.a();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 36 + String.valueOf(str).length() + String.valueOf(a2).length());
        sb.append("Release ");
        sb.append(hexString);
        sb.append(" [ExoPlayerLib/2.10.4] [");
        sb.append(str);
        sb.append("] [");
        sb.append(a2);
        sb.append("]");
        j.b();
        this.w = null;
        this.f3404d.a();
        this.f3403c.removeCallbacksAndMessages(null);
        this.m = a(false, false, false, 1);
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final int c() {
        return n() ? this.n : this.m.f2805a.a(this.m.f2806b.f3748a, this.u).f2832c;
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long d() {
        if (!m()) {
            return a();
        }
        t.a aVar = this.m.f2806b;
        this.m.f2805a.a(aVar.f3748a, this.u);
        return c.a(this.u.c(aVar.f3749b, aVar.f3750c));
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long e() {
        return n() ? this.p : this.m.f2806b.a() ? c.a(this.m.m) : a(this.m.f2806b, this.m.m);
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long f() {
        if (m()) {
            return this.m.j.equals(this.m.f2806b) ? c.a(this.m.k) : d();
        }
        if (n()) {
            return this.p;
        }
        if (this.m.j.f3751d != this.m.f2806b.f3751d) {
            return c.a(this.m.f2805a.a(c(), this.f2779a, 0L).j);
        }
        long j = this.m.k;
        if (this.m.j.a()) {
            al.a a2 = this.m.f2805a.a(this.m.j.f3748a, this.u);
            j = a2.a(this.m.j.f3749b);
            if (j == Long.MIN_VALUE) {
                j = a2.f2833d;
            }
        }
        return a(this.m.j, j);
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long g() {
        return c.a(this.m.l);
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final int h() {
        if (m()) {
            return this.m.f2806b.f3749b;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final int i() {
        if (m()) {
            return this.m.f2806b.f3750c;
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long j() {
        if (!m()) {
            return e();
        }
        this.m.f2805a.a(this.m.f2806b.f3748a, this.u);
        return this.m.f2808d == -9223372036854775807L ? c.a(this.m.f2805a.a(c(), this.f2779a, 0L).i) : c.a(this.u.e) + c.a(this.m.f2808d);
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final al k() {
        return this.m.f2805a;
    }
}
