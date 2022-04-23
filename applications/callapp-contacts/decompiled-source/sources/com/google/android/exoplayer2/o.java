package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.ad;
import com.google.android.exoplayer2.af;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.ac;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.trackselection.h;
import com.google.android.exoplayer2.trackselection.i;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.y;
import com.google.common.base.q;
import com.google.common.collect.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o.class */
final class o implements Handler.Callback, ad.a, k.a, p.a, h.a, y.d {
    private boolean A;
    private boolean B;
    private boolean C;
    private int D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private int I;
    private g J;
    private long K;
    private int L;
    private boolean M;
    private ExoPlaybackException N;
    private long O;

    /* renamed from: a  reason: collision with root package name */
    final com.google.android.exoplayer2.util.k f21468a;

    /* renamed from: b  reason: collision with root package name */
    final Looper f21469b;

    /* renamed from: c  reason: collision with root package name */
    private final af[] f21470c;

    /* renamed from: d  reason: collision with root package name */
    private final ag[] f21471d;
    private final h e;
    private final i f;
    private final s g;
    private final com.google.android.exoplayer2.upstream.c h;
    private final HandlerThread i;
    private final al.b j;
    private final al.a k;
    private final long l;
    private final boolean m;
    private final k n;
    private final ArrayList<c> o;
    private final com.google.android.exoplayer2.util.c p;
    private final e q;
    private final w r;
    private final y s;
    private final r t;
    private final long u;
    private ai v;
    private z w;
    private d x;
    private boolean y;
    private boolean z;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final List<y.c> f21473a;

        /* renamed from: b  reason: collision with root package name */
        final ac f21474b;

        /* renamed from: c  reason: collision with root package name */
        final int f21475c;

        /* renamed from: d  reason: collision with root package name */
        final long f21476d;

        private a(List<y.c> list, ac acVar, int i, long j) {
            this.f21473a = list;
            this.f21474b = acVar;
            this.f21475c = i;
            this.f21476d = j;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f21477a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21478b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21479c;

        /* renamed from: d  reason: collision with root package name */
        public final ac f21480d;

        public b(int i, int i2, int i3, ac acVar) {
            this.f21477a = i;
            this.f21478b = i2;
            this.f21479c = i3;
            this.f21480d = acVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$c.class */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        public final ad f21481a;

        /* renamed from: b  reason: collision with root package name */
        public int f21482b;

        /* renamed from: c  reason: collision with root package name */
        public long f21483c;

        /* renamed from: d  reason: collision with root package name */
        public Object f21484d;

        public c(ad adVar) {
            this.f21481a = adVar;
        }

        public final void a(int i, long j, Object obj) {
            this.f21482b = i;
            this.f21483c = j;
            this.f21484d = obj;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(c cVar) {
            c cVar2 = cVar;
            Object obj = this.f21484d;
            if ((obj == null) != (cVar2.f21484d == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.f21482b - cVar2.f21482b;
            return i != 0 ? i : af.c(this.f21483c, cVar2.f21483c);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        boolean f21485a;

        /* renamed from: b  reason: collision with root package name */
        public z f21486b;

        /* renamed from: c  reason: collision with root package name */
        public int f21487c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f21488d;
        public int e;
        public boolean f;
        public int g;

        public d(z zVar) {
            this.f21486b = zVar;
        }

        public final void a(int i) {
            this.f21485a |= i > 0;
            this.f21487c += i;
        }

        public final void a(z zVar) {
            this.f21485a |= this.f21486b != zVar;
            this.f21486b = zVar;
        }

        public final void b(int i) {
            boolean z = true;
            if (!this.f21488d || this.e == 4) {
                this.f21485a = true;
                this.f21488d = true;
                this.e = i;
                return;
            }
            if (i != 4) {
                z = false;
            }
            com.google.android.exoplayer2.util.a.a(z);
        }

        public final void c(int i) {
            this.f21485a = true;
            this.f = true;
            this.g = i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$e.class */
    public interface e {
        void onPlaybackInfoUpdate(d dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final r.a f21489a;

        /* renamed from: b  reason: collision with root package name */
        public final long f21490b;

        /* renamed from: c  reason: collision with root package name */
        public final long f21491c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f21492d;
        public final boolean e;
        public final boolean f;

        public f(r.a aVar, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.f21489a = aVar;
            this.f21490b = j;
            this.f21491c = j2;
            this.f21492d = z;
            this.e = z2;
            this.f = z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/o$g.class */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final al f21493a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21494b;

        /* renamed from: c  reason: collision with root package name */
        public final long f21495c;

        public g(al alVar, int i, long j) {
            this.f21493a = alVar;
            this.f21494b = i;
            this.f21495c = j;
        }
    }

    public o(af[] afVarArr, h hVar, i iVar, s sVar, com.google.android.exoplayer2.upstream.c cVar, int i, boolean z, com.google.android.exoplayer2.a.a aVar, ai aiVar, r rVar, long j, boolean z2, Looper looper, com.google.android.exoplayer2.util.c cVar2, e eVar) {
        this.q = eVar;
        this.f21470c = afVarArr;
        this.e = hVar;
        this.f = iVar;
        this.g = sVar;
        this.h = cVar;
        this.D = i;
        this.E = z;
        this.v = aiVar;
        this.t = rVar;
        this.u = j;
        this.O = j;
        this.z = z2;
        this.p = cVar2;
        this.l = sVar.e();
        this.m = sVar.f();
        z a2 = z.a(iVar);
        this.w = a2;
        this.x = new d(a2);
        this.f21471d = new ag[afVarArr.length];
        for (int i2 = 0; i2 < afVarArr.length; i2++) {
            afVarArr[i2].a(i2);
            this.f21471d[i2] = afVarArr[i2].b();
        }
        this.n = new k(this, cVar2);
        this.o = new ArrayList<>();
        this.j = new al.b();
        this.k = new al.a();
        hVar.a(this, cVar);
        this.M = true;
        Handler handler = new Handler(looper);
        this.r = new w(aVar, handler);
        this.s = new y(this, aVar, handler);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.i = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f21469b = looper2;
        this.f21468a = cVar2.a(looper2, this);
    }

    private long a(al alVar, Object obj, long j) {
        alVar.a(alVar.a(obj, this.k).f20677c, this.j, 0L);
        if (this.j.g == -9223372036854775807L || !this.j.a() || !this.j.j) {
            return -9223372036854775807L;
        }
        return com.google.android.exoplayer2.f.b(af.a(this.j.h) - this.j.g) - (j + this.k.e);
    }

    private long a(r.a aVar, long j, boolean z) throws ExoPlaybackException {
        return a(aVar, j, this.r.f22425c != this.r.f22426d, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [com.google.android.exoplayer2.source.p] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.exoplayer2.o] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long a(com.google.android.exoplayer2.source.r.a r8, long r9, boolean r11, boolean r12) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.o.a(com.google.android.exoplayer2.source.r$a, long, boolean, boolean):long");
    }

    private Pair<r.a, Long> a(al alVar) {
        long longValue = 0;
        if (alVar.c()) {
            return Pair.create(z.a(), 0L);
        }
        Pair<Object, Long> a2 = alVar.a(this.j, this.k, alVar.b(this.E), -9223372036854775807L);
        r.a a3 = this.r.a(alVar, a2.first, 0L);
        longValue = ((Long) a2.second).longValue();
        if (a3.a()) {
            alVar.a(a3.f21637a, this.k);
            if (a3.f21639c == this.k.b(a3.f21638b)) {
                longValue = this.k.f.f;
            }
        }
        return Pair.create(a3, Long.valueOf(longValue));
    }

    private static Pair<Object, Long> a(al alVar, g gVar, boolean z, int i, boolean z2, al.b bVar, al.a aVar) {
        Object a2;
        al alVar2 = gVar.f21493a;
        if (alVar.c()) {
            return null;
        }
        if (alVar2.c()) {
            alVar2 = alVar;
        }
        try {
            Pair<Object, Long> a3 = alVar2.a(bVar, aVar, gVar.f21494b, gVar.f21495c);
            if (alVar.equals(alVar2)) {
                return a3;
            }
            if (alVar.c(a3.first) != -1) {
                alVar2.a(a3.first, aVar);
                Pair<Object, Long> pair = a3;
                if (alVar2.a(aVar.f20677c, bVar, 0L).m) {
                    pair = alVar.a(bVar, aVar, alVar.a(a3.first, aVar).f20677c, gVar.f21495c);
                }
                return pair;
            } else if (!z || (a2 = a(bVar, aVar, i, z2, a3.first, alVar2, alVar)) == null) {
                return null;
            } else {
                return alVar.a(bVar, aVar, alVar.a(a2, aVar).f20677c, -9223372036854775807L);
            }
        } catch (IndexOutOfBoundsException e2) {
            return null;
        }
    }

    private z a(r.a aVar, long j, long j2) {
        this.M = this.M || j != this.w.r || !aVar.equals(this.w.f22443b);
        m();
        TrackGroupArray trackGroupArray = this.w.g;
        i iVar = this.w.h;
        List<Metadata> list = this.w.i;
        if (this.s.i) {
            u uVar = this.r.f22425c;
            trackGroupArray = uVar == null ? TrackGroupArray.EMPTY : uVar.i;
            iVar = uVar == null ? this.f : uVar.j;
            list = a(iVar.f21948c);
            if (!(uVar == null || uVar.f.f22356c == j2)) {
                uVar.f = uVar.f.b(j2);
            }
        } else if (!aVar.equals(this.w.f22443b)) {
            trackGroupArray = TrackGroupArray.EMPTY;
            iVar = this.f;
            list = v.g();
        }
        return this.w.a(aVar, j, j2, s(), trackGroupArray, iVar, list);
    }

    private static v<Metadata> a(com.google.android.exoplayer2.trackselection.c[] cVarArr) {
        v.a aVar = new v.a();
        boolean z = false;
        for (com.google.android.exoplayer2.trackselection.c cVar : cVarArr) {
            z = z;
            if (cVar != null) {
                Format a2 = cVar.a(0);
                if (a2.metadata == null) {
                    aVar.b(new Metadata(new Metadata.Entry[0]));
                    z = z;
                } else {
                    aVar.b(a2.metadata);
                    z = true;
                }
            }
        }
        return z ? aVar.a() : v.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(al.b bVar, al.a aVar, int i, boolean z, Object obj, al alVar, al alVar2) {
        int c2 = alVar.c(obj);
        int b2 = alVar.b();
        int i2 = -1;
        for (int i3 = 0; i3 < b2 && i2 == -1; i3++) {
            c2 = alVar.a(c2, aVar, bVar, i, z);
            if (c2 == -1) {
                break;
            }
            i2 = alVar2.c(alVar.a(c2));
        }
        if (i2 == -1) {
            return null;
        }
        return alVar2.a(i2);
    }

    private void a(float f2) {
        com.google.android.exoplayer2.trackselection.c[] cVarArr;
        for (u uVar = this.r.f22425c; uVar != null; uVar = uVar.h) {
            for (com.google.android.exoplayer2.trackselection.c cVar : uVar.j.f21948c) {
                if (cVar != null) {
                    cVar.a(f2);
                }
            }
        }
    }

    private void a(int i) {
        if (this.w.f22445d != i) {
            this.w = this.w.a(i);
        }
    }

    private void a(int i, boolean z) throws ExoPlaybackException {
        af afVar = this.f21470c[i];
        if (!c(afVar)) {
            u uVar = this.r.f22426d;
            boolean z2 = uVar == this.r.f22425c;
            i iVar = uVar.j;
            RendererConfiguration rendererConfiguration = iVar.f21947b[i];
            Format[] a2 = a(iVar.f21948c[i]);
            boolean z3 = t() && this.w.f22445d == 3;
            boolean z4 = !z && z3;
            this.I++;
            afVar.a(rendererConfiguration, a2, uVar.f21952c[i], this.K, z4, z2, uVar.a(), uVar.k);
            afVar.a(103, new af.a() { // from class: com.google.android.exoplayer2.o.1
                @Override // com.google.android.exoplayer2.af.a
                public final void a() {
                    o.this.f21468a.b(2);
                }

                @Override // com.google.android.exoplayer2.af.a
                public final void a(long j) {
                    if (j >= 2000) {
                        o.this.G = true;
                    }
                }
            });
            this.n.a(afVar);
            if (z3) {
                afVar.e();
            }
        }
    }

    private void a(long j) throws ExoPlaybackException {
        af[] afVarArr;
        u uVar = this.r.f22425c;
        if (uVar != null) {
            j += uVar.k;
        }
        this.K = j;
        this.n.a(j);
        for (af afVar : this.f21470c) {
            if (c(afVar)) {
                afVar.a(this.K);
            }
        }
    }

    private void a(long j, long j2) {
        this.f21468a.b();
        this.f21468a.a(j + j2);
    }

    private void a(aa aaVar, float f2, boolean z, boolean z2) throws ExoPlaybackException {
        af[] afVarArr;
        if (z) {
            if (z2) {
                this.x.a(1);
            }
            this.w = this.w.a(aaVar);
        }
        a(aaVar.f20647b);
        for (af afVar : this.f21470c) {
            if (afVar != null) {
                afVar.a(f2, aaVar.f20647b);
            }
        }
    }

    private void a(aa aaVar, boolean z) throws ExoPlaybackException {
        a(aaVar, aaVar.f20647b, true, z);
    }

    private static void a(af afVar) throws ExoPlaybackException {
        if (afVar.C_() == 2) {
            afVar.l();
        }
    }

    private static void a(af afVar, long j) {
        afVar.i();
        if (afVar instanceof com.google.android.exoplayer2.text.k) {
            ((com.google.android.exoplayer2.text.k) afVar).c(j);
        }
    }

    private void a(al alVar, al alVar2) {
        if (!alVar.c() || !alVar2.c()) {
            for (int size = this.o.size() - 1; size >= 0; size--) {
                if (!a(this.o.get(size), alVar, alVar2, this.D, this.E, this.j, this.k)) {
                    this.o.get(size).f21481a.a(false);
                    this.o.remove(size);
                }
            }
            Collections.sort(this.o);
        }
    }

    private static void a(al alVar, c cVar, al.b bVar, al.a aVar) {
        int i = alVar.a(alVar.a(cVar.f21484d, aVar).f20677c, bVar, 0L).o;
        cVar.a(i, aVar.f20678d != -9223372036854775807L ? aVar.f20678d - 1 : Long.MAX_VALUE, alVar.a(i, aVar, true).f20676b);
    }

    private void a(al alVar, r.a aVar, al alVar2, r.a aVar2, long j) {
        if (!alVar.c() && a(alVar, aVar)) {
            alVar.a(alVar.a(aVar.f21637a, this.k).f20677c, this.j, 0L);
            this.t.a((MediaItem.LiveConfiguration) com.google.android.exoplayer2.util.af.a(this.j.l));
            if (j != -9223372036854775807L) {
                this.t.a(a(alVar, aVar.f21637a, j));
                return;
            }
            Object obj = this.j.f20680b;
            Object obj2 = null;
            if (!alVar2.c()) {
                obj2 = alVar2.a(alVar2.a(aVar2.f21637a, this.k).f20677c, this.j, 0L).f20680b;
            }
            if (!com.google.android.exoplayer2.util.af.a(obj2, obj)) {
                this.t.a(-9223372036854775807L);
            }
        } else if (this.n.d().f20647b != this.w.m.f20647b) {
            this.n.a(this.w.m);
        }
    }

    private void a(i iVar) {
        this.g.a(this.f21470c, iVar.f21948c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.exoplayer2.o, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.google.common.base.q<java.lang.Boolean> r6, long r7) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            com.google.android.exoplayer2.util.c r0 = r0.p     // Catch: all -> 0x005c
            long r0 = r0.a()     // Catch: all -> 0x005c
            r9 = r0
            r0 = 0
            r11 = r0
            r0 = r7
            r12 = r0
        L_0x0013:
            r0 = r6
            java.lang.Object r0 = r0.get()     // Catch: all -> 0x005c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: all -> 0x005c
            boolean r0 = r0.booleanValue()     // Catch: all -> 0x005c
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x004e
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004e
            r0 = r5
            r1 = r12
            r0.wait(r1)     // Catch: InterruptedException -> 0x0036, all -> 0x005c
            goto L_0x003b
        L_0x0036:
            r15 = move-exception
            r0 = 1
            r11 = r0
        L_0x003b:
            r0 = r9
            r1 = r7
            long r0 = r0 + r1
            r1 = r5
            com.google.android.exoplayer2.util.c r1 = r1.p     // Catch: all -> 0x005c
            long r1 = r1.a()     // Catch: all -> 0x005c
            long r0 = r0 - r1
            r12 = r0
            goto L_0x0013
        L_0x004e:
            r0 = r11
            if (r0 == 0) goto L_0x0059
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch: all -> 0x005c
            r0.interrupt()     // Catch: all -> 0x005c
        L_0x0059:
            r0 = r5
            monitor-exit(r0)
            return
        L_0x005c:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.o.a(com.google.common.base.q, long):void");
    }

    private void a(boolean z) throws ExoPlaybackException {
        r.a aVar = this.r.f22425c.f.f22354a;
        long a2 = a(aVar, this.w.r, true, false);
        if (a2 != this.w.r) {
            this.w = a(aVar, a2, this.w.f22444c);
            if (z) {
                this.x.b(4);
            }
        }
    }

    private void a(boolean z, int i, boolean z2, int i2) throws ExoPlaybackException {
        this.x.a(z2 ? 1 : 0);
        this.x.c(i2);
        this.w = this.w.a(z, i);
        this.B = false;
        if (!t()) {
            g();
            h();
        } else if (this.w.f22445d == 3) {
            f();
            this.f21468a.b(2);
        } else if (this.w.f22445d == 2) {
            this.f21468a.b(2);
        }
    }

    private void a(boolean z, AtomicBoolean atomicBoolean) {
        af[] afVarArr;
        if (this.F != z) {
            this.F = z;
            if (!z) {
                for (af afVar : this.f21470c) {
                    if (!c(afVar)) {
                        afVar.n();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void a(boolean z, boolean z2) {
        a(z || !this.F, false, true, false);
        this.x.a(z2 ? 1 : 0);
        this.g.b();
        a(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01e6  */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r35v2 */
    /* JADX WARN: Type inference failed for: r35v3 */
    /* JADX WARN: Type inference failed for: r35v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(boolean r27, boolean r28, boolean r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.o.a(boolean, boolean, boolean, boolean):void");
    }

    private void a(boolean[] zArr) throws ExoPlaybackException {
        u uVar = this.r.f22426d;
        i iVar = uVar.j;
        for (int i = 0; i < this.f21470c.length; i++) {
            if (!iVar.a(i)) {
                this.f21470c[i].n();
            }
        }
        for (int i2 = 0; i2 < this.f21470c.length; i2++) {
            if (iVar.a(i2)) {
                a(i2, zArr[i2]);
            }
        }
        uVar.g = true;
    }

    private boolean a(al alVar, r.a aVar) {
        if (aVar.a() || alVar.c()) {
            return false;
        }
        alVar.a(alVar.a(aVar.f21637a, this.k).f20677c, this.j, 0L);
        return this.j.a() && this.j.j && this.j.g != -9223372036854775807L;
    }

    private static boolean a(c cVar, al alVar, al alVar2, int i, boolean z, al.b bVar, al.a aVar) {
        if (cVar.f21484d == null) {
            Pair<Object, Long> a2 = a(alVar, new g(cVar.f21481a.f20651b, cVar.f21481a.f, cVar.f21481a.g == Long.MIN_VALUE ? -9223372036854775807L : com.google.android.exoplayer2.f.b(cVar.f21481a.g)), false, i, z, bVar, aVar);
            if (a2 == null) {
                return false;
            }
            cVar.a(alVar.c(a2.first), ((Long) a2.second).longValue(), a2.first);
            if (cVar.f21481a.g != Long.MIN_VALUE) {
                return true;
            }
            a(alVar, cVar, bVar, aVar);
            return true;
        }
        int c2 = alVar.c(cVar.f21484d);
        if (c2 == -1) {
            return false;
        }
        if (cVar.f21481a.g == Long.MIN_VALUE) {
            a(alVar, cVar, bVar, aVar);
            return true;
        }
        cVar.f21482b = c2;
        alVar2.a(cVar.f21484d, aVar);
        if (!alVar2.a(aVar.f20677c, bVar, 0L).m) {
            return true;
        }
        Pair<Object, Long> a3 = alVar.a(bVar, aVar, alVar.a(cVar.f21484d, aVar).f20677c, cVar.f21483c + aVar.e);
        cVar.a(alVar.c(a3.first), ((Long) a3.second).longValue(), a3.first);
        return true;
    }

    private static boolean a(z zVar, al.a aVar, al.b bVar) {
        r.a aVar2 = zVar.f22443b;
        al alVar = zVar.f22442a;
        return aVar2.a() || alVar.c() || alVar.a(alVar.a(aVar2.f21637a, aVar).f20677c, bVar, 0L).m;
    }

    private static Format[] a(com.google.android.exoplayer2.trackselection.c cVar) {
        int e2 = cVar != null ? cVar.e() : 0;
        Format[] formatArr = new Format[e2];
        for (int i = 0; i < e2; i++) {
            formatArr[i] = cVar.a(i);
        }
        return formatArr;
    }

    private long b(long j) {
        u uVar = this.r.e;
        if (uVar == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.K - uVar.k));
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x016b A[EDGE_INSN: B:80:0x016b->B:95:0x016b ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0077 -> B:13:0x007d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00ee -> B:28:0x00f8). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(long r6, long r8) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.o.b(long, long):void");
    }

    private void b(ad adVar) throws ExoPlaybackException {
        if (adVar.e == this.f21469b) {
            c(adVar);
            if (this.w.f22445d == 3 || this.w.f22445d == 2) {
                this.f21468a.b(2);
                return;
            }
            return;
        }
        this.f21468a.a(15, adVar).sendToTarget();
    }

    private void b(af afVar) throws ExoPlaybackException {
        if (c(afVar)) {
            this.n.b(afVar);
            a(afVar);
            afVar.m();
            this.I--;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x0492, code lost:
        r38 = r27;
        r40 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x04a1, code lost:
        if (r0.a(r15) == false) goto L_0x05fa;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x04a4, code lost:
        r35 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0503, code lost:
        if (r0.a(r15) != false) goto L_0x0506;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x05d8, code lost:
        if (r35 != false) goto L_0x0506;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 40, insn: 0x0747: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r40 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:257:0x0743 */
    /* JADX WARN: Removed duplicated region for block: B:244:0x06da  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x06e1  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0736  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x076d  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0774  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x07c8  */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.exoplayer2.o] */
    /* JADX WARN: Type inference failed for: r23v0, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1, types: [long] */
    /* JADX WARN: Type inference failed for: r23v15 */
    /* JADX WARN: Type inference failed for: r23v18 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v34 */
    /* JADX WARN: Type inference failed for: r23v35 */
    /* JADX WARN: Type inference failed for: r23v36 */
    /* JADX WARN: Type inference failed for: r23v43 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Type inference failed for: r27v0, types: [long] */
    /* JADX WARN: Type inference failed for: r27v1, types: [long] */
    /* JADX WARN: Type inference failed for: r27v10 */
    /* JADX WARN: Type inference failed for: r27v11 */
    /* JADX WARN: Type inference failed for: r27v13 */
    /* JADX WARN: Type inference failed for: r27v14 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3, types: [long] */
    /* JADX WARN: Type inference failed for: r27v6 */
    /* JADX WARN: Type inference failed for: r27v9, types: [long] */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1, types: [long] */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r29v3 */
    /* JADX WARN: Type inference failed for: r29v32 */
    /* JADX WARN: Type inference failed for: r29v35 */
    /* JADX WARN: Type inference failed for: r29v36 */
    /* JADX WARN: Type inference failed for: r29v6, types: [long] */
    /* JADX WARN: Type inference failed for: r29v7 */
    /* JADX WARN: Type inference failed for: r29v8 */
    /* JADX WARN: Type inference failed for: r33v2, types: [long] */
    /* JADX WARN: Type inference failed for: r33v5, types: [long] */
    /* JADX WARN: Type inference failed for: r33v6 */
    /* JADX WARN: Type inference failed for: r33v7 */
    /* JADX WARN: Type inference failed for: r33v8 */
    /* JADX WARN: Type inference failed for: r38v13 */
    /* JADX WARN: Type inference failed for: r38v9 */
    /* JADX WARN: Type inference failed for: r40v19 */
    /* JADX WARN: Type inference failed for: r40v25 */
    /* JADX WARN: Unknown variable types count: 6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(com.google.android.exoplayer2.al r12) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 2005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.o.b(com.google.android.exoplayer2.al):void");
    }

    private void b(boolean z) {
        u uVar = this.r.e;
        r.a aVar = uVar == null ? this.w.f22443b : uVar.f.f22354a;
        boolean z2 = !this.w.j.equals(aVar);
        if (z2) {
            this.w = this.w.a(aVar);
        }
        z zVar = this.w;
        zVar.p = uVar == null ? zVar.r : uVar.c();
        this.w.q = s();
        if ((z2 || z) && uVar != null && uVar.f21953d) {
            a(uVar.j);
        }
    }

    private static void c(ad adVar) throws ExoPlaybackException {
        if (!adVar.b()) {
            try {
                adVar.f20650a.a(adVar.f20652c, adVar.f20653d);
            } finally {
                adVar.a(true);
            }
        }
    }

    private static boolean c(af afVar) {
        return afVar.C_() != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(ad adVar) {
        try {
            c(adVar);
        } catch (ExoPlaybackException e2) {
            n.b("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    private void e() {
        this.x.a(this.w);
        if (this.x.f21485a) {
            this.q.onPlaybackInfoUpdate(this.x);
            this.x = new d(this.w);
        }
    }

    private void f() throws ExoPlaybackException {
        af[] afVarArr;
        this.B = false;
        this.n.a();
        for (af afVar : this.f21470c) {
            if (c(afVar)) {
                afVar.e();
            }
        }
    }

    private void g() throws ExoPlaybackException {
        af[] afVarArr;
        this.n.b();
        for (af afVar : this.f21470c) {
            if (c(afVar)) {
                a(afVar);
            }
        }
    }

    private void h() throws ExoPlaybackException {
        u uVar = this.r.f22425c;
        if (uVar != null) {
            long c2 = uVar.f21953d ? uVar.f21950a.c() : -9223372036854775807L;
            if (c2 != -9223372036854775807L) {
                a(c2);
                if (c2 != this.w.r) {
                    this.w = a(this.w.f22443b, c2, this.w.f22444c);
                    this.x.b(4);
                }
            } else {
                long a2 = this.n.a(uVar != this.r.f22426d);
                this.K = a2;
                long j = a2 - uVar.k;
                b(this.w.r, j);
                this.w.r = j;
            }
            this.w.p = this.r.e.c();
            this.w.q = s();
            if (this.w.k && this.w.f22445d == 3 && a(this.w.f22442a, this.w.f22443b) && this.w.m.f20647b == 1.0f) {
                float a3 = this.t.a(i(), s());
                if (this.n.d().f20647b != a3) {
                    this.n.a(this.w.m.a(a3));
                    a(this.w.m, this.n.d().f20647b, false, false);
                }
            }
        }
    }

    private long i() {
        return a(this.w.f22442a, this.w.f22443b.f21637a, this.w.r);
    }

    private void j() {
        a(true, false, true, false);
        this.g.c();
        a(1);
        this.i.quit();
        synchronized (this) {
            this.y = true;
            notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x009b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void k() throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.o.k():void");
    }

    private boolean l() {
        u uVar = this.r.f22425c;
        long j = uVar.f.e;
        if (uVar.f21953d) {
            return j == -9223372036854775807L || this.w.r < j || !t();
        }
        return false;
    }

    private void m() {
        u uVar = this.r.f22425c;
        this.A = uVar != null && uVar.f.g && this.z;
    }

    private void n() {
        boolean o = o();
        this.C = o;
        if (o) {
            this.r.e.b(this.K);
        }
        q();
    }

    private boolean o() {
        if (!p()) {
            return false;
        }
        return this.g.a(b(this.r.e.d()), this.n.d().f20647b);
    }

    private boolean p() {
        u uVar = this.r.e;
        return (uVar == null || uVar.d() == Long.MIN_VALUE) ? false : true;
    }

    private void q() {
        u uVar = this.r.e;
        boolean z = this.C || (uVar != null && uVar.f21950a.f());
        if (z != this.w.f) {
            this.w = this.w.a(z);
        }
    }

    private void r() throws ExoPlaybackException {
        a(new boolean[this.f21470c.length]);
    }

    private long s() {
        return b(this.w.p);
    }

    private boolean t() {
        return this.w.k && this.w.l == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean u() {
        return Boolean.valueOf(this.y);
    }

    public final void a() {
        this.f21468a.a(0).sendToTarget();
    }

    public final void a(int i, int i2, ac acVar) {
        this.f21468a.a(20, 0, i2, acVar).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.k.a
    public final void a(aa aaVar) {
        this.f21468a.a(16, aaVar).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.ad.a
    public final void a(ad adVar) {
        synchronized (this) {
            if (!this.y && this.i.isAlive()) {
                this.f21468a.a(14, adVar).sendToTarget();
                return;
            }
            n.a("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            adVar.a(false);
        }
    }

    @Override // com.google.android.exoplayer2.source.ab.a
    public final /* synthetic */ void a(p pVar) {
        this.f21468a.a(9, pVar).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.source.p.a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void a2(p pVar) {
        this.f21468a.a(8, pVar).sendToTarget();
    }

    public final void a(List<y.c> list, int i, long j, ac acVar) {
        this.f21468a.a(17, new a(list, acVar, i, j)).sendToTarget();
    }

    public final void a(boolean z, int i) {
        this.f21468a.a(1, z ? 1 : 0, i).sendToTarget();
    }

    public final void b() {
        this.f21468a.a(6).sendToTarget();
    }

    public final boolean c() {
        synchronized (this) {
            if (!this.y && this.i.isAlive()) {
                this.f21468a.b(7);
                a(new q() { // from class: com.google.android.exoplayer2._$$Lambda$o$LQRMnE3eDLRsmHYxjsI_c0oVSVw
                    @Override // com.google.common.base.q
                    public final Object get() {
                        Boolean u;
                        u = o.this.u();
                        return u;
                    }
                }, this.u);
                return this.y;
            }
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.y.d
    public final void d() {
        this.f21468a.b(22);
    }

    /* JADX WARN: Code restructure failed: missing block: B:195:0x079b, code lost:
        if (r25.w.f22445d == 3) goto L_0x079e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x10ff, code lost:
        if (r27 == false) goto L_0x1102;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0836 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TRY_LEAVE, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x08f8 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0a3f A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_LEAVE, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0a4e A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0a5e A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0cc9  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0dac  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0f60 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TRY_LEAVE, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:593:0x1130  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x11b3 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:619:0x11cd A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TRY_LEAVE, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:636:0x1216 A[Catch: RuntimeException -> 0x086c, IOException -> 0x0870, ExoPlaybackException -> 0x0875, TRY_ENTER, TryCatch #23 {RuntimeException -> 0x086c, blocks: (B:6:0x0082, B:8:0x0093, B:13:0x00a5, B:17:0x00b3, B:18:0x00bb, B:20:0x00bd, B:25:0x00cd, B:27:0x00d6, B:33:0x00f6, B:34:0x0104, B:35:0x0114, B:40:0x0124, B:42:0x0135, B:44:0x0146, B:45:0x0153, B:46:0x0161, B:48:0x0181, B:50:0x018c, B:52:0x019d, B:53:0x01ad, B:57:0x01d9, B:62:0x01eb, B:63:0x020a, B:64:0x0238, B:67:0x025d, B:69:0x0263, B:70:0x0278, B:72:0x0290, B:74:0x02bd, B:75:0x02f6, B:76:0x0305, B:78:0x031e, B:79:0x032f, B:80:0x033d, B:83:0x034b, B:85:0x035a, B:87:0x036d, B:88:0x0375, B:90:0x0382, B:91:0x039e, B:93:0x03cf, B:94:0x03e3, B:95:0x03eb, B:100:0x03fb, B:101:0x040b, B:106:0x041b, B:108:0x043e, B:110:0x0444, B:111:0x044b, B:113:0x0472, B:115:0x0478, B:116:0x047f, B:117:0x0486, B:119:0x0499, B:120:0x04ab, B:122:0x04be, B:124:0x0502, B:128:0x0513, B:130:0x051f, B:132:0x052f, B:134:0x056b, B:136:0x0598, B:137:0x059e, B:139:0x05a4, B:141:0x05ad, B:142:0x05bb, B:143:0x05da, B:145:0x060f, B:146:0x0642, B:151:0x066d, B:153:0x0686, B:155:0x06ab, B:158:0x06ca, B:199:0x07a8, B:201:0x07b7, B:218:0x0826, B:220:0x0836, B:225:0x0851, B:227:0x0861, B:229:0x086b, B:235:0x0895, B:238:0x08a2, B:240:0x08b9, B:242:0x08c6, B:244:0x08d0, B:246:0x08e1, B:253:0x08f8, B:255:0x0910, B:256:0x092c, B:259:0x0940, B:261:0x0971, B:263:0x097b, B:265:0x0986, B:267:0x0995, B:268:0x09b0, B:268:0x09b0, B:269:0x09b3, B:271:0x09cf, B:272:0x09dc, B:274:0x09ec, B:276:0x0a23, B:280:0x0a38, B:282:0x0a3f, B:283:0x0a4e, B:285:0x0a53, B:287:0x0a5e, B:289:0x0a65, B:292:0x0a6f, B:297:0x0a87, B:301:0x0a9a, B:305:0x0ab4, B:312:0x0acd, B:314:0x0ad7, B:317:0x0ae7, B:319:0x0af9, B:324:0x0b0d, B:326:0x0b3a, B:328:0x0b4b, B:333:0x0b68, B:335:0x0b72, B:336:0x0b79, B:338:0x0b81, B:340:0x0b8a, B:342:0x0b9e, B:344:0x0bac, B:349:0x0bc5, B:351:0x0bdb, B:355:0x0bea, B:356:0x0bf8, B:357:0x0bfe, B:359:0x0c08, B:363:0x0c11, B:367:0x0c24, B:369:0x0c31, B:371:0x0c3d, B:373:0x0c47, B:375:0x0c55, B:377:0x0c63, B:379:0x0c79, B:380:0x0c80, B:381:0x0c86, B:383:0x0c92, B:385:0x0c9d, B:388:0x0ca7, B:390:0x0cbb, B:394:0x0cd3, B:396:0x0cdb, B:401:0x0cf6, B:406:0x0d07, B:408:0x0d11, B:410:0x0d3a, B:412:0x0d44, B:418:0x0d62, B:420:0x0d68, B:422:0x0d6f, B:424:0x0d76, B:426:0x0d82, B:428:0x0d8b, B:430:0x0d97, B:439:0x0db0, B:441:0x0db5, B:446:0x0df6, B:455:0x0e54, B:458:0x0e75, B:460:0x0e9b, B:464:0x0eb7, B:466:0x0ebf, B:468:0x0ed5, B:473:0x0ee8, B:480:0x0f07, B:489:0x0f24, B:491:0x0f2e, B:504:0x0f60, B:511:0x0f9a, B:516:0x0faa, B:523:0x0fc5, B:525:0x0fcc, B:528:0x0fe4, B:530:0x0fee, B:534:0x1005, B:536:0x100c, B:539:0x1019, B:543:0x1029, B:545:0x1044, B:547:0x104f, B:549:0x105f, B:554:0x1073, B:556:0x1081, B:565:0x109c, B:571:0x10c6, B:573:0x10d7, B:577:0x10ed, B:579:0x10f4, B:584:0x1102, B:586:0x1116, B:588:0x1120, B:594:0x1132, B:596:0x113f, B:598:0x1149, B:600:0x115d, B:601:0x1168, B:602:0x116e, B:604:0x1178, B:606:0x1186, B:609:0x1190, B:610:0x119c, B:615:0x11b3, B:619:0x11cd, B:625:0x11e7, B:627:0x11ee, B:631:0x11fa, B:636:0x1216, B:638:0x1221), top: B:736:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:644:0x1245 A[Catch: RuntimeException -> 0x1335, IOException -> 0x1339, ExoPlaybackException -> 0x1347, TRY_LEAVE, TryCatch #22 {ExoPlaybackException -> 0x1347, IOException -> 0x1339, RuntimeException -> 0x1335, blocks: (B:233:0x0879, B:448:0x0e2f, B:450:0x0e3a, B:453:0x0e48, B:456:0x0e60, B:507:0x0f7e, B:509:0x0f8c, B:531:0x0ff6, B:574:0x10de, B:590:0x1124, B:612:0x119e, B:617:0x11c3, B:622:0x11da, B:634:0x120d, B:639:0x122d, B:642:0x1239, B:644:0x1245), top: B:747:0x0879 }] */
    /* JADX WARN: Removed duplicated region for block: B:710:0x14a5  */
    /* JADX WARN: Removed duplicated region for block: B:716:0x14f2  */
    /* JADX WARN: Removed duplicated region for block: B:721:0x151a  */
    /* JADX WARN: Removed duplicated region for block: B:726:0x1558  */
    /* JADX WARN: Removed duplicated region for block: B:775:0x0d5c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:781:0x0e2f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:785:0x0f6e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v735, types: [long] */
    /* JADX WARN: Type inference failed for: r0v785, types: [com.google.android.exoplayer2.source.p] */
    /* JADX WARN: Type inference failed for: r0v798, types: [long] */
    /* JADX WARN: Type inference failed for: r0v803, types: [com.google.android.exoplayer2.w] */
    /* JADX WARN: Type inference failed for: r0v879, types: [long] */
    /* JADX WARN: Type inference failed for: r25v0, types: [com.google.android.exoplayer2.source.p$a, com.google.android.exoplayer2.o] */
    /* JADX WARN: Type inference failed for: r28v10 */
    /* JADX WARN: Type inference failed for: r28v3, types: [long] */
    /* JADX WARN: Type inference failed for: r28v5 */
    /* JADX WARN: Type inference failed for: r28v7 */
    /* JADX WARN: Type inference failed for: r35v12, types: [long] */
    /* JADX WARN: Type inference failed for: r35v13 */
    /* JADX WARN: Type inference failed for: r35v15 */
    /* JADX WARN: Type inference failed for: r35v17 */
    /* JADX WARN: Type inference failed for: r35v18 */
    /* JADX WARN: Type inference failed for: r35v20 */
    /* JADX WARN: Type inference failed for: r35v21 */
    /* JADX WARN: Type inference failed for: r35v23 */
    /* JADX WARN: Type inference failed for: r35v24, types: [long] */
    /* JADX WARN: Type inference failed for: r35v26 */
    /* JADX WARN: Type inference failed for: r35v34 */
    /* JADX WARN: Type inference failed for: r35v36 */
    /* JADX WARN: Type inference failed for: r35v37 */
    /* JADX WARN: Type inference failed for: r38v2, types: [long] */
    /* JADX WARN: Type inference failed for: r38v4 */
    /* JADX WARN: Type inference failed for: r38v6 */
    /* JADX WARN: Unknown variable types count: 8 */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r26) {
        /*
            Method dump skipped, instructions count: 5513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.o.handleMessage(android.os.Message):boolean");
    }

    @Override // com.google.android.exoplayer2.trackselection.h.a
    public final void onTrackSelectionsInvalidated() {
        this.f21468a.b(10);
    }
}
