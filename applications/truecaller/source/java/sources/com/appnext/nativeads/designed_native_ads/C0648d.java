package com.appnext.nativeads.designed_native_ads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.C0564o;
import com.appnext.core.C0566q;
import com.appnext.core.SettingsManager;
import com.appnext.core.adswatched.C0524a;
import com.appnext.nativeads.NativeAdObject;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.appnext.nativeads.designed_native_ads.d */
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/d.class */
public final class C0648d {

    /* renamed from: aM */
    private Context f1997aM;

    /* renamed from: go */
    private List<C0653a> f1998go;

    /* renamed from: gp */
    private String f1999gp;
    private Handler mHandler = new Handler(Looper.getMainLooper());

    /* renamed from: com.appnext.nativeads.designed_native_ads.d$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/d$a.class */
    public final class C0653a {

        /* renamed from: aY */
        private String f2012aY;

        /* renamed from: gv */
        private DesignNativeAd f2014gv;

        /* renamed from: gx */
        private boolean f2016gx = false;

        /* renamed from: gw */
        private boolean f2015gw = false;

        public C0653a(DesignNativeAd designNativeAd) {
            C0648d.this = r4;
            this.f2012aY = designNativeAd.getBannerID();
            this.f2014gv = designNativeAd;
        }

        /* renamed from: bh */
        public final void m42182bh() {
            this.f2015gw = true;
        }

        /* renamed from: bi */
        public final void m42181bi() {
            this.f2016gx = true;
        }

        /* renamed from: bj */
        public final DesignNativeAd m42180bj() {
            return this.f2014gv;
        }

        /* renamed from: bk */
        public final boolean m42179bk() {
            return this.f2015gw;
        }

        /* renamed from: bl */
        public final boolean m42178bl() {
            return this.f2016gx;
        }

        public final boolean equals(Object obj) {
            if (obj != null) {
                try {
                    if (obj instanceof C0653a) {
                        if (((C0653a) obj).f2012aY.equals(this.f2012aY)) {
                            return true;
                        }
                    }
                } catch (Throwable th) {
                    C0472a.m42577a("DesignedNativeAdsActionsController$Reports", th);
                }
            }
            return super.equals(obj);
        }
    }

    /* renamed from: com.appnext.nativeads.designed_native_ads.d$b */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/d$b.class */
    public final class C0654b implements C0566q.AbstractC0570a {

        /* renamed from: gv */
        private DesignNativeAd f2018gv;

        /* renamed from: gy */
        private NativeAdObject f2019gy;

        public C0654b(DesignNativeAd designNativeAd) {
            C0648d.this = r7;
            this.f2019gy = new NativeAdObject(r7.f1997aM, r7.f1999gp);
            this.f2018gv = designNativeAd;
        }

        @Override // com.appnext.core.C0566q.AbstractC0570a
        /* renamed from: c */
        public final AbstractC0501Ad mo42126c() {
            return this.f2019gy;
        }

        @Override // com.appnext.core.C0566q.AbstractC0570a
        /* renamed from: d */
        public final /* bridge */ /* synthetic */ AppnextAd mo42125d() {
            return this.f2018gv;
        }

        @Override // com.appnext.core.C0566q.AbstractC0570a
        /* renamed from: e */
        public final SettingsManager mo42124e() {
            return C0647c.m42194bg();
        }

        @Override // com.appnext.core.C0566q.AbstractC0570a
        public final void report(String str) {
        }
    }

    public C0648d(Context context, List<DesignNativeAd> list, String str) {
        this.f1997aM = context;
        this.f1999gp = str;
        m42183f(list);
    }

    /* renamed from: b */
    public void m42189b(final DesignNativeAd designNativeAd) {
        try {
            C0566q c0566q = new C0566q(this.f1997aM, new C0654b(designNativeAd));
            StringBuilder sb = new StringBuilder("Vta - ");
            sb.append(designNativeAd.getAdTitle());
            sb.append(" -  ");
            sb.append(designNativeAd.getBannerID());
            c0566q.m42340a(designNativeAd, designNativeAd.getImpressionUrl(), null);
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.nativeads.designed_native_ads.d.3
                @Override // java.lang.Runnable
                public final void run() {
                    C0524a.m42455o(C0648d.this.f1997aM).m42457k(designNativeAd.getBannerID(), "950");
                }
            });
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdsActionsController$vta", th);
        }
    }

    /* renamed from: c */
    public void m42185c(final DesignNativeAd designNativeAd) {
        try {
            new C0566q(this.f1997aM, new C0654b(designNativeAd)).m42331d(designNativeAd);
            new StringBuilder("Impression - ").append(designNativeAd.getAdTitle());
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.nativeads.designed_native_ads.d.4
                @Override // java.lang.Runnable
                public final void run() {
                    C0524a.m42455o(C0648d.this.f1997aM).m42457k(designNativeAd.getBannerID(), "950");
                }
            });
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdsActionsController$impression", th);
        }
    }

    /* renamed from: f */
    private void m42183f(List<DesignNativeAd> list) {
        if (list != null) {
            try {
                if (list.size() <= 0) {
                    return;
                }
                this.f1998go = new ArrayList();
                for (DesignNativeAd designNativeAd : list) {
                    this.f1998go.add(new C0653a(designNativeAd));
                }
            } catch (Throwable th) {
                C0472a.m42577a("DesignedNativeAdsActionsController$init", th);
            }
        }
    }

    /* renamed from: a */
    public final void m42193a(DesignNativeAd designNativeAd) {
        try {
            new C0566q(this.f1997aM, new C0654b(designNativeAd)).m42339a(designNativeAd, designNativeAd.getAppURL(), this.f1999gp, null);
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdsActionsController$doClick", th);
        }
    }

    /* renamed from: a */
    public final void m42192a(final DesignNativeAd designNativeAd, final int i) {
        try {
            if (this.f1998go == null) {
                return;
            }
            int indexOf = this.f1998go.indexOf(new C0653a(designNativeAd));
            if (indexOf >= 0 && indexOf <= this.f1998go.size() - 1) {
                final C0653a c0653a = this.f1998go.get(indexOf);
                if ((Boolean.parseBoolean(C0647c.m42194bg().m42476y("report_vta_instead_of_impresssion")) && indexOf != 0) || c0653a.m42178bl() || i < Integer.parseInt(C0647c.m42194bg().m42476y("min_imp_precentage"))) {
                    return;
                }
                int parseInt = Integer.parseInt(C0647c.m42194bg().m42476y("postpone_impression_sec"));
                if (Boolean.parseBoolean(C0647c.m42194bg().m42476y("repeat_viewable_criteria")) && parseInt > 0) {
                    Handler handler = this.mHandler;
                    if (handler == null) {
                        return;
                    }
                    handler.postDelayed(new Runnable() { // from class: com.appnext.nativeads.designed_native_ads.d.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                int indexOf2 = C0648d.this.f1998go.indexOf(new C0653a(designNativeAd));
                                if ((indexOf2 > 0 && ((C0653a) C0648d.this.f1998go.get(indexOf2)).m42178bl()) || i < Integer.parseInt(C0647c.m42194bg().m42476y("min_imp_precentage"))) {
                                    return;
                                }
                                C0648d.this.m42185c(c0653a.m42180bj());
                                c0653a.m42181bi();
                            } catch (Throwable th) {
                                C0472a.m42577a("DesignedNativeAdsActionsController$impressionIfNecessary", th);
                            }
                        }
                    }, parseInt * 1000);
                    return;
                }
                int indexOf2 = this.f1998go.indexOf(new C0653a(designNativeAd));
                if (indexOf2 > 0 && this.f1998go.get(indexOf2).m42178bl()) {
                    return;
                }
                c0653a.m42181bi();
                m42185c(c0653a.m42180bj());
            }
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdsActionsController$impressionIfNecessary", th);
        }
    }

    /* renamed from: b */
    public final void m42188b(final DesignNativeAd designNativeAd, final int i) {
        try {
            if (this.f1998go == null) {
                return;
            }
            int indexOf = this.f1998go.indexOf(new C0653a(designNativeAd));
            if (!Boolean.parseBoolean(C0647c.m42194bg().m42476y("report_vta_instead_of_impresssion"))) {
                return;
            }
            if ((!Boolean.parseBoolean(C0647c.m42194bg().m42476y("report_vta_instead_of_impresssion")) || indexOf != 0) && indexOf >= 0 && indexOf <= this.f1998go.size() - 1) {
                final C0653a c0653a = this.f1998go.get(indexOf);
                if (c0653a.m42179bk() || i < Integer.parseInt(C0647c.m42194bg().m42476y("min_vta_precentage"))) {
                    return;
                }
                int parseInt = Integer.parseInt(C0647c.m42194bg().m42476y("postpone_vta_sec"));
                if (Boolean.parseBoolean(C0647c.m42194bg().m42476y("repeat_vta_viewable_criteria")) && parseInt > 0) {
                    Handler handler = this.mHandler;
                    if (handler == null) {
                        return;
                    }
                    handler.postDelayed(new Runnable() { // from class: com.appnext.nativeads.designed_native_ads.d.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                int indexOf2 = C0648d.this.f1998go.indexOf(new C0653a(designNativeAd));
                                if ((indexOf2 > 0 && ((C0653a) C0648d.this.f1998go.get(indexOf2)).m42178bl()) || i < Integer.parseInt(C0647c.m42194bg().m42476y("min_vta_precentage"))) {
                                    return;
                                }
                                c0653a.m42182bh();
                                C0648d.this.m42189b(c0653a.m42180bj());
                            } catch (Throwable th) {
                                C0472a.m42577a("DesignedNativeAdsActionsController$impressionIfNecessary", th);
                            }
                        }
                    }, parseInt * 1000);
                    return;
                }
                int indexOf2 = this.f1998go.indexOf(new C0653a(designNativeAd));
                if (indexOf2 > 0 && this.f1998go.get(indexOf2).m42178bl()) {
                    return;
                }
                c0653a.m42182bh();
                m42189b(c0653a.m42180bj());
            }
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdsActionsController$impressionIfNecessary", th);
        }
    }
}
