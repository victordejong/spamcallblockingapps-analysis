package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.aa;
import com.google.android.exoplayer2.source.c;
import com.google.android.exoplayer2.source.m;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.trackselection.h;
import com.google.android.exoplayer2.trackselection.i;
import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.y;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public final p f21950a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f21951b;

    /* renamed from: c  reason: collision with root package name */
    public final aa[] f21952c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f21953d;
    public boolean e;
    public v f;
    public boolean g;
    u h;
    TrackGroupArray i = TrackGroupArray.EMPTY;
    i j;
    long k;
    private final boolean[] l;
    private final ag[] m;
    private final h n;
    private final y o;

    public u(ag[] agVarArr, long j, h hVar, b bVar, y yVar, v vVar, i iVar) {
        this.m = agVarArr;
        this.k = j;
        this.n = hVar;
        this.o = yVar;
        this.f21951b = vVar.f22354a.f21637a;
        this.f = vVar;
        this.j = iVar;
        this.f21952c = new aa[agVarArr.length];
        this.l = new boolean[agVarArr.length];
        r.a aVar = vVar.f22354a;
        long j2 = vVar.f22355b;
        long j3 = vVar.f22357d;
        Object a2 = ae.a(aVar.f21637a);
        r.a b2 = aVar.a(ae.b(aVar.f21637a));
        y.c cVar = (y.c) a.b(yVar.f22429c.get(a2));
        yVar.g.add(cVar);
        y.b bVar2 = yVar.f.get(cVar);
        if (bVar2 != null) {
            bVar2.f22435a.a(bVar2.f22436b);
        }
        cVar.f22440c.add(b2);
        m b3 = cVar.f22438a.a(b2, bVar, j2);
        yVar.f22428b.put(b3, cVar);
        yVar.d();
        p pVar = b3;
        if (j3 != -9223372036854775807L) {
            pVar = b3;
            if (j3 != Long.MIN_VALUE) {
                pVar = new c(b3, true, 0L, j3);
            }
        }
        this.f21950a = pVar;
    }

    private void a(aa[] aaVarArr) {
        int i = 0;
        while (true) {
            ag[] agVarArr = this.m;
            if (i < agVarArr.length) {
                if (agVarArr[i].a() == 7) {
                    aaVarArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void b(aa[] aaVarArr) {
        int i = 0;
        while (true) {
            ag[] agVarArr = this.m;
            if (i < agVarArr.length) {
                if (agVarArr[i].a() == 7 && this.j.a(i)) {
                    aaVarArr[i] = new com.google.android.exoplayer2.source.i();
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void f() {
        if (h()) {
            for (int i = 0; i < this.j.f21946a; i++) {
                boolean a2 = this.j.a(i);
                com.google.android.exoplayer2.trackselection.c cVar = this.j.f21948c[i];
                if (a2 && cVar != null) {
                    cVar.b();
                }
            }
        }
    }

    private void g() {
        if (h()) {
            for (int i = 0; i < this.j.f21946a; i++) {
                boolean a2 = this.j.a(i);
                com.google.android.exoplayer2.trackselection.c cVar = this.j.f21948c[i];
                if (a2 && cVar != null) {
                    cVar.c();
                }
            }
        }
    }

    private boolean h() {
        return this.h == null;
    }

    public final long a() {
        return this.f.f22355b + this.k;
    }

    public final long a(i iVar, long j) {
        return a(iVar, j, false, new boolean[this.m.length]);
    }

    public final long a(i iVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= iVar.f21946a) {
                break;
            }
            boolean[] zArr2 = this.l;
            if (z || !iVar.a(this.j, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        a(this.f21952c);
        g();
        this.j = iVar;
        f();
        long a2 = this.f21950a.a(iVar.f21948c, this.l, this.f21952c, zArr, j);
        b(this.f21952c);
        this.e = false;
        int i2 = 0;
        while (true) {
            aa[] aaVarArr = this.f21952c;
            if (i2 >= aaVarArr.length) {
                return a2;
            }
            if (aaVarArr[i2] != null) {
                a.b(iVar.a(i2));
                if (this.m[i2].a() != 7) {
                    this.e = true;
                }
            } else {
                a.b(iVar.f21948c[i2] == null);
            }
            i2++;
        }
    }

    public final i a(float f, al alVar) throws ExoPlaybackException {
        com.google.android.exoplayer2.trackselection.c[] cVarArr;
        i a2 = this.n.a(this.m, this.i, this.f.f22354a, alVar);
        for (com.google.android.exoplayer2.trackselection.c cVar : a2.f21948c) {
            if (cVar != null) {
                cVar.a(f);
            }
        }
        return a2;
    }

    public final void a(long j) {
        a.b(h());
        if (this.f21953d) {
            this.f21950a.a(j - this.k);
        }
    }

    public final void a(u uVar) {
        if (uVar != this.h) {
            g();
            this.h = uVar;
            f();
        }
    }

    public final void b(long j) {
        a.b(h());
        this.f21950a.c(j - this.k);
    }

    public final boolean b() {
        if (this.f21953d) {
            return !this.e || this.f21950a.d() == Long.MIN_VALUE;
        }
        return false;
    }

    public final long c() {
        if (!this.f21953d) {
            return this.f.f22355b;
        }
        long d2 = this.e ? this.f21950a.d() : Long.MIN_VALUE;
        return d2 == Long.MIN_VALUE ? this.f.e : d2;
    }

    public final long d() {
        if (!this.f21953d) {
            return 0L;
        }
        return this.f21950a.e();
    }

    public final void e() {
        g();
        long j = this.f.f22357d;
        y yVar = this.o;
        p pVar = this.f21950a;
        try {
            if (j == -9223372036854775807L || j == Long.MIN_VALUE) {
                yVar.a(pVar);
            } else {
                yVar.a(((c) pVar).f21591a);
            }
        } catch (RuntimeException e) {
            n.b("MediaPeriodHolder", "Period release failed.", e);
        }
    }
}
