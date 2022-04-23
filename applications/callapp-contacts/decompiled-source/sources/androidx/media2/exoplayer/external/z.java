package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.al;
import androidx.media2.exoplayer.external.source.c;
import androidx.media2.exoplayer.external.source.m;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.trackselection.e;
import androidx.media2.exoplayer.external.trackselection.f;
import androidx.media2.exoplayer.external.trackselection.g;
import androidx.media2.exoplayer.external.trackselection.h;
import androidx.media2.exoplayer.external.upstream.b;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.j;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/z.class */
final class z {

    /* renamed from: a  reason: collision with root package name */
    public final s f4258a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f4259b;

    /* renamed from: c  reason: collision with root package name */
    public final al[] f4260c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4261d;
    public boolean e;
    public aa f;
    z g;
    TrackGroupArray h = TrackGroupArray.EMPTY;
    h i;
    long j;
    private final boolean[] k;
    private final ah[] l;
    private final g m;
    private final t n;

    public z(ah[] ahVarArr, long j, g gVar, b bVar, t tVar, aa aaVar, h hVar) {
        this.l = ahVarArr;
        this.j = j;
        this.m = gVar;
        this.n = tVar;
        this.f4259b = aaVar.f2797a.f3748a;
        this.f = aaVar;
        this.i = hVar;
        this.f4260c = new al[ahVarArr.length];
        this.k = new boolean[ahVarArr.length];
        t.a aVar = aaVar.f2797a;
        long j2 = aaVar.f2798b;
        long j3 = aaVar.f2800d;
        s a2 = tVar.a(aVar, bVar, j2);
        s sVar = a2;
        if (j3 != -9223372036854775807L) {
            sVar = a2;
            if (j3 != Long.MIN_VALUE) {
                sVar = new c(a2, true, 0L, j3);
            }
        }
        this.f4258a = sVar;
    }

    private void a(al[] alVarArr) {
        int i = 0;
        while (true) {
            ah[] ahVarArr = this.l;
            if (i < ahVarArr.length) {
                if (ahVarArr[i].a() == 6) {
                    alVarArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void b(al[] alVarArr) {
        int i = 0;
        while (true) {
            ah[] ahVarArr = this.l;
            if (i < ahVarArr.length) {
                if (ahVarArr[i].a() == 6 && this.i.a(i)) {
                    alVarArr[i] = new m();
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void f() {
        if (h()) {
            for (int i = 0; i < this.i.f3988a; i++) {
                boolean a2 = this.i.a(i);
                e eVar = this.i.f3990c.f3984b[i];
                if (a2 && eVar != null) {
                    eVar.d();
                }
            }
        }
    }

    private void g() {
        if (h()) {
            for (int i = 0; i < this.i.f3988a; i++) {
                this.i.a(i);
            }
        }
    }

    private boolean h() {
        return this.g == null;
    }

    public final long a() {
        return this.f.f2798b + this.j;
    }

    public final long a(h hVar, long j) {
        return a(hVar, j, false, new boolean[this.l.length]);
    }

    public final long a(h hVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= hVar.f3988a) {
                break;
            }
            boolean[] zArr2 = this.k;
            if (z || !hVar.a(this.i, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        a(this.f4260c);
        g();
        this.i = hVar;
        f();
        f fVar = hVar.f3990c;
        long a2 = this.f4258a.a(fVar.a(), this.k, this.f4260c, zArr, j);
        b(this.f4260c);
        this.e = false;
        int i2 = 0;
        while (true) {
            al[] alVarArr = this.f4260c;
            if (i2 >= alVarArr.length) {
                return a2;
            }
            if (alVarArr[i2] != null) {
                a.b(hVar.a(i2));
                if (this.l[i2].a() != 6) {
                    this.e = true;
                }
            } else {
                a.b(fVar.f3984b[i2] == null);
            }
            i2++;
        }
    }

    public final h a(float f) throws ExoPlaybackException {
        e[] a2;
        h a3 = this.m.a(this.l, this.h);
        for (e eVar : a3.f3990c.a()) {
            if (eVar != null) {
                eVar.a(f);
            }
        }
        return a3;
    }

    public final void a(long j) {
        a.b(h());
        if (this.f4261d) {
            this.f4258a.a(j - this.j);
        }
    }

    public final void a(z zVar) {
        if (zVar != this.g) {
            g();
            this.g = zVar;
            f();
        }
    }

    public final void b(long j) {
        a.b(h());
        this.f4258a.c(j - this.j);
    }

    public final boolean b() {
        if (this.f4261d) {
            return !this.e || this.f4258a.d() == Long.MIN_VALUE;
        }
        return false;
    }

    public final long c() {
        if (!this.f4261d) {
            return this.f.f2798b;
        }
        long d2 = this.e ? this.f4258a.d() : Long.MIN_VALUE;
        return d2 == Long.MIN_VALUE ? this.f.e : d2;
    }

    public final long d() {
        if (!this.f4261d) {
            return 0L;
        }
        return this.f4258a.e();
    }

    public final void e() {
        g();
        long j = this.f.f2800d;
        t tVar = this.n;
        s sVar = this.f4258a;
        try {
            if (j == -9223372036854775807L || j == Long.MIN_VALUE) {
                tVar.a(sVar);
            } else {
                tVar.a(((c) sVar).f3596a);
            }
        } catch (RuntimeException e) {
            j.b("MediaPeriodHolder", "Period release failed.", e);
        }
    }
}
