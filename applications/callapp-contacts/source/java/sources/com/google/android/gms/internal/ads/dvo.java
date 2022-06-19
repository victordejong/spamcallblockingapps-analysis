package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvo.class */
public final class dvo implements dvl {

    /* renamed from: a */
    final ebv f47665a;

    /* renamed from: b */
    final CopyOnWriteArraySet<dvk> f47666b;

    /* renamed from: c */
    boolean f47667c;

    /* renamed from: d */
    int f47668d;

    /* renamed from: e */
    int f47669e;

    /* renamed from: f */
    int f47670f;

    /* renamed from: g */
    boolean f47671g;

    /* renamed from: h */
    dwe f47672h;

    /* renamed from: i */
    Object f47673i;

    /* renamed from: j */
    ebi f47674j;

    /* renamed from: k */
    ebw f47675k;

    /* renamed from: l */
    dvz f47676l;

    /* renamed from: m */
    dvr f47677m;

    /* renamed from: n */
    private final dvy[] f47678n;

    /* renamed from: o */
    private final ebw f47679o;

    /* renamed from: p */
    private final Handler f47680p;

    /* renamed from: q */
    private final dvp f47681q;

    /* renamed from: r */
    private final dwf f47682r;

    /* renamed from: s */
    private final dwg f47683s;

    /* renamed from: t */
    private boolean f47684t;

    /* renamed from: u */
    private int f47685u;

    /* renamed from: v */
    private int f47686v;

    /* renamed from: w */
    private int f47687w;

    /* renamed from: x */
    private long f47688x;

    public dvo(dvy[] dvyVarArr, ebv ebvVar, dvx dvxVar) {
        String str = ede.f48743e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        ecr.m15247b(dvyVarArr.length > 0);
        this.f47678n = (dvy[]) ecr.m15251a(dvyVarArr);
        this.f47665a = (ebv) ecr.m15251a(ebvVar);
        this.f47684t = false;
        this.f47685u = 0;
        this.f47668d = 1;
        this.f47666b = new CopyOnWriteArraySet<>();
        ebw ebwVar = new ebw(new ebu[dvyVarArr.length]);
        this.f47679o = ebwVar;
        this.f47672h = dwe.f47769a;
        this.f47682r = new dwf();
        this.f47683s = new dwg();
        this.f47674j = ebi.f48603a;
        this.f47675k = ebwVar;
        this.f47676l = dvz.f47757a;
        dvq dvqVar = new dvq(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.f47680p = dvqVar;
        dvr dvrVar = new dvr(0, 0L);
        this.f47677m = dvrVar;
        this.f47681q = new dvp(dvyVarArr, ebvVar, dvxVar, this.f47684t, 0, dvqVar, dvrVar, this);
    }

    /* renamed from: j */
    private final int m15635j() {
        if (this.f47672h.m15574c() || this.f47669e > 0) {
            return this.f47686v;
        }
        this.f47672h.mo15311a(this.f47677m.f47726a, this.f47683s, false);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: a */
    public final int mo15653a() {
        return this.f47668d;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: a */
    public final void mo15652a(int i) {
        this.f47681q.f47703e = i;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: a */
    public final void mo15651a(long j) {
        int m15635j = m15635j();
        if (m15635j < 0 || (!this.f47672h.m15574c() && m15635j >= this.f47672h.mo15313a())) {
            throw new zzhu(this.f47672h, m15635j, j);
        }
        this.f47669e++;
        this.f47686v = m15635j;
        if (!this.f47672h.m15574c()) {
            this.f47672h.mo15312a(m15635j, this.f47682r);
            if (j != -9223372036854775807L) {
                dvj.m15656b(j);
            }
            this.f47672h.mo15311a(0, this.f47683s, false);
        }
        this.f47687w = 0;
        if (j == -9223372036854775807L) {
            this.f47688x = 0L;
            this.f47681q.m15625a(this.f47672h, m15635j, -9223372036854775807L);
            return;
        }
        this.f47688x = j;
        this.f47681q.m15625a(this.f47672h, m15635j, dvj.m15656b(j));
        Iterator<dvk> it2 = this.f47666b.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: a */
    public final void mo15650a(dvk dvkVar) {
        this.f47666b.add(dvkVar);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: a */
    public final void mo15649a(eau eauVar) {
        if (!this.f47672h.m15574c() || this.f47673i != null) {
            this.f47672h = dwe.f47769a;
            this.f47673i = null;
            Iterator<dvk> it2 = this.f47666b.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
        if (this.f47667c) {
            this.f47667c = false;
            this.f47674j = ebi.f48603a;
            this.f47675k = this.f47679o;
            this.f47665a.mo15298a(null);
            Iterator<dvk> it3 = this.f47666b.iterator();
            while (it3.hasNext()) {
                it3.next();
            }
        }
        this.f47670f++;
        this.f47681q.f47699a.obtainMessage(0, 1, 0, eauVar).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: a */
    public final void mo15648a(boolean z) {
        if (this.f47684t != z) {
            this.f47684t = z;
            this.f47681q.f47699a.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            Iterator<dvk> it2 = this.f47666b.iterator();
            while (it2.hasNext()) {
                it2.next().mo15654b(this.f47668d);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: a */
    public final void mo15647a(dvm... dvmVarArr) {
        dvp dvpVar = this.f47681q;
        if (dvpVar.f47700b) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        dvpVar.f47701c++;
        dvpVar.f47699a.obtainMessage(11, dvmVarArr).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: b */
    public final void mo15645b(int i) {
        this.f47681q.f47704f = i;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: b */
    public final void mo15644b(dvk dvkVar) {
        this.f47666b.remove(dvkVar);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: b */
    public final void mo15643b(dvm... dvmVarArr) {
        this.f47681q.m15622a(dvmVarArr);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: b */
    public final boolean mo15646b() {
        return this.f47684t;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: c */
    public final void mo15642c() {
        this.f47681q.f47699a.sendEmptyMessage(5);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: d */
    public final void mo15641d() {
        this.f47681q.m15634a();
        this.f47680p.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: e */
    public final int mo15640e() {
        return this.f47678n.length;
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: f */
    public final long mo15639f() {
        if (this.f47672h.m15574c()) {
            return -9223372036854775807L;
        }
        return dvj.m15657a(this.f47672h.mo15312a(m15635j(), this.f47682r).f47778i);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: g */
    public final long mo15638g() {
        if (this.f47672h.m15574c() || this.f47669e > 0) {
            return this.f47688x;
        }
        this.f47672h.mo15311a(this.f47677m.f47726a, this.f47683s, false);
        return dvj.m15657a(this.f47683s.f47785f) + dvj.m15657a(this.f47677m.f47728c);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: h */
    public final long mo15637h() {
        if (this.f47672h.m15574c() || this.f47669e > 0) {
            return this.f47688x;
        }
        this.f47672h.mo15311a(this.f47677m.f47726a, this.f47683s, false);
        return dvj.m15657a(this.f47683s.f47785f) + dvj.m15657a(this.f47677m.f47729d);
    }

    @Override // com.google.android.gms.internal.ads.dvl
    /* renamed from: i */
    public final void mo15636i() {
        this.f47681q.f47702d = true;
    }
}
