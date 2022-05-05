package com.flurry.sdk;

import android.text.TextUtils;
import androidx.appcompat.widget.TooltipCompatHandler;
import com.flurry.sdk.C3021eh;
import com.flurry.sdk.C3363jx;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.flurry.sdk.di */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/di.class */
public class C2952di {

    /* renamed from: a */
    public static final String f4578a = "di";

    /* renamed from: b */
    public final String f4579b;

    /* renamed from: c */
    public final C2974dj f4580c;

    /* renamed from: d */
    public final TreeSet<C2853ay> f4581d;

    /* renamed from: e */
    public final TreeSet<C2853ay> f4582e;

    /* renamed from: f */
    public EnumC2973a f4583f;

    /* renamed from: g */
    public AbstractC3518x f4584g;

    /* renamed from: h */
    public C2974dj f4585h;

    /* renamed from: i */
    public C2792ac f4586i;

    /* renamed from: j */
    public C2853ay f4587j;

    /* renamed from: k */
    public C2853ay f4588k;

    /* renamed from: l */
    public int f4589l;

    /* renamed from: m */
    public long f4590m;

    /* renamed from: n */
    public long f4591n;

    /* renamed from: o */
    public long f4592o;

    /* renamed from: p */
    public long f4593p;

    /* renamed from: q */
    public long f4594q;

    /* renamed from: r */
    public final AbstractC3344jl<C2982dk> f4595r = new AbstractC3344jl<C2982dk>() { // from class: com.flurry.sdk.di.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C2982dk dkVar) {
            final C2982dk dkVar2 = dkVar;
            if (C2952di.this.f4585h == dkVar2.f4659a) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.1.1
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2952di.this.m33398g();
                    }
                });
            } else if (C2952di.this.f4580c == dkVar2.f4659a) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.1.2
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2952di.this.m33409a(dkVar2.f4660c);
                    }
                });
            }
        }
    };

    /* renamed from: s */
    public final AbstractC3344jl<C2811ai> f4596s = new AbstractC3344jl<C2811ai>() { // from class: com.flurry.sdk.di.5
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C2811ai aiVar) {
            final C2811ai aiVar2 = aiVar;
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.5.1
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C2952di diVar = C2952di.this;
                    C2811ai aiVar3 = aiVar2;
                    diVar.m33410a(aiVar3.f3984a, aiVar3.f3985b);
                }
            });
        }
    };

    /* renamed from: t */
    public final AbstractC3344jl<C3002dq> f4597t = new AbstractC3344jl<C3002dq>() { // from class: com.flurry.sdk.di.6
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3002dq dqVar) {
            if (EnumC2973a.REQUEST.equals(C2952di.this.f4583f)) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.6.1
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2952di.this.m33396h();
                    }
                });
            } else if (EnumC2973a.CSRTB_AWAIT_AUCTION.equals(C2952di.this.f4583f)) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.6.2
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2952di.this.m33394i();
                    }
                });
            } else if (EnumC2973a.SELECT.equals(C2952di.this.f4583f)) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.6.3
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2952di.this.m33390k();
                    }
                });
            } else if (EnumC2973a.PRERENDER.equals(C2952di.this.f4583f)) {
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.6.4
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2952di.this.m33388l();
                    }
                });
            }
        }
    };

    /* renamed from: com.flurry.sdk.di$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/di$a.class */
    public enum EnumC2973a {
        NONE,
        REQUEST,
        CSRTB_AUCTION_REQUIRED,
        CSRTB_AWAIT_AUCTION,
        SELECT,
        PREPARE,
        FILLED,
        PRERENDER
    }

    public C2952di(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f4579b = str;
            this.f4580c = new C2974dj(str);
            this.f4581d = new TreeSet<>();
            this.f4582e = new TreeSet<>();
            this.f4583f = EnumC2973a.NONE;
            m33420a();
            return;
        }
        throw new IllegalArgumentException("adSpace cannot be null");
    }

    /* renamed from: a */
    public final void m33420a() {
        synchronized (this) {
            String str = f4578a;
            C3356jq.m32615a(3, str, "Fetch finished for adObject:" + this.f4584g + " adSpace:" + this.f4579b);
            this.f4580c.m33381a();
            C3323iz.m32690a().m32624a(this);
            m33416a(EnumC2973a.NONE);
            if (this.f4586i != null) {
                this.f4586i.m33684a(this.f4582e);
            }
            this.f4582e.clear();
            this.f4584g = null;
            this.f4585h = null;
            this.f4586i = null;
            this.f4587j = null;
            this.f4588k = null;
            this.f4589l = 0;
            this.f4590m = 0L;
            this.f4591n = 0L;
            this.f4592o = 0L;
            this.f4593p = 0L;
            this.f4594q = 0L;
        }
    }

    /* renamed from: a */
    public final void m33419a(final C2853ay ayVar, final int i, final C3021eh ehVar) {
        C3035er erVar;
        List<String> list;
        synchronized (this) {
            List<C3031ep> list2 = ehVar.f4706b;
            final String str = (list2 == null || list2.isEmpty() || (erVar = list2.get(0).f4758c) == null || (list = erVar.f4766d) == null || list.isEmpty()) ? null : list.get(list.size() - 1);
            C3363jx jxVar = new C3363jx();
            jxVar.f5766g = str;
            jxVar.f5941u = 20000;
            jxVar.f5754d = new C3418km();
            jxVar.f5751a = new C3363jx.AbstractC3365a<Void, String>() { // from class: com.flurry.sdk.di.2
                @Override // com.flurry.sdk.C3363jx.AbstractC3365a
                /* renamed from: a */
                public final /* synthetic */ void mo32321a(C3363jx<Void, String> jxVar2, String str2) {
                    C3021eh ehVar2;
                    String str3 = str2;
                    int i2 = jxVar2.f5776q;
                    String str4 = C2952di.f4578a;
                    C3356jq.m32615a(3, str4, "VAST resolver: HTTP status code is:" + i2 + " for url: " + str);
                    if (jxVar2.m32580b()) {
                        String str5 = C2952di.f4578a;
                        C3356jq.m32615a(3, str5, "VAST resolver response:" + str3 + " for url: " + str);
                        ehVar2 = C3021eh.m33275a(ehVar, C3024ej.m33253a(str3));
                    } else {
                        ehVar2 = null;
                    }
                    if (ehVar2 == null) {
                        String str6 = C2952di.f4578a;
                        C3356jq.m32615a(3, str6, "VAST resolver failed for frame: " + i);
                        C2853ay ayVar2 = ayVar;
                        int i3 = i;
                        C3021eh.C3022a aVar = new C3021eh.C3022a();
                        aVar.m33271a();
                        ayVar2.m33537a(i3, aVar.f4709a);
                    } else {
                        String str7 = C2952di.f4578a;
                        C3356jq.m32615a(3, str7, "VAST resolver successful for frame: " + i);
                        ayVar.m33537a(i, ehVar2);
                    }
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.2.1
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C2952di.this.m33385n();
                        }
                    });
                }
            };
            C3323iz.m32690a().m32623a((Object) this, (C2952di) jxVar);
        }
    }

    /* renamed from: a */
    public final void m33418a(C2853ay ayVar, EnumC2873bh bhVar) {
        synchronized (this) {
            HashMap hashMap = new HashMap();
            hashMap.put("preRender", "true");
            EnumC2873bh bhVar2 = bhVar;
            if (bhVar == null) {
                bhVar2 = EnumC2873bh.kUnknown;
            }
            hashMap.put("errorCode", Integer.toString(bhVar2.f4222z));
            C3007du.m33321a(EnumC2874bi.EV_RENDER_FAILED, hashMap, this.f4584g.mo32282e(), this.f4584g, ayVar, 0);
        }
    }

    /* renamed from: a */
    public final void m33417a(final C2853ay ayVar, final String str) {
        synchronized (this) {
            String str2 = f4578a;
            C3356jq.m32615a(3, str2, "Pre-render: HTTP get for url: " + str);
            C3363jx jxVar = new C3363jx();
            jxVar.f5766g = str;
            jxVar.f5941u = 20000;
            jxVar.f5754d = new C3418km();
            jxVar.f5751a = new C3363jx.AbstractC3365a<Void, String>() { // from class: com.flurry.sdk.di.4
                @Override // com.flurry.sdk.C3363jx.AbstractC3365a
                /* renamed from: a */
                public final /* synthetic */ void mo32321a(C3363jx<Void, String> jxVar2, String str3) {
                    String str4 = str3;
                    int i = jxVar2.f5776q;
                    String str5 = C2952di.f4578a;
                    C3356jq.m32615a(3, str5, "Prerender: HTTP status code is:" + i + " for url: " + str);
                    if (jxVar2.m32580b()) {
                        ayVar.f4111b.f4154i = str4;
                        C3009dw.m33319a(C2952di.this.f4584g);
                        C2952di.this.m33420a();
                        return;
                    }
                    C2952di.this.m33418a(ayVar, EnumC2873bh.kPrerenderDownloadFailed);
                    C2952di.this.m33420a();
                }
            };
            C3323iz.m32690a().m32623a((Object) this, (C2952di) jxVar);
        }
    }

    /* renamed from: a */
    public final void m33416a(EnumC2973a aVar) {
        synchronized (this) {
            EnumC2973a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = EnumC2973a.NONE;
            }
            String str = f4578a;
            C3356jq.m32615a(3, str, "Setting state from " + this.f4583f + " to " + aVar2 + " for adspace: " + this.f4579b);
            if (EnumC2973a.NONE.equals(this.f4583f) && !EnumC2973a.NONE.equals(aVar2)) {
                String str2 = f4578a;
                C3356jq.m32615a(3, str2, "Adding fetch listeners for adspace: " + this.f4579b);
                C3003dr.m33334a().m33333a(this.f4597t);
                C3345jm.m32636a().m32632a("com.flurry.android.sdk.AssetStatusEvent", this.f4596s);
                C3345jm.m32636a().m32632a("com.flurry.android.sdk.AdResponseEvent", this.f4595r);
            } else if (EnumC2973a.NONE.equals(aVar2) && !EnumC2973a.NONE.equals(this.f4583f)) {
                String str3 = f4578a;
                C3356jq.m32615a(3, str3, "Removing fetch listeners for adspace: " + this.f4579b);
                C3003dr.m33334a().m33332b(this.f4597t);
                C3345jm.m32636a().m32634a(this.f4596s);
                C3345jm.m32636a().m32634a(this.f4595r);
            }
            this.f4583f = aVar2;
        }
    }

    /* renamed from: a */
    public final void m33411a(AbstractC3518x xVar, C2974dj djVar, C2792ac acVar) {
        synchronized (this) {
            if (xVar != null && djVar != null && acVar != null) {
                String str = f4578a;
                C3356jq.m32615a(3, str, "fetchAd: adObject=" + xVar);
                if (EnumC2973a.NONE.equals(this.f4583f) || EnumC2973a.FILLED.equals(this.f4583f)) {
                    this.f4584g = xVar;
                    this.f4586i = acVar;
                    this.f4585h = djVar;
                    if (!C3310ir.m32715a().f5616b) {
                        C3356jq.m32615a(5, f4578a, "There is no network connectivity (ad will not fetch)");
                        C3009dw.m33318a(this.f4584g, EnumC2873bh.kNoNetworkConnectivity);
                        m33420a();
                        return;
                    }
                    C3484p.m32358a().f6006h.m33632e();
                    if (this.f4581d.isEmpty()) {
                        this.f4581d.addAll(this.f4586i.m33683b());
                    }
                    if (this.f4581d.isEmpty()) {
                        m33416a(EnumC2973a.REQUEST);
                        C3356jq.m32615a(3, f4578a, "Setting ad request timeout for 15000 ms");
                        this.f4590m = System.currentTimeMillis() + TooltipCompatHandler.HOVER_HIDE_TIMEOUT_MS;
                        C3356jq.m32615a(3, f4578a, "AdCacheState: Cache empty. Fetching new ad.");
                        this.f4585h.m33375a(this.f4584g, this.f4586i, (C2853ay) null);
                        return;
                    }
                    String str2 = f4578a;
                    C3356jq.m32615a(3, str2, "AdCacheState: Found " + (this.f4586i.m33687a() + this.f4581d.size()) + " ads in cache. Using 1 now.");
                    this.f4587j = this.f4581d.pollFirst();
                    m33416a(EnumC2973a.SELECT);
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.7
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C2952di.this.m33385n();
                        }
                    });
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33410a(String str, EnumC2828ap apVar) {
        synchronized (this) {
            if (EnumC2973a.SELECT.equals(this.f4583f)) {
                C2806af afVar = C3484p.m32358a().f6006h;
                if (C2806af.m33651a(this.f4587j, str)) {
                    String str2 = f4578a;
                    C3356jq.m32615a(3, str2, "Detected asset status change for asset:" + str + " status:" + apVar);
                    if (EnumC2828ap.COMPLETE.equals(apVar) || EnumC2828ap.ERROR.equals(apVar)) {
                        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.11
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                C2952di.this.m33385n();
                            }
                        });
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33409a(List<C2853ay> list) {
        synchronized (this) {
            if (EnumC2973a.CSRTB_AWAIT_AUCTION.equals(this.f4583f)) {
                if (list != null && !list.isEmpty() && list.size() <= 1) {
                    C2853ay ayVar = list.get(0);
                    if (!ayVar.f4111b.f4147b.f4457w) {
                        m33392j();
                        return;
                    }
                    List<C2904ca> list2 = ayVar.f4111b.f4147b.f4440f;
                    if (!(list2 == null || list2.isEmpty() || list2.get(0).f4366a == 6)) {
                        String str = null;
                        if (ayVar.f4111b.f4147b != null) {
                            Map<String, String> map = ayVar.f4111b.f4147b.f4458x;
                            str = null;
                            if (map != null) {
                                str = null;
                                if (map.containsKey("GROUP_ID")) {
                                    str = map.get("GROUP_ID");
                                }
                            }
                        }
                        if (str == null) {
                            List<C2904ca> list3 = ayVar.f4111b.f4147b.f4440f;
                            List<C2904ca> list4 = this.f4588k.f4111b.f4147b.f4440f;
                            list4.clear();
                            list4.addAll(list3);
                            ayVar.f4111b.f4147b.f4440f = list4;
                            ayVar.f4111b.f4147b.f4443i = this.f4588k.f4111b.f4147b.f4443i;
                            if (ayVar.f4111b.f4147b.f4458x != null && ayVar.f4111b.f4147b.f4458x.isEmpty()) {
                                ayVar.f4111b.f4147b.f4458x = this.f4588k.f4111b.f4147b.f4458x;
                            }
                            this.f4587j = ayVar;
                        } else {
                            this.f4587j = ayVar;
                        }
                        m33416a(EnumC2973a.SELECT);
                        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.9
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                C2952di.this.m33385n();
                            }
                        });
                        return;
                    }
                    m33392j();
                    return;
                }
                m33392j();
            }
        }
    }

    /* renamed from: b */
    public final void m33408b() {
        synchronized (this) {
            m33420a();
            this.f4580c.m33373b();
            this.f4581d.clear();
        }
    }

    /* renamed from: c */
    public final void m33406c() {
        synchronized (this) {
            this.f4581d.clear();
        }
    }

    /* renamed from: d */
    public final void m33404d() {
        synchronized (this) {
            if (this.f4585h != null) {
                this.f4585h.m33381a();
            }
            m33420a();
        }
    }

    /* renamed from: e */
    public final void m33402e() {
        synchronized (this) {
            m33416a(EnumC2973a.PRERENDER);
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.3
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C2952di.this.m33382q();
                }
            });
        }
    }

    /* renamed from: g */
    public final void m33398g() {
        synchronized (this) {
            if (EnumC2973a.REQUEST.equals(this.f4583f)) {
                this.f4581d.addAll(this.f4586i.m33683b());
                if (!this.f4581d.isEmpty()) {
                    this.f4587j = this.f4581d.pollFirst();
                }
                m33416a(EnumC2973a.SELECT);
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.8
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2952di.this.m33385n();
                    }
                });
            }
        }
    }

    /* renamed from: h */
    public final void m33396h() {
        synchronized (this) {
            if (this.f4590m > 0 && System.currentTimeMillis() > this.f4590m) {
                C3009dw.m33318a(this.f4584g, EnumC2873bh.kUnfilled);
                m33420a();
            }
        }
    }

    /* renamed from: i */
    public final void m33394i() {
        synchronized (this) {
            if (this.f4591n > 0 && System.currentTimeMillis() > this.f4591n) {
                m33392j();
            }
        }
    }

    /* renamed from: j */
    public final void m33392j() {
        synchronized (this) {
            if (EnumC2973a.CSRTB_AUCTION_REQUIRED.equals(this.f4583f) || EnumC2973a.CSRTB_AWAIT_AUCTION.equals(this.f4583f)) {
                boolean z = false;
                Iterator<C3013e> it = C3010dx.m33316a(this.f4587j.f4111b.f4147b.f4440f.get(0), new C3192h(EnumC2874bi.EV_UNFILLED, null, null, null, null)).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    if (EnumC2872bg.AC_NEXT_AD_UNIT.equals(it.next().f4697a)) {
                        break;
                    }
                }
                C3007du.m33321a(EnumC2874bi.EV_UNFILLED, Collections.emptyMap(), this.f4584g.mo32282e(), this.f4584g, this.f4587j, 0);
                if (z) {
                    m33418a(this.f4587j, EnumC2873bh.kCSRTBAuctionTimeout);
                }
                m33420a();
            }
        }
    }

    /* renamed from: k */
    public final void m33390k() {
        synchronized (this) {
            if (this.f4593p <= 0 || System.currentTimeMillis() <= this.f4593p) {
                if (this.f4592o > 0 && System.currentTimeMillis() > this.f4592o) {
                    if (!EnumC2973a.SELECT.equals(this.f4583f) || this.f4587j == null || this.f4587j.m33523g() || !this.f4587j.m33524f()) {
                        m33384o();
                        m33385n();
                    } else {
                        m33416a(EnumC2973a.PREPARE);
                        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.di.10
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                C3356jq.m32615a(3, C2952di.f4578a, "Skip timer expired. Start streaming now.");
                                C2952di.this.m33383p();
                            }
                        });
                        return;
                    }
                }
                return;
            }
            m33418a(this.f4587j, EnumC2873bh.kVASTResolveTimeout);
            m33420a();
        }
    }

    /* renamed from: l */
    public final void m33388l() {
        synchronized (this) {
            if (this.f4594q > 0 && System.currentTimeMillis() > this.f4594q) {
                C3323iz.m32690a().m32624a(this);
                m33418a(this.f4587j, EnumC2873bh.kPrerenderDownloadTimeout);
                m33420a();
            }
        }
    }

    /* renamed from: m */
    public final void m33386m() {
        synchronized (this) {
            if (EnumC2973a.CSRTB_AUCTION_REQUIRED.equals(this.f4583f)) {
                if (this.f4587j == null) {
                    C3356jq.m32615a(6, f4578a, "An auction is required, but there is no ad unit!");
                    C3009dw.m33318a(this.f4584g, EnumC2873bh.kMissingAdController);
                    m33420a();
                    return;
                }
                m33416a(EnumC2973a.CSRTB_AWAIT_AUCTION);
                long j = this.f4587j.f4111b.f4147b.f4452r;
                if (j > 0) {
                    String str = f4578a;
                    C3356jq.m32615a(3, str, "Setting CSRTB auction timeout for " + j + " ms");
                    this.f4591n = System.currentTimeMillis() + j;
                }
                this.f4588k = this.f4587j;
                this.f4580c.m33375a(this.f4584g, (C2792ac) null, this.f4587j);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x031e, code lost:
        m33418a(r6.f4587j, com.flurry.sdk.EnumC2873bh.kInvalidAdUnit);
        m33420a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x032f, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0334, code lost:
        if (r6.f4587j != null) goto L_0x0357;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0337, code lost:
        com.flurry.sdk.C3484p.m32358a();
        com.flurry.sdk.C3484p.m32352a(null, com.flurry.sdk.EnumC2874bi.EV_UNFILLED, true, java.util.Collections.emptyMap());
        com.flurry.sdk.C3009dw.m33318a(r6.f4584g, com.flurry.sdk.EnumC2873bh.kUnfilled);
        m33420a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0356, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0357, code lost:
        m33416a(com.flurry.sdk.C2952di.EnumC2973a.f4631f);
        com.flurry.sdk.C3331jb.m32681a().m32678a(new com.flurry.sdk.C2952di.C295812(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0374, code lost:
        return;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33385n() {
        /*
            Method dump skipped, instructions count: 890
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2952di.m33385n():void");
    }

    /* renamed from: o */
    public final void m33384o() {
        synchronized (this) {
            if (EnumC2973a.SELECT.equals(this.f4583f)) {
                String str = this.f4587j.f4111b.f4147b.f4443i;
                String str2 = f4578a;
                C3356jq.m32615a(3, str2, "Precaching required for incomplete ad unit, skipping ad group -- adspace: " + this.f4579b + " groupId: " + ((Object) str));
                this.f4582e.add(this.f4587j);
                this.f4587j = null;
                this.f4582e.addAll(this.f4581d);
                this.f4581d.clear();
                this.f4581d.addAll(this.f4586i.m33683b());
                if (!this.f4581d.isEmpty()) {
                    this.f4587j = this.f4581d.pollFirst();
                }
                C3444l.m32473a().m32472a("precachingAdGroupSkipped");
                this.f4589l = 0;
                this.f4592o = 0L;
            }
        }
    }

    /* renamed from: p */
    public final void m33383p() {
        synchronized (this) {
            C3445la.m32470a();
            if (EnumC2973a.PREPARE.equals(this.f4583f)) {
                C3356jq.m32615a(3, f4578a, "Preparing ad");
                if (this.f4584g.mo32282e() == null) {
                    m33418a(this.f4587j, EnumC2873bh.kNoContext);
                    m33420a();
                    return;
                }
                C3007du.m33321a(EnumC2874bi.EV_FILLED, Collections.emptyMap(), this.f4584g.mo32282e(), this.f4584g, this.f4587j, 1);
                this.f4584g.mo32287a(this.f4587j);
                boolean z = false;
                for (C3013e eVar : C3010dx.m33316a(this.f4587j.f4111b.f4147b.f4440f.get(0), new C3192h(EnumC2874bi.EV_FILLED, null, null, null, null))) {
                    if (EnumC2872bg.AC_VERIFY_PACKAGE.equals(eVar.f4697a)) {
                        z = true;
                    }
                }
                if (z) {
                    m33416a(EnumC2973a.FILLED);
                } else {
                    m33402e();
                }
            }
        }
    }

    /* renamed from: q */
    public final void m33382q() {
        synchronized (this) {
            if (EnumC2973a.PRERENDER.equals(this.f4583f)) {
                C3356jq.m32615a(3, f4578a, "Pre-rendering ad");
                List<C2904ca> list = this.f4587j.f4111b.f4147b.f4440f;
                for (int i = 0; i < list.size(); i++) {
                    C3021eh b = this.f4587j.m33531b(i);
                    if (b != null && (!b.f4707c || b.f4708d)) {
                        m33418a(this.f4587j, EnumC2873bh.kInvalidVASTAd);
                        m33420a();
                        return;
                    }
                }
                C2806af afVar = C3484p.m32358a().f6006h;
                if (this.f4587j.m33523g()) {
                    C3356jq.m32615a(3, f4578a, "Precaching required for ad, copying assets");
                    if (EnumC2816ak.COMPLETE.equals(afVar.m33642b(this.f4587j))) {
                        C3444l.m32473a().m32472a("precachingAdAssetsAvailable");
                        if (!C3484p.m32358a().f6006h.m33649a(this.f4584g, this.f4587j)) {
                            C3356jq.m32615a(3, f4578a, "Could not copy required ad assets");
                            C3444l.m32473a().m32472a("precachingAdAssetCopyFailed");
                            m33418a(this.f4587j, EnumC2873bh.kPrecachingCopyFailed);
                            m33420a();
                            return;
                        }
                    } else {
                        C3356jq.m32615a(3, f4578a, "Ad assets incomplete");
                        C3444l.m32473a().m32472a("precachingAdAssetsIncomplete");
                        m33418a(this.f4587j, EnumC2873bh.kPrecachingMissingAssets);
                        m33420a();
                        return;
                    }
                } else if (this.f4587j.m33524f()) {
                    C3356jq.m32615a(3, f4578a, "Precaching optional for ad, copying assets");
                    C3484p.m32358a().f6006h.m33649a(this.f4584g, this.f4587j);
                }
                C3007du.m33321a(EnumC2874bi.EV_PREPARED, Collections.emptyMap(), this.f4584g.mo32282e(), this.f4584g, this.f4587j, 0);
                C2904ca caVar = list.get(0);
                if (caVar.f4366a == 1) {
                    C3356jq.m32615a(3, f4578a, "Binding is HTML_URL, pre-render required");
                    long j = this.f4587j.f4111b.f4147b.f4452r;
                    if (j > 0) {
                        String str = f4578a;
                        C3356jq.m32615a(3, str, "Setting pre-render timeout for " + j + " ms");
                        this.f4594q = System.currentTimeMillis() + j;
                    }
                    m33417a(this.f4587j, caVar.f4367b);
                    return;
                }
                C3009dw.m33319a(this.f4584g);
                m33420a();
            }
        }
    }
}
