package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.gms.internal.ads.lb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lb.class */
public final class C6695lb implements AbstractC6583ib {

    /* renamed from: a */
    private final AbstractC7028ub[] f26005a;

    /* renamed from: b */
    private final AbstractC6701lh f26006b;

    /* renamed from: c */
    private final C6627jh f26007c;

    /* renamed from: d */
    private final Handler f26008d;

    /* renamed from: e */
    private final C6880qb f26009e;

    /* renamed from: i */
    private boolean f26013i;

    /* renamed from: l */
    private int f26016l;

    /* renamed from: m */
    private int f26017m;

    /* renamed from: n */
    private boolean f26018n;

    /* renamed from: p */
    private Object f26020p;

    /* renamed from: r */
    private C6627jh f26022r;

    /* renamed from: t */
    private C6769nb f26024t;

    /* renamed from: u */
    private long f26025u;

    /* renamed from: j */
    private boolean f26014j = false;

    /* renamed from: k */
    private int f26015k = 1;

    /* renamed from: f */
    private final CopyOnWriteArraySet<AbstractC6435eb> f26010f = new CopyOnWriteArraySet<>();

    /* renamed from: o */
    private AbstractC6287ac f26019o = AbstractC6287ac.f19871a;

    /* renamed from: g */
    private final C7213zb f26011g = new C7213zb();

    /* renamed from: h */
    private final C7176yb f26012h = new C7176yb();

    /* renamed from: q */
    private C7181yg f26021q = C7181yg.f32492a;

    /* renamed from: s */
    private C6991tb f26023s = C6991tb.f29879a;

    @SuppressLint({"HandlerLeak"})
    public C6695lb(AbstractC7028ub[] abstractC7028ubArr, AbstractC6701lh abstractC6701lh, gl0 gl0Var, byte[] bArr) {
        String str = C6961si.f29518e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        this.f26005a = abstractC7028ubArr;
        Objects.requireNonNull(abstractC6701lh);
        this.f26006b = abstractC6701lh;
        C6627jh c6627jh = new C6627jh(new C6329bh[2], null);
        this.f26007c = c6627jh;
        this.f26022r = c6627jh;
        HandlerC6658kb handlerC6658kb = new HandlerC6658kb(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.f26008d = handlerC6658kb;
        C6769nb c6769nb = new C6769nb(0, 0L);
        this.f26024t = c6769nb;
        this.f26009e = new C6880qb(abstractC7028ubArr, abstractC6701lh, gl0Var, this.f26014j, 0, handlerC6658kb, c6769nb, this, null);
    }

    /* renamed from: a */
    public final int m13614a() {
        if (this.f26019o.m16651f() || this.f26016l > 0) {
            return 0;
        }
        this.f26019o.mo9297d(this.f26024t.f27052a, this.f26012h, false);
        return 0;
    }

    /* renamed from: b */
    public final void m13613b(Message message) {
        boolean z = true;
        switch (message.what) {
            case 0:
                this.f26017m--;
                return;
            case 1:
                this.f26015k = message.arg1;
                Iterator<AbstractC6435eb> it = this.f26010f.iterator();
                while (it.hasNext()) {
                    it.next().mo11388t(this.f26014j, this.f26015k);
                }
                return;
            case 2:
                if (message.arg1 == 0) {
                    z = false;
                }
                this.f26018n = z;
                Iterator<AbstractC6435eb> it2 = this.f26010f.iterator();
                while (it2.hasNext()) {
                    it2.next().mo11390p0(this.f26018n);
                }
                return;
            case 3:
                if (this.f26017m != 0) {
                    return;
                }
                C6738mh c6738mh = (C6738mh) message.obj;
                this.f26013i = true;
                this.f26021q = c6738mh.f26597a;
                this.f26022r = c6738mh.f26598b;
                this.f26006b.mo13518b(c6738mh.f26599c);
                Iterator<AbstractC6435eb> it3 = this.f26010f.iterator();
                while (it3.hasNext()) {
                    it3.next().mo11383z(this.f26021q, this.f26022r);
                }
                return;
            case 4:
                int i = this.f26016l - 1;
                this.f26016l = i;
                if (i != 0) {
                    return;
                }
                this.f26024t = (C6769nb) message.obj;
                if (message.arg1 == 0) {
                    return;
                }
                Iterator<AbstractC6435eb> it4 = this.f26010f.iterator();
                while (it4.hasNext()) {
                    it4.next().mo11403d();
                }
                return;
            case 5:
                if (this.f26016l != 0) {
                    return;
                }
                this.f26024t = (C6769nb) message.obj;
                Iterator<AbstractC6435eb> it5 = this.f26010f.iterator();
                while (it5.hasNext()) {
                    it5.next().mo11403d();
                }
                return;
            case 6:
                C6843pb c6843pb = (C6843pb) message.obj;
                this.f26016l -= c6843pb.f27923d;
                if (this.f26017m != 0) {
                    return;
                }
                this.f26019o = c6843pb.f27920a;
                this.f26020p = c6843pb.f27921b;
                this.f26024t = c6843pb.f27922c;
                Iterator<AbstractC6435eb> it6 = this.f26010f.iterator();
                while (it6.hasNext()) {
                    it6.next().mo11387u(this.f26019o, this.f26020p);
                }
                return;
            case 7:
                C6991tb c6991tb = (C6991tb) message.obj;
                if (this.f26023s.equals(c6991tb)) {
                    return;
                }
                this.f26023s = c6991tb;
                Iterator<AbstractC6435eb> it7 = this.f26010f.iterator();
                while (it7.hasNext()) {
                    it7.next().mo11389s(c6991tb);
                }
                return;
            case 8:
                zzamy zzamyVar = (zzamy) message.obj;
                Iterator<AbstractC6435eb> it8 = this.f26010f.iterator();
                while (it8.hasNext()) {
                    it8.next().mo11392m(zzamyVar);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: c */
    public final int mo13612c() {
        return this.f26015k;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: d */
    public final boolean mo13611d() {
        return this.f26014j;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: f */
    public final void mo13610f() {
        this.f26009e.m11964v();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: i */
    public final long mo13609i() {
        if (this.f26019o.m16651f()) {
            return -9223372036854775807L;
        }
        AbstractC6287ac abstractC6287ac = this.f26019o;
        m13614a();
        return C6397db.m15842a(abstractC6287ac.m16650g(0, this.f26011g, false).f32852a);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: j */
    public final long mo13608j() {
        if (this.f26019o.m16651f() || this.f26016l > 0) {
            return this.f26025u;
        }
        this.f26019o.mo9297d(this.f26024t.f27052a, this.f26012h, false);
        return C6397db.m15842a(0L) + C6397db.m15842a(this.f26024t.f27054c);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: k */
    public final void mo13607k(int i) {
        this.f26009e.m11960z(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: l */
    public final void mo13606l(C6546hb... c6546hbArr) {
        this.f26009e.m11962x(c6546hbArr);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: m */
    public final long mo13605m() {
        if (this.f26019o.m16651f() || this.f26016l > 0) {
            return this.f26025u;
        }
        this.f26019o.mo9297d(this.f26024t.f27052a, this.f26012h, false);
        return C6397db.m15842a(0L) + C6397db.m15842a(this.f26024t.f27055d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: n */
    public final void mo13604n() {
        this.f26009e.m11968r();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: o */
    public final void mo13603o(boolean z) {
        if (this.f26014j != z) {
            this.f26014j = z;
            this.f26009e.m11966t(z);
            Iterator<AbstractC6435eb> it = this.f26010f.iterator();
            while (it.hasNext()) {
                it.next().mo11388t(z, this.f26015k);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: p */
    public final void mo13602p(int i) {
        this.f26009e.m11997A(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: q */
    public final void mo13601q(AbstractC6663kg abstractC6663kg) {
        if (!this.f26019o.m16651f() || this.f26020p != null) {
            this.f26019o = AbstractC6287ac.f19871a;
            this.f26020p = null;
            Iterator<AbstractC6435eb> it = this.f26010f.iterator();
            while (it.hasNext()) {
                it.next().mo11387u(this.f26019o, this.f26020p);
            }
        }
        if (this.f26013i) {
            this.f26013i = false;
            this.f26021q = C7181yg.f32492a;
            this.f26022r = this.f26007c;
            this.f26006b.mo13518b(null);
            Iterator<AbstractC6435eb> it2 = this.f26010f.iterator();
            while (it2.hasNext()) {
                it2.next().mo11383z(this.f26021q, this.f26022r);
            }
        }
        this.f26017m++;
        this.f26009e.m11967s(abstractC6663kg, true);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: r */
    public final void mo13600r(AbstractC6435eb abstractC6435eb) {
        this.f26010f.remove(abstractC6435eb);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: s */
    public final void mo13599s(long j) {
        m13614a();
        if (this.f26019o.m16651f() || this.f26019o.mo9300a() > 0) {
            this.f26016l++;
            if (!this.f26019o.m16651f()) {
                this.f26019o.m16650g(0, this.f26011g, false);
                C6397db.m15841b(j);
                if (this.f26019o.mo9297d(0, this.f26012h, false).f32457c != -9223372036854775807L) {
                }
            }
            this.f26025u = j;
            this.f26009e.m11965u(this.f26019o, 0, C6397db.m15841b(j));
            Iterator<AbstractC6435eb> it = this.f26010f.iterator();
            while (it.hasNext()) {
                it.next().mo11403d();
            }
            return;
        }
        throw new zzano(this.f26019o, 0, j);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: t */
    public final void mo13598t(AbstractC6435eb abstractC6435eb) {
        this.f26010f.add(abstractC6435eb);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    /* renamed from: u */
    public final void mo13597u(C6546hb... c6546hbArr) {
        this.f26009e.m11963w(c6546hbArr);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6583ib
    public final void zzi() {
        this.f26009e.m11961y();
        this.f26008d.removeCallbacksAndMessages(null);
    }
}
