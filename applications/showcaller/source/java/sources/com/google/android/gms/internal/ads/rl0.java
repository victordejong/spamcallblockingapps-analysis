package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rl0.class */
public final class rl0 extends ak0 implements AbstractC6330bi, AbstractC6477fg, AbstractC6666kj, AbstractC6733mc, AbstractC6435eb {

    /* renamed from: f */
    public static final /* synthetic */ int f29012f = 0;

    /* renamed from: g */
    private final Context f29013g;

    /* renamed from: h */
    private final gl0 f29014h;

    /* renamed from: i */
    private final AbstractC7028ub f29015i;

    /* renamed from: j */
    private final AbstractC7028ub f29016j;

    /* renamed from: k */
    private final AbstractC6552hh f29017k;

    /* renamed from: l */
    private final jk0 f29018l;

    /* renamed from: m */
    private AbstractC6583ib f29019m;

    /* renamed from: n */
    private ByteBuffer f29020n;

    /* renamed from: o */
    private boolean f29021o;

    /* renamed from: p */
    private final WeakReference<kk0> f29022p;

    /* renamed from: q */
    private zj0 f29023q;

    /* renamed from: r */
    private int f29024r;

    /* renamed from: s */
    private int f29025s;

    /* renamed from: t */
    private long f29026t;

    /* renamed from: u */
    private final String f29027u;

    /* renamed from: v */
    private final int f29028v;

    /* renamed from: x */
    private final ArrayList<AbstractC7108wh> f29030x;

    /* renamed from: y */
    private volatile fl0 f29031y;

    /* renamed from: w */
    private final Object f29029w = new Object();

    /* renamed from: z */
    private final Set<WeakReference<cl0>> f29032z = new HashSet();

    public rl0(Context context, jk0 jk0Var, kk0 kk0Var) {
        this.f29013g = context;
        this.f29018l = jk0Var;
        this.f29022p = new WeakReference<>(kk0Var);
        gl0 gl0Var = new gl0();
        this.f29014h = gl0Var;
        AbstractC6662kf abstractC6662kf = AbstractC6662kf.f25201a;
        au2 au2Var = C5679c2.f18451a;
        C7220zi c7220zi = new C7220zi(context, abstractC6662kf, 0L, au2Var, this, -1);
        this.f29015i = c7220zi;
        C7140xc c7140xc = new C7140xc(abstractC6662kf, null, true, au2Var, this);
        this.f29016j = c7140xc;
        C6403dh c6403dh = new C6403dh(null);
        this.f29017k = c6403dh;
        if (C5722o1.m17988m()) {
            C5722o1.m17990k("ForkedExoPlayerAdapter initialize ".concat(toString()));
        }
        ak0.f19981d.incrementAndGet();
        int i = 0;
        AbstractC6583ib m14141a = C6621jb.m14141a(new AbstractC7028ub[]{c7140xc, c7220zi}, c6403dh, gl0Var);
        this.f29019m = m14141a;
        m14141a.mo13598t(this);
        this.f29024r = 0;
        this.f29026t = 0L;
        this.f29025s = 0;
        this.f29030x = new ArrayList<>();
        this.f29031y = null;
        this.f29027u = (kk0Var == null || kk0Var.mo7898m() == null) ? "" : kk0Var.mo7898m();
        this.f29028v = kk0Var != null ? kk0Var.mo7900l() : i;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25750n)).booleanValue()) {
            this.f29019m.mo13604n();
        }
        if (kk0Var != null && kk0Var.mo7953H() > 0) {
            this.f29019m.mo13607k(kk0Var.mo7953H());
        }
        if (kk0Var == null || kk0Var.mo7951I() <= 0) {
            return;
        }
        this.f29019m.mo13602p(kk0Var.mo7951I());
    }

    /* renamed from: j0 */
    private final boolean m11393j0() {
        return this.f29031y != null && this.f29031y.m15149g();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: A */
    public final boolean mo11431A() {
        return this.f29019m != null;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: B */
    public final int mo11430B() {
        return this.f29019m.mo13612c();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: C */
    public final long mo11429C() {
        return this.f29019m.mo13608j();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: D */
    public final boolean mo11428D() {
        return this.f29019m.mo13611d();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: E */
    public final void mo11427E(boolean z) {
        this.f29019m.mo13603o(z);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: F */
    public final void mo11426F(int i) {
        this.f29014h.m14906g(i);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: G */
    public final void mo11425G(int i) {
        this.f29014h.m14905h(i);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: H */
    public final long mo11424H() {
        return this.f29019m.mo13609i();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: I */
    public final long mo11423I() {
        if (!m11393j0()) {
            return this.f29024r;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: J */
    public final long mo11422J() {
        if (m11393j0() && this.f29031y.m15148h()) {
            return Math.min(this.f29024r, this.f29031y.m15146j());
        }
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r2v0 */
    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: K */
    public final long mo11421K() {
        if (!m11393j0()) {
            synchronized (this.f29029w) {
                while (!this.f29030x.isEmpty()) {
                    long j = this.f29026t;
                    Map<String, List<String>> mo9584a = this.f29030x.remove(0).mo9584a();
                    ?? r13 = false;
                    if (mo9584a != null) {
                        Iterator<Map.Entry<String, List<String>>> it = mo9584a.entrySet().iterator();
                        while (true) {
                            r13 = false;
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry<String, List<String>> next = it.next();
                            if (next != null) {
                                try {
                                    if (next.getKey() != null && fu2.m15049e("content-length", next.getKey()) && next.getValue() != null && next.getValue().get(0) != null) {
                                        r13 = Long.parseLong(next.getValue().get(0));
                                        break;
                                    }
                                } catch (NumberFormatException e) {
                                }
                            }
                        }
                    }
                    this.f29026t = j + (r13 == true ? 1L : 0L);
                }
            }
            return this.f29026t;
        }
        return this.f29031y.m15145k();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: L */
    public final int mo11420L() {
        return this.f29025s;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: M */
    public final void mo11419M(boolean z) {
        if (this.f29019m != null) {
            for (int i = 0; i < 2; i++) {
                this.f29017k.m14666f(i, !z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: N */
    public final long mo11418N() {
        return this.f29019m.mo13605m();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: O */
    public final long mo11417O() {
        return this.f29024r;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: R */
    public final void mo11416R(Uri[] uriArr, String str) {
        mo11415S(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: S */
    public final void mo11415S(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        C6774ng c6774ng;
        if (this.f29019m == null) {
            return;
        }
        this.f29020n = byteBuffer;
        this.f29021o = z;
        int length = uriArr.length;
        if (length == 1) {
            c6774ng = m11401e0(uriArr[0], str);
        } else {
            AbstractC6663kg[] abstractC6663kgArr = new AbstractC6663kg[length];
            for (int i = 0; i < uriArr.length; i++) {
                abstractC6663kgArr[i] = m11401e0(uriArr[i], str);
            }
            c6774ng = new C6774ng(abstractC6663kgArr);
        }
        this.f29019m.mo13601q(c6774ng);
        ak0.f19982e.incrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: T */
    public final void mo11414T(zj0 zj0Var) {
        this.f29023q = zj0Var;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: U */
    public final void mo11413U() {
        AbstractC6583ib abstractC6583ib = this.f29019m;
        if (abstractC6583ib != null) {
            abstractC6583ib.mo13600r(this);
            this.f29019m.zzi();
            this.f29019m = null;
            ak0.f19982e.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: V */
    public final void mo11412V(Surface surface, boolean z) {
        if (this.f29019m == null) {
            return;
        }
        C6546hb c6546hb = new C6546hb(this.f29015i, 1, surface);
        if (z) {
            this.f29019m.mo13606l(c6546hb);
        } else {
            this.f29019m.mo13597u(c6546hb);
        }
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: W */
    public final void mo11411W(float f, boolean z) {
        if (this.f29019m == null) {
            return;
        }
        C6546hb c6546hb = new C6546hb(this.f29016j, 2, Float.valueOf(f));
        if (z) {
            this.f29019m.mo13606l(c6546hb);
        } else {
            this.f29019m.mo13597u(c6546hb);
        }
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: X */
    public final void mo11410X() {
        this.f29019m.mo13610f();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: Y */
    public final void mo11409Y(long j) {
        this.f29019m.mo13599s(j);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: Z */
    public final void mo11408Z(int i) {
        this.f29014h.m14904i(i);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: a0 */
    public final void mo11407a0(int i) {
        this.f29014h.m14903j(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6477fg
    /* renamed from: b */
    public final void mo11406b(IOException iOException) {
        zj0 zj0Var = this.f29023q;
        if (zj0Var != null) {
            if (this.f29018l.f24916l) {
                zj0Var.mo7989d("onLoadException", iOException);
            } else {
                zj0Var.mo7986g("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: b0 */
    public final void mo11405b0(int i) {
        for (WeakReference<cl0> weakReference : this.f29032z) {
            cl0 cl0Var = weakReference.get();
            if (cl0Var != null) {
                cl0Var.m16028g(i);
            }
        }
    }

    /* renamed from: c0 */
    public final void mo11400f(AbstractC6886qh abstractC6886qh, C6923rh c6923rh) {
        if (abstractC6886qh instanceof AbstractC7108wh) {
            synchronized (this.f29029w) {
                this.f29030x.add((AbstractC7108wh) abstractC6886qh);
            }
        } else if (!(abstractC6886qh instanceof fl0)) {
        } else {
            this.f29031y = (fl0) abstractC6886qh;
            kk0 kk0Var = this.f29022p.get();
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() || kk0Var == null || !this.f29031y.m15150f()) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("gcacheHit", String.valueOf(this.f29031y.m15148h()));
            hashMap.put("gcacheDownloaded", String.valueOf(this.f29031y.m15147i()));
            C5679c2.f18451a.post(new Runnable(kk0Var, hashMap) { // from class: com.google.android.gms.internal.ads.hl0

                /* renamed from: d */
                private final kk0 f23967d;

                /* renamed from: e */
                private final Map f23968e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23967d = kk0Var;
                    this.f23968e = hashMap;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    kk0 kk0Var2 = this.f23967d;
                    Map<String, ?> map = this.f23968e;
                    int i = rl0.f29012f;
                    kk0Var2.mo7959D0("onGcacheInfoEvent", map);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6435eb
    /* renamed from: d */
    public final void mo11403d() {
    }

    /* renamed from: d0 */
    public final void m11402d0(AbstractC6886qh abstractC6886qh, int i) {
        this.f29024r += i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0062, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.C7192yr.m8714c().m14263c(com.google.android.gms.internal.ads.C6679kw.f25736l1)).booleanValue() == false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0103  */
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.google.android.gms.internal.ads.AbstractC6663kg m11401e0(android.net.Uri r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.rl0.m11401e0(android.net.Uri, java.lang.String):com.google.android.gms.internal.ads.kg");
    }

    /* renamed from: f0 */
    public final /* synthetic */ AbstractC6886qh m11399f0(AbstractC6849ph abstractC6849ph) {
        return new fl0(this.f29013g, abstractC6849ph.zza(), this.f29027u, this.f29028v, this, new el0(this) { // from class: com.google.android.gms.internal.ads.ql0

            /* renamed from: a */
            private final rl0 f28547a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28547a = this;
            }

            @Override // com.google.android.gms.internal.ads.el0
            /* renamed from: c */
            public final void mo11859c(boolean z, long j) {
                this.f28547a.m11398g0(z, j);
            }
        });
    }

    public final void finalize() {
        ak0.f19981d.decrementAndGet();
        if (C5722o1.m17988m()) {
            C5722o1.m17990k("ForkedExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    /* renamed from: g0 */
    public final /* synthetic */ void m11398g0(boolean z, long j) {
        zj0 zj0Var = this.f29023q;
        if (zj0Var != null) {
            zj0Var.mo7990c(z, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6666kj
    /* renamed from: h */
    public final void mo11397h(Surface surface) {
        zj0 zj0Var = this.f29023q;
        if (zj0Var != null) {
            zj0Var.mo7973t();
        }
    }

    /* renamed from: h0 */
    public final /* synthetic */ AbstractC6886qh m11396h0(String str, boolean z) {
        rl0 rl0Var = true != z ? null : this;
        jk0 jk0Var = this.f29018l;
        return new C6997th(str, null, rl0Var, jk0Var.f24908d, jk0Var.f24910f, true, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6666kj
    /* renamed from: i */
    public final void mo11395i(int i, int i2, int i3, float f) {
        zj0 zj0Var = this.f29023q;
        if (zj0Var != null) {
            zj0Var.mo7988e(i, i2);
        }
    }

    /* renamed from: i0 */
    public final /* synthetic */ AbstractC6886qh m11394i0(String str, boolean z) {
        rl0 rl0Var = true != z ? null : this;
        jk0 jk0Var = this.f29018l;
        cl0 cl0Var = new cl0(str, rl0Var, jk0Var.f24908d, jk0Var.f24910f, jk0Var.f24913i);
        this.f29032z.add(new WeakReference<>(cl0Var));
        return cl0Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6435eb
    /* renamed from: m */
    public final void mo11392m(zzamy zzamyVar) {
        zj0 zj0Var = this.f29023q;
        if (zj0Var != null) {
            zj0Var.mo7986g("onPlayerError", zzamyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6666kj
    /* renamed from: n */
    public final void mo11391n(zzanm zzanmVar) {
        kk0 kk0Var = this.f29022p.get();
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() || kk0Var == null || zzanmVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzanmVar.f33561o));
        hashMap.put("bitRate", String.valueOf(zzanmVar.f33551e));
        int i = zzanmVar.f33559m;
        int i2 = zzanmVar.f33560n;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        hashMap.put("resolution", sb.toString());
        hashMap.put("videoMime", zzanmVar.f33554h);
        hashMap.put("videoSampleMime", zzanmVar.f33555i);
        hashMap.put("videoCodec", zzanmVar.f33552f);
        kk0Var.mo7959D0("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6435eb
    /* renamed from: p0 */
    public final void mo11390p0(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6435eb
    /* renamed from: s */
    public final void mo11389s(C6991tb c6991tb) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6435eb
    /* renamed from: t */
    public final void mo11388t(boolean z, int i) {
        zj0 zj0Var = this.f29023q;
        if (zj0Var != null) {
            zj0Var.mo7994a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6435eb
    /* renamed from: u */
    public final void mo11387u(AbstractC6287ac abstractC6287ac, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6330bi
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ void mo11386w(Object obj, int i) {
        this.f29024r += i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6666kj
    /* renamed from: x */
    public final void mo11385x(int i, long j) {
        this.f29025s += i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6733mc
    /* renamed from: y */
    public final void mo11384y(zzanm zzanmVar) {
        kk0 kk0Var = this.f29022p.get();
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() || kk0Var == null || zzanmVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", zzanmVar.f33554h);
        hashMap.put("audioSampleMime", zzanmVar.f33555i);
        hashMap.put("audioCodec", zzanmVar.f33552f);
        kk0Var.mo7959D0("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6435eb
    /* renamed from: z */
    public final void mo11383z(C7181yg c7181yg, C6627jh c6627jh) {
    }
}
