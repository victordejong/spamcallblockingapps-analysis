package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.ad;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.ac;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.t;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.trackselection.h;
import com.google.android.exoplayer2.trackselection.i;
import com.google.android.exoplayer2.upstream.c;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.k;
import com.google.android.exoplayer2.util.m;
import com.google.android.exoplayer2.util.r;
import com.google.android.exoplayer2.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/n.class */
public final class n extends d implements m {
    private int A;
    private int B;
    private long C;

    /* renamed from: b  reason: collision with root package name */
    final i f21463b;

    /* renamed from: c  reason: collision with root package name */
    final h f21464c;

    /* renamed from: d  reason: collision with root package name */
    final Looper f21465d;
    int e;
    boolean f;
    z g;
    private final af[] h;
    private final k i;
    private final o.e j;
    private final o k;
    private final m<ac.a, ac.b> l;
    private final al.a m;
    private final List<a> n;
    private final boolean o;
    private final t p;
    private final com.google.android.exoplayer2.a.a q;
    private final c r;
    private final com.google.android.exoplayer2.util.c s;
    private int t;
    private boolean u;
    private int v;
    private int w;
    private ai x;
    private com.google.android.exoplayer2.source.ac y;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/n$a.class */
    public static final class a implements x {

        /* renamed from: a  reason: collision with root package name */
        al f21466a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f21467b;

        public a(Object obj, al alVar) {
            this.f21467b = obj;
            this.f21466a = alVar;
        }

        @Override // com.google.android.exoplayer2.x
        public final Object a() {
            return this.f21467b;
        }

        @Override // com.google.android.exoplayer2.x
        public final al b() {
            return this.f21466a;
        }
    }

    public n(af[] afVarArr, h hVar, t tVar, s sVar, c cVar, com.google.android.exoplayer2.a.a aVar, boolean z, ai aiVar, r rVar, long j, boolean z2, com.google.android.exoplayer2.util.c cVar2, Looper looper, ac acVar) {
        StringBuilder sb = new StringBuilder("Init ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [ExoPlayerLib/2.13.3] [");
        sb.append(af.e);
        sb.append("]");
        com.google.android.exoplayer2.util.n.b();
        com.google.android.exoplayer2.util.a.b(afVarArr.length > 0);
        this.h = (af[]) com.google.android.exoplayer2.util.a.b(afVarArr);
        this.f21464c = (h) com.google.android.exoplayer2.util.a.b(hVar);
        this.p = tVar;
        this.r = cVar;
        this.q = aVar;
        this.o = z;
        this.x = aiVar;
        this.z = z2;
        this.f21465d = looper;
        this.s = cVar2;
        this.e = 0;
        final ac acVar2 = acVar != null ? acVar : this;
        this.l = new m<>(looper, cVar2, _$$Lambda$_iO1wn2nBlVJ7gDW__ChsAzobvo.INSTANCE, new m.b() { // from class: com.google.android.exoplayer2._$$Lambda$n$Exp3py02o9am369lqlKYEOEMlPI
            @Override // com.google.android.exoplayer2.util.m.b
            public final void invoke(Object obj, r rVar2) {
                ac acVar3 = ac.this;
                ((ac.a) obj).a((ac.b) rVar2);
            }
        });
        this.n = new ArrayList();
        this.y = new ac.a(0);
        i iVar = new i(new RendererConfiguration[afVarArr.length], new com.google.android.exoplayer2.trackselection.c[afVarArr.length], null);
        this.f21463b = iVar;
        this.m = new al.a();
        this.A = -1;
        this.i = cVar2.a(looper, null);
        o.e ___lambda_n_9eqdhfiuhcqiawi6nul0m4y8meu = new o.e() { // from class: com.google.android.exoplayer2._$$Lambda$n$9EqdHfiuhCqIaWI6nUl0M4y8mEU
            @Override // com.google.android.exoplayer2.o.e
            public final void onPlaybackInfoUpdate(o.d dVar) {
                n.this.a(dVar);
            }
        };
        this.j = ___lambda_n_9eqdhfiuhcqiawi6nul0m4y8meu;
        this.g = z.a(iVar);
        if (aVar != null) {
            aVar.a(acVar2, looper);
            a(aVar);
            cVar.a(new Handler(looper), aVar);
        }
        this.k = new o(afVarArr, hVar, iVar, sVar, cVar, this.e, this.f, aVar, aiVar, rVar, j, z2, looper, cVar2, ___lambda_n_9eqdhfiuhcqiawi6nul0m4y8meu);
    }

    private int L() {
        return this.g.f22442a.c() ? this.A : this.g.f22442a.a(this.g.f22443b.f21637a, this.m).f20677c;
    }

    private al M() {
        return new ae(this.n, this.y);
    }

    private long a(r.a aVar, long j) {
        long a2 = f.a(j);
        this.g.f22442a.a(aVar.f21637a, this.m);
        return a2 + f.a(this.m.e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if (r9 >= r8.a()) goto L_0x0037;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.util.Pair<java.lang.Object, java.lang.Long> a(com.google.android.exoplayer2.al r8, int r9, long r10) {
        /*
            r7 = this;
            r0 = r8
            boolean r0 = r0.c()
            if (r0 == 0) goto L_0x0027
            r0 = r7
            r1 = r9
            r0.A = r1
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001a
            r0 = 0
            r12 = r0
        L_0x001a:
            r0 = r7
            r1 = r12
            r0.C = r1
            r0 = r7
            r1 = 0
            r0.B = r1
            r0 = 0
            return r0
        L_0x0027:
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x0037
            r0 = r9
            r14 = r0
            r0 = r9
            r1 = r8
            int r1 = r1.a()
            if (r0 < r1) goto L_0x0053
        L_0x0037:
            r0 = r8
            r1 = r7
            boolean r1 = r1.f
            int r0 = r0.b(r1)
            r14 = r0
            r0 = r8
            r1 = r14
            r2 = r7
            com.google.android.exoplayer2.al$b r2 = r2.f20820a
            r3 = 0
            com.google.android.exoplayer2.al$b r0 = r0.a(r1, r2, r3)
            long r0 = r0.p
            long r0 = com.google.android.exoplayer2.f.a(r0)
            r10 = r0
        L_0x0053:
            r0 = r8
            r1 = r7
            com.google.android.exoplayer2.al$b r1 = r1.f20820a
            r2 = r7
            com.google.android.exoplayer2.al$a r2 = r2.m
            r3 = r14
            r4 = r10
            long r4 = com.google.android.exoplayer2.f.b(r4)
            android.util.Pair r0 = r0.a(r1, r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.n.a(com.google.android.exoplayer2.al, int, long):android.util.Pair");
    }

    private Pair<Object, Long> a(al alVar, al alVar2) {
        long F = F();
        int i = -1;
        if (alVar.c() || alVar2.c()) {
            boolean z = !alVar.c() && alVar2.c();
            if (!z) {
                i = L();
            }
            if (z) {
                F = -9223372036854775807L;
            }
            return a(alVar2, i, F);
        }
        Pair<Object, Long> a2 = alVar.a(this.f20820a, this.m, y(), f.b(F));
        Object obj = ((Pair) af.a(a2)).first;
        if (alVar2.c(obj) != -1) {
            return a2;
        }
        Object a3 = o.a(this.f20820a, this.m, this.e, this.f, obj, alVar, alVar2);
        if (a3 == null) {
            return a(alVar2, -1, -9223372036854775807L);
        }
        alVar2.a(a3, this.m);
        return a(alVar2, this.m.f20677c, f.a(alVar2.a(this.m.f20677c, this.f20820a, 0L).p));
    }

    private Pair<Boolean, Integer> a(z zVar, z zVar2, boolean z, int i, boolean z2) {
        al alVar = zVar2.f22442a;
        al alVar2 = zVar.f22442a;
        if (alVar2.c() && alVar.c()) {
            return new Pair<>(Boolean.FALSE, -1);
        }
        int i2 = 3;
        if (alVar2.c() != alVar.c()) {
            return new Pair<>(Boolean.TRUE, 3);
        }
        Object obj = alVar.a(alVar.a(zVar2.f22443b.f21637a, this.m).f20677c, this.f20820a, 0L).f20680b;
        Object obj2 = alVar2.a(alVar2.a(zVar.f22443b.f21637a, this.m).f20677c, this.f20820a, 0L).f20680b;
        int i3 = this.f20820a.n;
        if (obj.equals(obj2)) {
            return (z && i == 0 && alVar2.c(zVar.f22443b.f21637a) == i3) ? new Pair<>(Boolean.TRUE, 0) : new Pair<>(Boolean.FALSE, -1);
        }
        if (z && i == 0) {
            i2 = 1;
        } else if (z && i == 1) {
            i2 = 2;
        } else if (!z2) {
            throw new IllegalStateException();
        }
        return new Pair<>(Boolean.TRUE, Integer.valueOf(i2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x011a, code lost:
        if (r14.a(r0, r12.m, false).f20677c != r14.a(r20.f21637a, r12.m).f20677c) goto L_0x011d;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1, types: [long] */
    /* JADX WARN: Type inference failed for: r25v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.z a(com.google.android.exoplayer2.z r13, com.google.android.exoplayer2.al r14, android.util.Pair<java.lang.Object, java.lang.Long> r15) {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.n.a(com.google.android.exoplayer2.z, com.google.android.exoplayer2.al, android.util.Pair):com.google.android.exoplayer2.z");
    }

    private void a(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            this.n.remove(i3);
        }
        this.y = this.y.b(0, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final o.d dVar) {
        this.i.a(new Runnable() { // from class: com.google.android.exoplayer2._$$Lambda$n$FlI0_niP_JuQ1bnI1N_xiM8C6fo
            @Override // java.lang.Runnable
            public final void run() {
                n.this.b(dVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(z zVar, int i, ac.a aVar) {
        aVar.c(zVar.k, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(z zVar, g gVar, ac.a aVar) {
        aVar.a(zVar.g, gVar);
    }

    private void a(final z zVar, boolean z, final int i, final int i2, final int i3, boolean z2) {
        final MediaItem mediaItem;
        z zVar2 = this.g;
        this.g = zVar;
        Pair<Boolean, Integer> a2 = a(zVar, zVar2, z, i, !zVar2.f22442a.equals(zVar.f22442a));
        boolean booleanValue = ((Boolean) a2.first).booleanValue();
        final int intValue = ((Integer) a2.second).intValue();
        if (!zVar2.f22442a.equals(zVar.f22442a)) {
            this.l.a(0, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$RqCszl92RIzOIsbDh1InQBr6sd0
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.b(z.this, i2, (ac.a) obj);
                }
            });
        }
        if (z) {
            this.l.a(12, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$eFY5rmNSFEocZIQdmnzZ_JL5iS8
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    ((ac.a) obj).f(i);
                }
            });
        }
        if (booleanValue) {
            if (!zVar.f22442a.c()) {
                mediaItem = zVar.f22442a.a(zVar.f22442a.a(zVar.f22443b.f21637a, this.m).f20677c, this.f20820a, 0L).f20682d;
            } else {
                mediaItem = null;
            }
            this.l.a(1, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$oCjXo7YtkP2IAC4jF6HbBnrfIX0
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    ((ac.a) obj).a(MediaItem.this, intValue);
                }
            });
        }
        if (!(zVar2.e == zVar.e || zVar.e == null)) {
            this.l.a(11, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$gCFpyw0gSvQpibVCEyYuhuoYbjA
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.j(z.this, (ac.a) obj);
                }
            });
        }
        if (zVar2.h != zVar.h) {
            this.f21464c.a(zVar.h.f21949d);
            final g gVar = new g(zVar.h.f21948c);
            this.l.a(2, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$VeLjpfta74w884_T5hfxFuix4hY
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.a(z.this, gVar, (ac.a) obj);
                }
            });
        }
        if (!zVar2.i.equals(zVar.i)) {
            this.l.a(3, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$05a__4jMlp4sXveJHBJwWyvpiL4
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.i(z.this, (ac.a) obj);
                }
            });
        }
        if (zVar2.f != zVar.f) {
            this.l.a(4, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$1V78WlxQjN6PC3_7FMwgkgNfb5I
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.h(z.this, (ac.a) obj);
                }
            });
        }
        if (!(zVar2.f22445d == zVar.f22445d && zVar2.k == zVar.k)) {
            this.l.a(-1, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$Pu0PTaP7jtj9A1m_mQhEtdOfXpQ
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.g(z.this, (ac.a) obj);
                }
            });
        }
        if (zVar2.f22445d != zVar.f22445d) {
            this.l.a(5, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$PIt6zFYrGp8QsGYxQ_NBlQzCDKE
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.f(z.this, (ac.a) obj);
                }
            });
        }
        if (zVar2.k != zVar.k) {
            this.l.a(6, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$ItxlYlBXvsMPvVwA2x2_Uoyee24
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.a(z.this, i3, (ac.a) obj);
                }
            });
        }
        if (zVar2.l != zVar.l) {
            this.l.a(7, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$zZ5mEEn0HErVFL8sQ0vOdHUQ1RA
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.e(z.this, (ac.a) obj);
                }
            });
        }
        if (a(zVar2) != a(zVar)) {
            this.l.a(8, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$H_wiUOEG__UcdGP0HZElvjz6J_g
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.d(z.this, (ac.a) obj);
                }
            });
        }
        if (!zVar2.m.equals(zVar.m)) {
            this.l.a(13, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$_QONt1W_wAmVLxa1joskSl4yPFk
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.c(z.this, (ac.a) obj);
                }
            });
        }
        if (z2) {
            this.l.a(-1, _$$Lambda$UiV5FKGUHLRSSQHMQHet3x5tp6E.INSTANCE);
        }
        if (zVar2.n != zVar.n) {
            this.l.a(-1, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$m2gCWkk4pGIxBhB9rxbcZ9QIvpU
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    n.b(z.this, (ac.a) obj);
                }
            });
        }
        if (zVar2.o != zVar.o) {
            this.l.a(-1, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$mps_D8khkefQC7OYtptCQ_wJMN4
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    z zVar3 = z.this;
                    ((ac.a) obj).q_();
                }
            });
        }
        this.l.a();
    }

    private void a(List<com.google.android.exoplayer2.source.r> list) {
        a(list, -1, -9223372036854775807L, true);
    }

    private static boolean a(z zVar) {
        return zVar.f22445d == 3 && zVar.k && zVar.l == 0;
    }

    private List<y.c> b(List<com.google.android.exoplayer2.source.r> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            y.c cVar = new y.c(list.get(i), this.o);
            arrayList.add(cVar);
            this.n.add(i + 0, new a(cVar.f22439b, cVar.f22438a.f21626a));
        }
        this.y = this.y.a(0, arrayList.size());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(o.d dVar) {
        this.t -= dVar.f21487c;
        boolean z = true;
        if (dVar.f21488d) {
            this.u = true;
            this.v = dVar.e;
        }
        if (dVar.f) {
            this.w = dVar.g;
        }
        if (this.t == 0) {
            al alVar = dVar.f21486b.f22442a;
            if (!this.g.f22442a.c() && alVar.c()) {
                this.A = -1;
                this.C = 0L;
                this.B = 0;
            }
            if (!alVar.c()) {
                List asList = Arrays.asList(((ae) alVar).f20654a);
                if (asList.size() != this.n.size()) {
                    z = false;
                }
                com.google.android.exoplayer2.util.a.b(z);
                for (int i = 0; i < asList.size(); i++) {
                    this.n.get(i).f21466a = (al) asList.get(i);
                }
            }
            boolean z2 = this.u;
            this.u = false;
            a(dVar.f21486b, z2, this.v, 1, this.w, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(z zVar, int i, ac.a aVar) {
        aVar.a(zVar.f22442a, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(z zVar, ac.a aVar) {
    }

    private z c(int i) {
        boolean z = true;
        com.google.android.exoplayer2.util.a.a(i >= 0 && i <= this.n.size());
        int y = y();
        al alVar = this.g.f22442a;
        int size = this.n.size();
        this.t++;
        a(0, i);
        al M = M();
        z a2 = a(this.g, M, a(alVar, M));
        if (a2.f22445d == 1 || a2.f22445d == 4 || i <= 0 || i != size || y < a2.f22442a.a()) {
            z = false;
        }
        z zVar = a2;
        if (z) {
            zVar = a2.a(4);
        }
        this.k.a(0, i, this.y);
        return zVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(ac.a aVar) {
        aVar.a(ExoPlaybackException.a(new ExoTimeoutException(1)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(z zVar, ac.a aVar) {
        aVar.a(zVar.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(z zVar, ac.a aVar) {
        aVar.a(a(zVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(z zVar, ac.a aVar) {
        aVar.d(zVar.l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(z zVar, ac.a aVar) {
        aVar.b(zVar.f22445d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(z zVar, ac.a aVar) {
        aVar.b(zVar.k, zVar.f22445d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(z zVar, ac.a aVar) {
        aVar.b(zVar.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(z zVar, ac.a aVar) {
        aVar.c(zVar.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(z zVar, ac.a aVar) {
        aVar.a(zVar.e);
    }

    @Override // com.google.android.exoplayer2.ac
    public final long A() {
        return this.g.f22442a.c() ? this.C : this.g.f22443b.a() ? f.a(this.g.r) : a(this.g.f22443b, this.g.r);
    }

    @Override // com.google.android.exoplayer2.ac
    public final long B() {
        return f.a(this.g.q);
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean C() {
        return this.g.f22443b.a();
    }

    @Override // com.google.android.exoplayer2.ac
    public final int D() {
        if (C()) {
            return this.g.f22443b.f21638b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.ac
    public final int E() {
        if (C()) {
            return this.g.f22443b.f21639c;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.ac
    public final long F() {
        if (!C()) {
            return A();
        }
        this.g.f22442a.a(this.g.f22443b.f21637a, this.m);
        return this.g.f22444c == -9223372036854775807L ? f.a(this.g.f22442a.a(y(), this.f20820a, 0L).p) : f.a(this.m.e) + f.a(this.g.f22444c);
    }

    @Override // com.google.android.exoplayer2.ac
    public final long G() {
        if (this.g.f22442a.c()) {
            return this.C;
        }
        if (this.g.j.f21640d != this.g.f22443b.f21640d) {
            return f.a(this.g.f22442a.a(y(), this.f20820a, 0L).q);
        }
        long j = this.g.p;
        if (this.g.j.a()) {
            al.a a2 = this.g.f22442a.a(this.g.j.f21637a, this.m);
            j = a2.a(this.g.j.f21638b);
            if (j == Long.MIN_VALUE) {
                j = a2.f20678d;
            }
        }
        return a(this.g.j, j);
    }

    @Override // com.google.android.exoplayer2.ac
    public final TrackGroupArray H() {
        return this.g.g;
    }

    @Override // com.google.android.exoplayer2.ac
    public final g I() {
        return new g(this.g.h.f21948c);
    }

    @Override // com.google.android.exoplayer2.ac
    public final List<Metadata> J() {
        return this.g.i;
    }

    @Override // com.google.android.exoplayer2.ac
    public final al K() {
        return this.g.f22442a;
    }

    public final ad a(ad.b bVar) {
        return new ad(this.k, bVar, this.g.f22442a, y(), this.s, this.k.f21469b);
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(final int i) {
        if (this.e != i) {
            this.e = i;
            this.k.f21468a.a(11, i, 0).sendToTarget();
            this.l.b(9, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$q3CtLUtDG6UJULDVSivJVwcTShs
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    ((ac.a) obj).e(i);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(int i, long j) {
        al alVar = this.g.f22442a;
        if (i < 0 || (!alVar.c() && i >= alVar.a())) {
            throw new IllegalSeekPositionException(alVar, i, j);
        }
        int i2 = 1;
        this.t++;
        if (C()) {
            com.google.android.exoplayer2.util.n.a("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            o.d dVar = new o.d(this.g);
            dVar.a(1);
            this.j.onPlaybackInfoUpdate(dVar);
            return;
        }
        if (this.g.f22445d != 1) {
            i2 = 2;
        }
        z a2 = a(this.g.a(i2), alVar, a(alVar, i, j));
        this.k.f21468a.a(3, new o.g(alVar, i, f.b(j))).sendToTarget();
        a(a2, true, 1, 0, 1, true);
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(aa aaVar) {
        aa aaVar2 = aaVar;
        if (aaVar == null) {
            aaVar2 = aa.f20646a;
        }
        if (!this.g.m.equals(aaVar2)) {
            z a2 = this.g.a(aaVar2);
            this.t++;
            this.k.f21468a.a(4, aaVar2).sendToTarget();
            a(a2, false, 4, 0, 1, false);
        }
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(ac.a aVar) {
        this.l.a((m<ac.a, ac.b>) aVar);
    }

    @Override // com.google.android.exoplayer2.m
    @Deprecated
    public final void a(com.google.android.exoplayer2.source.r rVar) {
        b(rVar);
        q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<com.google.android.exoplayer2.source.r> list, int i, long j, boolean z) {
        i = L();
        j = A();
        this.t++;
        if (!this.n.isEmpty()) {
            a(0, this.n.size());
        }
        List<y.c> b2 = b(list);
        al M = M();
        j = -9223372036854775807L;
        if (M.c() || i < M.a()) {
            if (z) {
                i = M.b(this.f);
            } else if (i == -1) {
            }
            z a2 = a(this.g, M, a(M, i, j));
            int i2 = a2.f22445d;
            int i3 = i2;
            if (i != -1) {
                i3 = i2;
                if (a2.f22445d != 1) {
                    i3 = (M.c() || i >= M.a()) ? 4 : 2;
                }
            }
            z a3 = a2.a(i3);
            this.k.a(b2, i, f.b(j), this.y);
            a(a3, false, 4, 0, 1, false);
            return;
        }
        throw new IllegalSeekPositionException(M, i, -9223372036854775807L);
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(boolean z) {
        a(z, 0, 1);
    }

    public final void a(boolean z, int i, int i2) {
        if (this.g.k != z || this.g.l != i) {
            this.t++;
            z a2 = this.g.a(z, i);
            this.k.a(z, i);
            a(a2, false, 4, 0, i2, false);
        }
    }

    public final void a(boolean z, ExoPlaybackException exoPlaybackException) {
        z zVar;
        if (z) {
            zVar = c(this.n.size()).a((ExoPlaybackException) null);
        } else {
            z zVar2 = this.g;
            zVar = zVar2.a(zVar2.f22443b);
            zVar.p = zVar.r;
            zVar.q = 0L;
        }
        z a2 = zVar.a(1);
        z zVar3 = a2;
        if (exoPlaybackException != null) {
            zVar3 = a2.a(exoPlaybackException);
        }
        this.t++;
        this.k.b();
        a(zVar3, false, 4, 0, 1, false);
    }

    @Override // com.google.android.exoplayer2.ac
    public final int b(int i) {
        return this.h[i].a();
    }

    @Override // com.google.android.exoplayer2.ac
    public final void b(ac.a aVar) {
        m<ac.a, ac.b> mVar = this.l;
        Iterator<m.c<ac.a, ac.b>> it2 = mVar.e.iterator();
        while (it2.hasNext()) {
            m.c<ac.a, ac.b> next = it2.next();
            if (next.f22304a.equals(aVar)) {
                next.a(mVar.f22303d);
                mVar.e.remove(next);
            }
        }
    }

    @Override // com.google.android.exoplayer2.m
    public final void b(com.google.android.exoplayer2.source.r rVar) {
        a(Collections.singletonList(rVar));
    }

    @Override // com.google.android.exoplayer2.ac
    public final void b(final boolean z) {
        if (this.f != z) {
            this.f = z;
            this.k.f21468a.a(12, z ? 1 : 0, 0).sendToTarget();
            this.l.b(10, new m.a() { // from class: com.google.android.exoplayer2._$$Lambda$n$ikNlRtjPBrT8TV1lzdwJfD5Q6pg
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    ((ac.a) obj).c(z);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.ac
    public final void c(boolean z) {
        a(z, (ExoPlaybackException) null);
    }

    @Override // com.google.android.exoplayer2.m
    @Deprecated
    public final void j() {
        q();
    }

    @Override // com.google.android.exoplayer2.ac
    public final ac.d k() {
        return null;
    }

    @Override // com.google.android.exoplayer2.ac
    public final ac.c l() {
        return null;
    }

    @Override // com.google.android.exoplayer2.ac
    public final Looper m() {
        return this.f21465d;
    }

    @Override // com.google.android.exoplayer2.ac
    public final int n() {
        return this.g.f22445d;
    }

    @Override // com.google.android.exoplayer2.ac
    public final int o() {
        return this.g.l;
    }

    @Override // com.google.android.exoplayer2.ac
    public final ExoPlaybackException p() {
        return this.g.e;
    }

    @Override // com.google.android.exoplayer2.ac
    public final void q() {
        if (this.g.f22445d == 1) {
            z a2 = this.g.a((ExoPlaybackException) null);
            z a3 = a2.a(a2.f22442a.c() ? 4 : 2);
            this.t++;
            this.k.a();
            a(a3, false, 4, 1, 1, false);
        }
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean r() {
        return this.g.k;
    }

    @Override // com.google.android.exoplayer2.ac
    public final int s() {
        return this.e;
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean t() {
        return this.f;
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean u() {
        return this.g.f;
    }

    @Override // com.google.android.exoplayer2.ac
    public final aa v() {
        return this.g.m;
    }

    @Override // com.google.android.exoplayer2.ac
    public final void w() {
        StringBuilder sb = new StringBuilder("Release ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [ExoPlayerLib/2.13.3] [");
        sb.append(af.e);
        sb.append("] [");
        sb.append(p.a());
        sb.append("]");
        com.google.android.exoplayer2.util.n.b();
        if (!this.k.c()) {
            this.l.b(11, _$$Lambda$n$zZT73xA4fT0JqkNOXCpQwxqu5H8.INSTANCE);
        }
        this.l.b();
        this.i.c();
        com.google.android.exoplayer2.a.a aVar = this.q;
        if (aVar != null) {
            this.r.a(aVar);
        }
        z a2 = this.g.a(1);
        this.g = a2;
        z a3 = a2.a(a2.f22443b);
        this.g = a3;
        a3.p = a3.r;
        this.g.q = 0L;
    }

    @Override // com.google.android.exoplayer2.ac
    public final int x() {
        return this.g.f22442a.c() ? this.B : this.g.f22442a.c(this.g.f22443b.f21637a);
    }

    @Override // com.google.android.exoplayer2.ac
    public final int y() {
        int L = L();
        int i = L;
        if (L == -1) {
            i = 0;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.ac
    public final long z() {
        if (!C()) {
            return i();
        }
        r.a aVar = this.g.f22443b;
        this.g.f22442a.a(aVar.f21637a, this.m);
        return f.a(this.m.b(aVar.f21638b, aVar.f21639c));
    }

    @Override // com.google.android.exoplayer2.m
    public final h z_() {
        return this.f21464c;
    }
}
