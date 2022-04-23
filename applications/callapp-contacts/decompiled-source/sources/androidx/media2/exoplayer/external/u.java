package androidx.media2.exoplayer.external;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import androidx.media2.exoplayer.external.af;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.e;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.trackselection.g;
import androidx.media2.exoplayer.external.trackselection.h;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.i;
import androidx.media2.exoplayer.external.util.j;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u.class */
public final class u implements Handler.Callback, af.a, e.a, s.a, t.b, g.a {
    private boolean A;
    private boolean B;
    private int C;
    private d D;
    private long E;
    private int F;

    /* renamed from: a  reason: collision with root package name */
    public final i f3992a;

    /* renamed from: b  reason: collision with root package name */
    final HandlerThread f3993b;

    /* renamed from: c  reason: collision with root package name */
    private final ag[] f3994c;

    /* renamed from: d  reason: collision with root package name */
    private final ah[] f3995d;
    private final g e;
    private final h f;
    private final y g;
    private final androidx.media2.exoplayer.external.upstream.c h;
    private final Handler i;
    private final al.b j;
    private final al.a k;
    private final long l;
    private final boolean m;
    private final e n;
    private final ArrayList<b> p;
    private final androidx.media2.exoplayer.external.util.b q;
    private ac t;
    private t u;
    private ag[] v;
    private boolean w;
    private boolean x;
    private boolean y;
    private int z;
    private final ab r = new ab();
    private aj s = aj.e;
    private final c o = new c();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final t f3996a;

        /* renamed from: b  reason: collision with root package name */
        public final al f3997b;

        public a(t tVar, al alVar) {
            this.f3996a = tVar;
            this.f3997b = alVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u$b.class */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public final af f3998a;

        /* renamed from: b  reason: collision with root package name */
        public int f3999b;

        /* renamed from: c  reason: collision with root package name */
        public long f4000c;

        /* renamed from: d  reason: collision with root package name */
        public Object f4001d;

        public b(af afVar) {
            this.f3998a = afVar;
        }

        public final void a(int i, long j, Object obj) {
            this.f3999b = i;
            this.f4000c = j;
            this.f4001d = obj;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(b bVar) {
            b bVar2 = bVar;
            Object obj = this.f4001d;
            if ((obj == null) != (bVar2.f4001d == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.f3999b - bVar2.f3999b;
            return i != 0 ? i : ac.b(this.f4000c, bVar2.f4000c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        int f4002a;

        /* renamed from: b  reason: collision with root package name */
        boolean f4003b;

        /* renamed from: c  reason: collision with root package name */
        int f4004c;

        /* renamed from: d  reason: collision with root package name */
        private ac f4005d;

        private c() {
        }

        public final void a(int i) {
            this.f4002a += i;
        }

        public final boolean a(ac acVar) {
            return acVar != this.f4005d || this.f4002a > 0 || this.f4003b;
        }

        public final void b(int i) {
            boolean z = true;
            if (!this.f4003b || this.f4004c == 4) {
                this.f4003b = true;
                this.f4004c = i;
                return;
            }
            if (i != 4) {
                z = false;
            }
            androidx.media2.exoplayer.external.util.a.a(z);
        }

        public final void b(ac acVar) {
            this.f4005d = acVar;
            this.f4002a = 0;
            this.f4003b = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final al f4006a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4007b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4008c;

        public d(al alVar, int i, long j) {
            this.f4006a = alVar;
            this.f4007b = i;
            this.f4008c = j;
        }
    }

    public u(ag[] agVarArr, g gVar, h hVar, y yVar, androidx.media2.exoplayer.external.upstream.c cVar, boolean z, int i, boolean z2, Handler handler, androidx.media2.exoplayer.external.util.b bVar) {
        this.f3994c = agVarArr;
        this.e = gVar;
        this.f = hVar;
        this.g = yVar;
        this.h = cVar;
        this.x = z;
        this.z = i;
        this.A = z2;
        this.i = handler;
        this.q = bVar;
        this.l = yVar.e();
        this.m = yVar.f();
        this.t = ac.a(-9223372036854775807L, hVar);
        this.f3995d = new ah[agVarArr.length];
        for (int i2 = 0; i2 < agVarArr.length; i2++) {
            agVarArr[i2].a(i2);
            this.f3995d[i2] = agVarArr[i2].b();
        }
        this.n = new e(this, bVar);
        this.p = new ArrayList<>();
        this.v = new ag[0];
        this.j = new al.b();
        this.k = new al.a();
        gVar.f3986b = this;
        gVar.f3987c = cVar;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f3993b = handlerThread;
        handlerThread.start();
        this.f3992a = bVar.a(handlerThread.getLooper(), this);
    }

    private long a(t.a aVar, long j) throws ExoPlaybackException {
        return a(aVar, j, this.r.f2804d != this.r.e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
        if ((r0.j + r8) < 0) goto L_0x0073;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f7  */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.media2.exoplayer.external.u] */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long a(androidx.media2.exoplayer.external.source.t.a r7, long r8, boolean r10) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.u.a(androidx.media2.exoplayer.external.source.t$a, long, boolean):long");
    }

    private Pair<Object, Long> a(al alVar, int i) {
        return alVar.a(this.j, this.k, i, -9223372036854775807L);
    }

    private Pair<Object, Long> a(d dVar, boolean z) {
        int a2;
        al alVar = this.t.f2805a;
        al alVar2 = dVar.f4006a;
        if (alVar.a()) {
            return null;
        }
        al alVar3 = alVar2;
        if (alVar2.a()) {
            alVar3 = alVar;
        }
        try {
            Pair<Object, Long> a3 = alVar3.a(this.j, this.k, dVar.f4007b, dVar.f4008c);
            if (alVar != alVar3 && (a2 = alVar.a(a3.first)) == -1) {
                if (!z || a(a3.first, alVar3, alVar) == null) {
                    return null;
                }
                return a(alVar, alVar.a(a2, this.k, false).f2832c);
            }
            return a3;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    private Object a(Object obj, al alVar, al alVar2) {
        int a2 = alVar.a(obj);
        int c2 = alVar.c();
        int i = -1;
        for (int i2 = 0; i2 < c2 && i == -1; i2++) {
            a2 = alVar.a(a2, this.k, this.j, this.z, this.A);
            if (a2 == -1) {
                break;
            }
            i = alVar2.a(alVar.a(a2));
        }
        if (i == -1) {
            return null;
        }
        return alVar2.a(i);
    }

    private void a(int i) {
        if (this.t.e != i) {
            this.t = this.t.a(i);
        }
    }

    private void a(int i, boolean z, int i2) throws ExoPlaybackException {
        z zVar = this.r.f2804d;
        ag agVar = this.f3994c[i];
        this.v[i2] = agVar;
        if (agVar.i_() == 0) {
            h hVar = zVar.i;
            RendererConfiguration rendererConfiguration = hVar.f3989b[i];
            Format[] a2 = a(hVar.f3990c.f3984b[i]);
            boolean z2 = this.x && this.t.e == 3;
            agVar.a(rendererConfiguration, a2, zVar.f4260c[i], this.E, !z && z2, zVar.j);
            this.n.a(agVar);
            if (z2) {
                agVar.e();
            }
        }
    }

    private void a(long j) throws ExoPlaybackException {
        z zVar = this.r.f2804d;
        if (zVar != null) {
            j += zVar.j;
        }
        this.E = j;
        this.n.a(j);
        for (ag agVar : this.v) {
            agVar.a(this.E);
        }
        h();
    }

    private void a(long j, long j2) {
        this.f3992a.b();
        this.f3992a.a(j + j2);
    }

    private void a(ad adVar, boolean z) {
        this.f3992a.a(17, z ? 1 : 0, 0, adVar).sendToTarget();
    }

    private static void a(ag agVar) throws ExoPlaybackException {
        if (agVar.i_() == 2) {
            agVar.l();
        }
    }

    private void a(h hVar) {
        this.g.a(this.f3994c, hVar.f3990c);
    }

    private void a(z zVar) throws ExoPlaybackException {
        z zVar2 = this.r.f2804d;
        if (zVar2 != null && zVar != zVar2) {
            boolean[] zArr = new boolean[this.f3994c.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                ag[] agVarArr = this.f3994c;
                if (i < agVarArr.length) {
                    ag agVar = agVarArr[i];
                    zArr[i] = agVar.i_() != 0;
                    i2 = i2;
                    if (zVar2.i.a(i)) {
                        i2++;
                    }
                    if (zArr[i] && (!zVar2.i.a(i) || (agVar.j() && agVar.f() == zVar.f4260c[i]))) {
                        b(agVar);
                    }
                    i++;
                } else {
                    this.t = this.t.a(zVar2.h, zVar2.i);
                    a(zArr, i2);
                    return;
                }
            }
        }
    }

    private void a(boolean z) {
        if (this.t.g != z) {
            this.t = this.t.a(z);
        }
    }

    private void a(boolean z, AtomicBoolean atomicBoolean) {
        ag[] agVarArr;
        if (this.B != z) {
            this.B = z;
            if (!z) {
                for (ag agVar : this.f3994c) {
                    if (agVar.i_() == 0) {
                        agVar.n();
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

    private void a(boolean z, boolean z2, boolean z3) {
        a(z || !this.B, true, z2, z2, z2);
        this.o.a(this.C + (z3 ? 1 : 0));
        this.C = 0;
        this.g.b();
        a(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0205  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(boolean r23, boolean r24, boolean r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.u.a(boolean, boolean, boolean, boolean, boolean):void");
    }

    private void a(boolean[] zArr, int i) throws ExoPlaybackException {
        this.v = new ag[i];
        h hVar = this.r.f2804d.i;
        for (int i2 = 0; i2 < this.f3994c.length; i2++) {
            if (!hVar.a(i2)) {
                this.f3994c[i2].n();
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f3994c.length; i4++) {
            i3 = i3;
            if (hVar.a(i4)) {
                a(i4, zArr[i4], i3);
                i3++;
            }
        }
    }

    private boolean a(b bVar) {
        if (bVar.f4001d == null) {
            Pair<Object, Long> a2 = a(new d(bVar.f3998a.f2814b, bVar.f3998a.f, androidx.media2.exoplayer.external.c.b(bVar.f3998a.g)), false);
            if (a2 == null) {
                return false;
            }
            bVar.a(this.t.f2805a.a(a2.first), ((Long) a2.second).longValue(), a2.first);
            return true;
        }
        int a3 = this.t.f2805a.a(bVar.f4001d);
        if (a3 == -1) {
            return false;
        }
        bVar.f3999b = a3;
        return true;
    }

    private static Format[] a(androidx.media2.exoplayer.external.trackselection.e eVar) {
        int f = eVar != null ? eVar.f() : 0;
        Format[] formatArr = new Format[f];
        for (int i = 0; i < f; i++) {
            formatArr[i] = eVar.a(i);
        }
        return formatArr;
    }

    private long b(long j) {
        z zVar = this.r.f;
        if (zVar == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.E - zVar.j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a5 A[LOOP:0: B:13:0x006b->B:23:0x00a5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0065 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014e A[EDGE_INSN: B:79:0x014e->B:95:0x014e ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c3 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0065 -> B:13:0x006b). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00dc -> B:28:0x00e2). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(long r6, long r8) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.u.b(long, long):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(af afVar) throws ExoPlaybackException {
        if (!afVar.b()) {
            try {
                afVar.f2813a.a(afVar.f2815c, afVar.f2816d);
            } finally {
                afVar.a(true);
            }
        }
    }

    private void b(ag agVar) throws ExoPlaybackException {
        this.n.b(agVar);
        a(agVar);
        agVar.m();
    }

    private void b(boolean z) throws ExoPlaybackException {
        t.a aVar = this.r.f2804d.f.f2797a;
        long a2 = a(aVar, this.t.m, true);
        if (a2 != this.t.m) {
            ac acVar = this.t;
            this.t = acVar.a(aVar, a2, acVar.f2808d, n());
            if (z) {
                this.o.b(4);
            }
        }
    }

    private void c() {
        if (this.o.a(this.t)) {
            this.i.obtainMessage(0, this.o.f4002a, this.o.f4003b ? this.o.f4004c : -1, this.t).sendToTarget();
            this.o.b(this.t);
        }
    }

    private void c(af afVar) throws ExoPlaybackException {
        if (afVar.e.getLooper() == this.f3992a.a()) {
            b(afVar);
            if (this.t.e == 3 || this.t.e == 2) {
                this.f3992a.b(2);
                return;
            }
            return;
        }
        this.f3992a.a(16, afVar).sendToTarget();
    }

    private void c(boolean z) {
        z zVar = this.r.f;
        t.a aVar = zVar == null ? this.t.f2806b : zVar.f.f2797a;
        boolean z2 = !this.t.j.equals(aVar);
        if (z2) {
            this.t = this.t.a(aVar);
        }
        ac acVar = this.t;
        acVar.k = zVar == null ? acVar.m : zVar.c();
        this.t.l = n();
        if ((z2 || z) && zVar != null && zVar.f4261d) {
            a(zVar.i);
        }
    }

    private void d() throws ExoPlaybackException {
        this.y = false;
        this.n.a();
        for (ag agVar : this.v) {
            agVar.e();
        }
    }

    private void e() throws ExoPlaybackException {
        this.n.b();
        for (ag agVar : this.v) {
            a(agVar);
        }
    }

    private void f() throws ExoPlaybackException {
        z zVar = this.r.f2804d;
        if (zVar != null) {
            long c2 = zVar.f4261d ? zVar.f4258a.c() : -9223372036854775807L;
            if (c2 != -9223372036854775807L) {
                a(c2);
                if (c2 != this.t.m) {
                    ac acVar = this.t;
                    this.t = acVar.a(acVar.f2806b, c2, this.t.f2808d, n());
                    this.o.b(4);
                }
            } else {
                long a2 = this.n.a(zVar != this.r.e);
                this.E = a2;
                long j = a2 - zVar.j;
                b(this.t.m, j);
                this.t.m = j;
            }
            this.t.k = this.r.f.c();
            this.t.l = n();
        }
    }

    private void g() {
        a(true, true, true, true, false);
        this.g.c();
        a(1);
        this.f3993b.quit();
        synchronized (this) {
            this.w = true;
            notifyAll();
        }
    }

    private void h() {
        for (z zVar = this.r.f2804d; zVar != null; zVar = zVar.g) {
            zVar.i.f3990c.a();
        }
    }

    private boolean i() {
        z zVar = this.r.f2804d;
        long j = zVar.f.e;
        if (zVar.f4261d) {
            return j == -9223372036854775807L || this.t.m < j;
        }
        return false;
    }

    private void j() {
        a(4);
        a(false, false, true, false, true);
    }

    private boolean k() {
        z zVar = this.r.e;
        if (!zVar.f4261d) {
            return false;
        }
        int i = 0;
        while (true) {
            ag[] agVarArr = this.f3994c;
            if (i >= agVarArr.length) {
                return true;
            }
            ag agVar = agVarArr[i];
            androidx.media2.exoplayer.external.source.al alVar = zVar.f4260c[i];
            if (agVar.f() != alVar) {
                return false;
            }
            if (alVar != null && !agVar.g()) {
                return false;
            }
            i++;
        }
    }

    private void l() {
        ag[] agVarArr;
        for (ag agVar : this.f3994c) {
            if (agVar.f() != null) {
                agVar.i();
            }
        }
    }

    private void m() {
        z zVar = this.r.f;
        long d2 = zVar.d();
        if (d2 == Long.MIN_VALUE) {
            a(false);
            return;
        }
        boolean a2 = this.g.a(b(d2), this.n.d().f2810b);
        a(a2);
        if (a2) {
            zVar.b(this.E);
        }
    }

    private long n() {
        return b(this.t.k);
    }

    public final void a() {
        synchronized (this) {
            if (!this.w) {
                this.f3992a.b(7);
                boolean z = false;
                while (!this.w) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        z = true;
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.e.a
    public final void a(ad adVar) {
        a(adVar, false);
    }

    @Override // androidx.media2.exoplayer.external.af.a
    public final void a(af afVar) {
        synchronized (this) {
            if (this.w) {
                j.a("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                afVar.a(false);
                return;
            }
            this.f3992a.a(15, afVar).sendToTarget();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.am.a
    public final /* synthetic */ void a(s sVar) {
        this.f3992a.a(10, sVar).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.source.s.a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void a2(s sVar) {
        this.f3992a.a(9, sVar).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.source.t.b
    public final void a(t tVar, al alVar) {
        this.f3992a.a(8, new a(tVar, alVar)).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.trackselection.g.a
    public final void b() {
        this.f3992a.b(11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:256:0x087e, code lost:
        if (r0.a(r24) != false) goto L_0x0881;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0881, code lost:
        r23 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x08c1, code lost:
        if (r0.a(r24) != false) goto L_0x0881;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x098c, code lost:
        if (r23 == false) goto L_0x09a9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:682:0x12e4, code lost:
        if (r45 == false) goto L_0x12e7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:311:0x09af A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TRY_LEAVE, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0c34 A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TRY_LEAVE, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0cde A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0e6a A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_LEAVE, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0e82 A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0ff2 A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_LEAVE, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:556:0x1036  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x11c9 A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:746:0x147f  */
    /* JADX WARN: Removed duplicated region for block: B:747:0x148a  */
    /* JADX WARN: Removed duplicated region for block: B:775:0x02bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:808:0x10ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02ad  */
    /* JADX WARN: Type inference failed for: r0v510, types: [long] */
    /* JADX WARN: Type inference failed for: r0v540, types: [androidx.media2.exoplayer.external.source.s] */
    /* JADX WARN: Type inference failed for: r0v795, types: [androidx.media2.exoplayer.external.ab] */
    /* JADX WARN: Type inference failed for: r1v134, types: [androidx.media2.exoplayer.external.ac] */
    /* JADX WARN: Type inference failed for: r20v0, types: [androidx.media2.exoplayer.external.source.t$b, androidx.media2.exoplayer.external.u, androidx.media2.exoplayer.external.source.s$a] */
    /* JADX WARN: Type inference failed for: r30v12 */
    /* JADX WARN: Type inference failed for: r30v13 */
    /* JADX WARN: Type inference failed for: r30v17, types: [long] */
    /* JADX WARN: Type inference failed for: r30v25 */
    /* JADX WARN: Type inference failed for: r30v27 */
    /* JADX WARN: Type inference failed for: r30v37 */
    /* JADX WARN: Type inference failed for: r30v38 */
    /* JADX WARN: Type inference failed for: r30v39 */
    /* JADX WARN: Type inference failed for: r30v4, types: [long] */
    /* JADX WARN: Type inference failed for: r30v46 */
    /* JADX WARN: Type inference failed for: r30v47 */
    /* JADX WARN: Type inference failed for: r30v48 */
    /* JADX WARN: Type inference failed for: r30v49 */
    /* JADX WARN: Type inference failed for: r30v5 */
    /* JADX WARN: Type inference failed for: r30v6 */
    /* JADX WARN: Type inference failed for: r30v8, types: [long] */
    /* JADX WARN: Type inference failed for: r36v24 */
    /* JADX WARN: Type inference failed for: r36v25 */
    /* JADX WARN: Type inference failed for: r36v26 */
    /* JADX WARN: Type inference failed for: r36v5, types: [long] */
    /* JADX WARN: Type inference failed for: r36v6, types: [long] */
    /* JADX WARN: Type inference failed for: r36v8 */
    /* JADX WARN: Type inference failed for: r36v9 */
    /* JADX WARN: Type inference failed for: r40v6 */
    /* JADX WARN: Unknown variable types count: 7 */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r21) {
        /*
            Method dump skipped, instructions count: 5384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.u.handleMessage(android.os.Message):boolean");
    }
}
