package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mn0.class */
public final class mn0 extends ak0 implements AbstractC6816ol, u11 {

    /* renamed from: f */
    public static final /* synthetic */ int f26665f = 0;

    /* renamed from: g */
    private final Context f26666g;

    /* renamed from: h */
    private final wm0 f26667h;

    /* renamed from: i */
    private final zm3 f26668i;

    /* renamed from: j */
    private final jk0 f26669j;

    /* renamed from: k */
    private final WeakReference<kk0> f26670k;

    /* renamed from: l */
    private final ql3 f26671l;

    /* renamed from: m */
    private C6393d7 f26672m;

    /* renamed from: n */
    private ByteBuffer f26673n;

    /* renamed from: o */
    private boolean f26674o;

    /* renamed from: p */
    private zj0 f26675p;

    /* renamed from: q */
    private int f26676q;

    /* renamed from: r */
    private int f26677r;

    /* renamed from: s */
    private long f26678s;

    /* renamed from: t */
    private final String f26679t;

    /* renamed from: u */
    private final int f26680u;

    /* renamed from: w */
    private final ArrayList<AbstractC6740mj> f26682w;

    /* renamed from: x */
    private volatile zm0 f26683x;

    /* renamed from: v */
    private final Object f26681v = new Object();

    /* renamed from: y */
    private final Set<WeakReference<vm0>> f26684y = new HashSet();

    /* JADX WARN: Code restructure failed: missing block: B:26:0x017f, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.C7192yr.m8714c().m14263c(com.google.android.gms.internal.ads.C6679kw.f25736l1)).booleanValue() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0186, code lost:
        if (r9.f24914j == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0189, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0190, code lost:
        if (r9.f24913i <= 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0193, code lost:
        r8 = new com.google.android.gms.internal.ads.dn0(r7, r0, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x01a2, code lost:
        r8 = new com.google.android.gms.internal.ads.en0(r7, r0, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x01b2, code lost:
        if (r9.f24914j == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x01b5, code lost:
        r9 = new com.google.android.gms.internal.ads.fn0(r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01c2, code lost:
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01c4, code lost:
        r0 = r7.f26673n;
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01cc, code lost:
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01cf, code lost:
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01d5, code lost:
        if (r0.limit() <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01d8, code lost:
        r0 = new byte[r7.f26673n.limit()];
        r7.f26673n.get(r0);
        r8 = new com.google.android.gms.internal.ads.gn0(r9, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public mn0(android.content.Context r8, com.google.android.gms.internal.ads.jk0 r9, com.google.android.gms.internal.ads.kk0 r10) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.mn0.<init>(android.content.Context, com.google.android.gms.internal.ads.jk0, com.google.android.gms.internal.ads.kk0):void");
    }

    /* renamed from: f0 */
    private final boolean m13146f0() {
        return this.f26683x != null && this.f26683x.m8330u();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: A */
    public final boolean mo11431A() {
        return this.f26672m != null;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: B */
    public final int mo11430B() {
        return this.f26672m.m15896h();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: C */
    public final long mo11429C() {
        return this.f26672m.mo13001J();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: D */
    public final boolean mo11428D() {
        return this.f26672m.m15891l();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: E */
    public final void mo11427E(boolean z) {
        this.f26672m.m15892k(z);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: F */
    public final void mo11426F(int i) {
        this.f26667h.m9555i(i);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: G */
    public final void mo11425G(int i) {
        this.f26667h.m9554j(i);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: H */
    public final long mo11424H() {
        return this.f26672m.m15888r();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: I */
    public final long mo11423I() {
        if (!m13146f0()) {
            return this.f26676q;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: J */
    public final long mo11422J() {
        if (m13146f0() && this.f26683x.m8329v()) {
            return Math.min(this.f26676q, this.f26683x.m8332n());
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
        if (!m13146f0()) {
            synchronized (this.f26681v) {
                while (!this.f26682w.isEmpty()) {
                    long j = this.f26678s;
                    Map<String, List<String>> mo8435d = this.f26682w.remove(0).mo8435d();
                    ?? r13 = false;
                    if (mo8435d != null) {
                        Iterator<Map.Entry<String, List<String>>> it = mo8435d.entrySet().iterator();
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
                    this.f26678s = j + (r13 == true ? 1L : 0L);
                }
            }
            return this.f26678s;
        }
        return this.f26683x.m8327x();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: L */
    public final int mo11420L() {
        return this.f26677r;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: M */
    public final void mo11419M(boolean z) {
        if (this.f26672m != null) {
            int i = 0;
            while (true) {
                this.f26672m.m15889p();
                if (i >= 2) {
                    return;
                }
                zm3 zm3Var = this.f26668i;
                um3 m10606g = zm3Var.m8321i().m10606g();
                m10606g.m10292s(i, !z);
                zm3Var.m8320j(m10606g);
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: N */
    public final long mo11418N() {
        return this.f26672m.m15887s();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: O */
    public final long mo11417O() {
        return this.f26676q;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: R */
    public final void mo11416R(Uri[] uriArr, String str) {
        mo11415S(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: S */
    public final void mo11415S(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        bl3 bl3Var;
        if (this.f26672m == null) {
            return;
        }
        this.f26673n = byteBuffer;
        this.f26674o = z;
        int length = uriArr.length;
        if (length == 1) {
            bl3Var = m13145g0(uriArr[0]);
        } else {
            ok3[] ok3VarArr = new ok3[length];
            for (int i = 0; i < uriArr.length; i++) {
                ok3VarArr[i] = m13145g0(uriArr[i]);
            }
            bl3Var = new bl3(false, false, ok3VarArr);
        }
        this.f26672m.m15893j(bl3Var);
        this.f26672m.m15894i();
        ak0.f19982e.incrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: T */
    public final void mo11414T(zj0 zj0Var) {
        this.f26675p = zj0Var;
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: U */
    public final void mo11413U() {
        C6393d7 c6393d7 = this.f26672m;
        if (c6393d7 != null) {
            c6393d7.m15898g(this);
            this.f26672m.m15890o();
            this.f26672m = null;
            ak0.f19982e.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: V */
    public final void mo11412V(Surface surface, boolean z) {
        C6393d7 c6393d7 = this.f26672m;
        if (c6393d7 == null) {
            return;
        }
        c6393d7.m15895h0(surface);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: W */
    public final void mo11411W(float f, boolean z) {
        C6393d7 c6393d7 = this.f26672m;
        if (c6393d7 == null) {
            return;
        }
        c6393d7.m15902e(f);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: X */
    public final void mo11410X() {
        this.f26672m.mo12998M(false);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: Y */
    public final void mo11409Y(long j) {
        C6393d7 c6393d7 = this.f26672m;
        c6393d7.mo12999L(c6393d7.mo12992w(), j);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: Z */
    public final void mo11408Z(int i) {
        this.f26667h.m9553k(i);
    }

    @Override // com.google.android.gms.internal.ads.u11
    /* renamed from: a */
    public final void mo10435a(s01 s01Var, C7021u4 c7021u4, C6781nn c6781nn) {
        kk0 kk0Var = this.f26670k.get();
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() || kk0Var == null || c7021u4 == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", c7021u4.f30510m);
        hashMap.put("audioSampleMime", c7021u4.f30511n);
        hashMap.put("audioCodec", c7021u4.f30508k);
        kk0Var.mo7959D0("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: a0 */
    public final void mo11407a0(int i) {
        this.f26667h.m9552l(i);
    }

    @Override // com.google.android.gms.internal.ads.ak0
    /* renamed from: b0 */
    public final void mo11405b0(int i) {
        for (WeakReference<vm0> weakReference : this.f26684y) {
            vm0 vm0Var = weakReference.get();
            if (vm0Var != null) {
                vm0Var.m9934u(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6816ol
    /* renamed from: c */
    public final void mo9545c(AbstractC7098w7 abstractC7098w7, C6472fb c6472fb, boolean z, int i) {
        this.f26676q += i;
    }

    /* renamed from: c0 */
    public final /* synthetic */ void m13149c0(boolean z, long j) {
        zj0 zj0Var = this.f26675p;
        if (zj0Var != null) {
            zj0Var.mo7990c(z, j);
        }
    }

    /* renamed from: d0 */
    public final /* synthetic */ AbstractC7098w7 m13148d0(String str, boolean z) {
        C6398dc c6398dc = new C6398dc();
        c6398dc.m15839a(str);
        c6398dc.m15835e(true != z ? null : this);
        c6398dc.m15838b(this.f26669j.f24908d);
        c6398dc.m15837c(this.f26669j.f24910f);
        c6398dc.m15836d(true);
        return c6398dc.zza();
    }

    @Override // com.google.android.gms.internal.ads.u11
    /* renamed from: e */
    public final void mo10434e(s01 s01Var, zzahc zzahcVar) {
        zj0 zj0Var = this.f26675p;
        if (zj0Var != null) {
            zj0Var.mo7986g("onPlayerError", zzahcVar);
        }
    }

    /* renamed from: e0 */
    public final /* synthetic */ AbstractC7098w7 m13147e0(String str, boolean z) {
        mn0 mn0Var = true != z ? null : this;
        jk0 jk0Var = this.f26669j;
        vm0 vm0Var = new vm0(str, mn0Var, jk0Var.f24908d, jk0Var.f24910f, jk0Var.f24913i);
        this.f26684y.add(new WeakReference<>(vm0Var));
        return vm0Var;
    }

    public final void finalize() {
        ak0.f19981d.decrementAndGet();
        if (C5722o1.m17988m()) {
            C5722o1.m17990k("OfficialSimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.u11
    /* renamed from: g */
    public final void mo10433g(s01 s01Var, dk3 dk3Var, jk3 jk3Var, IOException iOException, boolean z) {
        zj0 zj0Var = this.f26675p;
        if (zj0Var != null) {
            if (this.f26669j.f24916l) {
                zj0Var.mo7989d("onLoadException", iOException);
            } else {
                zj0Var.mo7986g("onLoadError", iOException);
            }
        }
    }

    /* renamed from: g0 */
    final ok3 m13145g0(Uri uri) {
        C6280a5 c6280a5 = new C6280a5();
        c6280a5.m16692b(uri);
        C6615j5 m16691c = c6280a5.m16691c();
        ql3 ql3Var = this.f26671l;
        ql3Var.m11858a(this.f26669j.f24911g);
        return ql3Var.m11857b(m16691c);
    }

    /* renamed from: h0 */
    public final /* synthetic */ AbstractC6986t6[] m13144h0(Handler handler, up3 up3Var, ii1 ii1Var, AbstractC7099w8 abstractC7099w8, AbstractC6987t7 abstractC6987t7) {
        Context context = this.f26666g;
        g03 g03Var = g03.f23217a;
        t52 t52Var = new t52(null, new x51[0], false);
        av2 av2Var = av2.f20141a;
        return new AbstractC6986t6[]{new x92(context, av2Var, g03Var, false, handler, ii1Var, t52Var), new zo3(this.f26666g, av2Var, g03Var, 0L, false, handler, up3Var, -1)};
    }

    /* renamed from: i0 */
    public final /* synthetic */ AbstractC7098w7 m13143i0(AbstractC7171y6 abstractC7171y6) {
        return new zm0(this.f26666g, abstractC7171y6.zza(), this.f26679t, this.f26680u, this, new ym0(this) { // from class: com.google.android.gms.internal.ads.ln0

            /* renamed from: a */
            private final mn0 f26179a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26179a = this;
            }

            @Override // com.google.android.gms.internal.ads.ym0
            /* renamed from: c */
            public final void mo8773c(boolean z, long j) {
                this.f26179a.m13149c0(z, j);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6816ol
    /* renamed from: j */
    public final void mo9538j(AbstractC7098w7 abstractC7098w7, C6472fb c6472fb, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.u11
    /* renamed from: k */
    public final void mo10432k(s01 s01Var, C7021u4 c7021u4, C6781nn c6781nn) {
        kk0 kk0Var = this.f26670k.get();
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() || kk0Var == null || c7021u4 == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(c7021u4.f30518u));
        hashMap.put("bitRate", String.valueOf(c7021u4.f30507j));
        int i = c7021u4.f30516s;
        int i2 = c7021u4.f30517t;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        hashMap.put("resolution", sb.toString());
        hashMap.put("videoMime", c7021u4.f30510m);
        hashMap.put("videoSampleMime", c7021u4.f30511n);
        hashMap.put("videoCodec", c7021u4.f30508k);
        kk0Var.mo7959D0("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6816ol
    /* renamed from: l */
    public final void mo9537l(AbstractC7098w7 abstractC7098w7, C6472fb c6472fb, boolean z) {
        if (abstractC7098w7 instanceof AbstractC6740mj) {
            synchronized (this.f26681v) {
                this.f26682w.add((AbstractC6740mj) abstractC7098w7);
            }
        } else if (!(abstractC7098w7 instanceof zm0)) {
        } else {
            this.f26683x = (zm0) abstractC7098w7;
            kk0 kk0Var = this.f26670k.get();
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() || kk0Var == null || !this.f26683x.m8331t()) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("gcacheHit", String.valueOf(this.f26683x.m8329v()));
            hashMap.put("gcacheDownloaded", String.valueOf(this.f26683x.m8328w()));
            C5679c2.f18451a.post(new Runnable(kk0Var, hashMap) { // from class: com.google.android.gms.internal.ads.bn0

                /* renamed from: d */
                private final kk0 f20530d;

                /* renamed from: e */
                private final Map f20531e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f20530d = kk0Var;
                    this.f20531e = hashMap;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    kk0 kk0Var2 = this.f20530d;
                    Map<String, ?> map = this.f20531e;
                    int i = mn0.f26665f;
                    kk0Var2.mo7959D0("onGcacheInfoEvent", map);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.u11
    /* renamed from: o */
    public final void mo10431o(s01 s01Var, z04 z04Var) {
        zj0 zj0Var = this.f26675p;
        if (zj0Var != null) {
            zj0Var.mo7988e(z04Var.f32749c, z04Var.f32750d);
        }
    }

    @Override // com.google.android.gms.internal.ads.u11
    /* renamed from: p */
    public final void mo10430p(s01 s01Var, int i) {
        zj0 zj0Var = this.f26675p;
        if (zj0Var != null) {
            zj0Var.mo7994a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.u11
    /* renamed from: q */
    public final void mo10429q(s01 s01Var, int i, long j) {
        this.f26677r += i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6816ol
    /* renamed from: r */
    public final void mo9536r(AbstractC7098w7 abstractC7098w7, C6472fb c6472fb, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.u11
    /* renamed from: v */
    public final void mo10428v(s01 s01Var, Object obj, long j) {
        zj0 zj0Var = this.f26675p;
        if (zj0Var != null) {
            zj0Var.mo7973t();
        }
    }
}
