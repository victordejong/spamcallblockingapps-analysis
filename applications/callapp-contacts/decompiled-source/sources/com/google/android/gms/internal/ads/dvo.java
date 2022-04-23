package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvo.class */
public final class dvo implements dvl {

    /* renamed from: a  reason: collision with root package name */
    final ebv f27257a;

    /* renamed from: b  reason: collision with root package name */
    final CopyOnWriteArraySet<dvk> f27258b;

    /* renamed from: c  reason: collision with root package name */
    boolean f27259c;

    /* renamed from: d  reason: collision with root package name */
    int f27260d;
    int e;
    int f;
    boolean g;
    dwe h;
    Object i;
    ebi j;
    ebw k;
    dvz l;
    dvr m;
    private final dvy[] n;
    private final ebw o;
    private final Handler p;
    private final dvp q;
    private final dwf r;
    private final dwg s;
    private boolean t;
    private int u;
    private int v;
    private int w;
    private long x;

    public dvo(dvy[] dvyVarArr, ebv ebvVar, dvx dvxVar) {
        String str = ede.e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        ecr.b(dvyVarArr.length > 0);
        this.n = (dvy[]) ecr.a(dvyVarArr);
        this.f27257a = (ebv) ecr.a(ebvVar);
        this.t = false;
        this.u = 0;
        this.f27260d = 1;
        this.f27258b = new CopyOnWriteArraySet<>();
        ebw ebwVar = new ebw(new ebu[dvyVarArr.length]);
        this.o = ebwVar;
        this.h = dwe.f27292a;
        this.r = new dwf();
        this.s = new dwg();
        this.j = ebi.f27574a;
        this.k = ebwVar;
        this.l = dvz.f27282a;
        dvq dvqVar = new dvq(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.p = dvqVar;
        dvr dvrVar = new dvr(0, 0L);
        this.m = dvrVar;
        this.q = new dvp(dvyVarArr, ebvVar, dvxVar, this.t, 0, dvqVar, dvrVar, this);
    }

    private final int j() {
        if (this.h.c() || this.e > 0) {
            return this.v;
        }
        this.h.a(this.m.f27266a, this.s, false);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final int a() {
        return this.f27260d;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void a(int i) {
        this.q.e = i;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void a(long j) {
        int j2 = j();
        if (j2 < 0 || (!this.h.c() && j2 >= this.h.a())) {
            throw new zzhu(this.h, j2, j);
        }
        this.e++;
        this.v = j2;
        if (!this.h.c()) {
            this.h.a(j2, this.r);
            if (j != -9223372036854775807L) {
                dvj.b(j);
            }
            this.h.a(0, this.s, false);
        }
        this.w = 0;
        if (j == -9223372036854775807L) {
            this.x = 0L;
            this.q.a(this.h, j2, -9223372036854775807L);
            return;
        }
        this.x = j;
        this.q.a(this.h, j2, dvj.b(j));
        Iterator<dvk> it2 = this.f27258b.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void a(dvk dvkVar) {
        this.f27258b.add(dvkVar);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void a(eau eauVar) {
        if (!this.h.c() || this.i != null) {
            this.h = dwe.f27292a;
            this.i = null;
            Iterator<dvk> it2 = this.f27258b.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
        if (this.f27259c) {
            this.f27259c = false;
            this.j = ebi.f27574a;
            this.k = this.o;
            this.f27257a.a(null);
            Iterator<dvk> it3 = this.f27258b.iterator();
            while (it3.hasNext()) {
                it3.next();
            }
        }
        this.f++;
        this.q.f27261a.obtainMessage(0, 1, 0, eauVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void a(boolean z) {
        if (this.t != z) {
            this.t = z;
            this.q.f27261a.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            Iterator<dvk> it2 = this.f27258b.iterator();
            while (it2.hasNext()) {
                it2.next().b(this.f27260d);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void a(dvm... dvmVarArr) {
        dvp dvpVar = this.q;
        if (dvpVar.f27262b) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        dvpVar.f27263c++;
        dvpVar.f27261a.obtainMessage(11, dvmVarArr).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void b(int i) {
        this.q.f = i;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void b(dvk dvkVar) {
        this.f27258b.remove(dvkVar);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void b(dvm... dvmVarArr) {
        this.q.a(dvmVarArr);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final boolean b() {
        return this.t;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void c() {
        this.q.f27261a.sendEmptyMessage(5);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void d() {
        this.q.a();
        this.p.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final int e() {
        return this.n.length;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final long f() {
        if (this.h.c()) {
            return -9223372036854775807L;
        }
        return dvj.a(this.h.a(j(), this.r).i);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final long g() {
        if (this.h.c() || this.e > 0) {
            return this.x;
        }
        this.h.a(this.m.f27266a, this.s, false);
        return dvj.a(this.s.f) + dvj.a(this.m.f27268c);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final long h() {
        if (this.h.c() || this.e > 0) {
            return this.x;
        }
        this.h.a(this.m.f27266a, this.s, false);
        return dvj.a(this.s.f) + dvj.a(this.m.f27269d);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    public final void i() {
        this.q.f27264d = true;
    }
}
