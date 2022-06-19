package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.C2249b;
import com.google.android.gms.ads.C2274c;
import com.google.android.gms.ads.C2282d;
import com.google.android.gms.ads.C2286e;
import com.google.android.gms.ads.C2298i;
import com.google.android.gms.ads.C2387p;
import com.google.android.gms.ads.mediation.AbstractC2360e;
import com.google.android.gms.ads.mediation.AbstractC2361f;
import com.google.android.gms.ads.mediation.AbstractC2364h;
import com.google.android.gms.ads.mediation.AbstractC2368l;
import com.google.android.gms.ads.mediation.AbstractC2370n;
import com.google.android.gms.ads.mediation.AbstractC2378t;
import com.google.android.gms.ads.mediation.AbstractC2380v;
import com.google.android.gms.ads.mediation.AbstractC2383y;
import com.google.android.gms.ads.mediation.C2374r;
import com.google.android.gms.ads.mediation.C2377s;
import com.google.android.gms.ads.mediation.C2381w;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.p118a.AbstractC2244a;
import com.google.android.gms.ads.p119b.AbstractC2259g;
import com.google.android.gms.ads.p119b.AbstractC2261h;
import com.google.android.gms.ads.p119b.AbstractC2263i;
import com.google.android.gms.ads.p119b.AbstractC2267k;
import com.google.android.gms.ads.p119b.C2255d;
import com.google.android.gms.ads.p119b.C2257e;
import com.google.android.gms.ads.p119b.C2258f;
import com.google.android.gms.ads.p119b.C2269l;
import com.google.android.gms.ads.reward.AbstractC2394d;
import com.google.android.gms.ads.reward.mediation.AbstractC2395a;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.internal.ads.C3634xr;
import com.google.android.gms.internal.ads.C3645yb;
import com.google.android.gms.internal.ads.dxs;
import com.google.android.gms.internal.ads.dyx;
import com.google.android.gms.internal.ads.eba;
import com.google.android.gms.internal.ads.zzbgz;
import java.util.Date;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter.class */
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationNativeAdapter, AbstractC2380v, AbstractC2383y, MediationRewardedVideoAdAdapter, zzbgz {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    private AdView zzlw;
    private C2298i zzlx;
    private C2274c zzly;
    private Context zzlz;
    private C2298i zzma;
    private AbstractC2395a zzmb;
    private final AbstractC2394d zzmc = new C2236g(this);

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$a.class */
    static final class C2217a extends C2377s {

        /* renamed from: e */
        private final AbstractC2261h f6501e;

        public C2217a(AbstractC2261h abstractC2261h) {
            this.f6501e = abstractC2261h;
            m14675a(abstractC2261h.mo10762b().toString());
            m14674a(abstractC2261h.mo10761c());
            m14673b(abstractC2261h.mo10760d().toString());
            if (abstractC2261h.mo10759e() != null) {
                m14676a(abstractC2261h.mo10759e());
            }
            m14672c(abstractC2261h.mo10758f().toString());
            m14671d(abstractC2261h.mo10757g().toString());
            m14703a(true);
            m14700b(true);
            m14704a(abstractC2261h.mo10756h());
        }

        @Override // com.google.android.gms.ads.mediation.C2373q
        /* renamed from: a */
        public final void mo14706a(View view) {
            if (view instanceof C2257e) {
                ((C2257e) view).setNativeAd(this.f6501e);
            }
            C2258f c2258f = C2258f.f6559a.get(view);
            if (c2258f != null) {
                c2258f.m14884a(this.f6501e);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$b.class */
    static final class C2218b extends C2374r {

        /* renamed from: e */
        private final AbstractC2259g f6502e;

        public C2218b(AbstractC2259g abstractC2259g) {
            this.f6502e = abstractC2259g;
            m14690a(abstractC2259g.mo10959b().toString());
            m14689a(abstractC2259g.mo10958c());
            m14688b(abstractC2259g.mo10957d().toString());
            m14691a(abstractC2259g.mo10956e());
            m14687c(abstractC2259g.mo10955f().toString());
            if (abstractC2259g.mo10954g() != null) {
                m14692a(abstractC2259g.mo10954g().doubleValue());
            }
            if (abstractC2259g.mo10953h() != null) {
                m14686d(abstractC2259g.mo10953h().toString());
            }
            if (abstractC2259g.mo10952i() != null) {
                m14685e(abstractC2259g.mo10952i().toString());
            }
            m14703a(true);
            m14700b(true);
            m14704a(abstractC2259g.mo10951j());
        }

        @Override // com.google.android.gms.ads.mediation.C2373q
        /* renamed from: a */
        public final void mo14706a(View view) {
            if (view instanceof C2257e) {
                ((C2257e) view).setNativeAd(this.f6502e);
            }
            C2258f c2258f = C2258f.f6559a.get(view);
            if (c2258f != null) {
                c2258f.m14884a(this.f6502e);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$c.class */
    static final class C2219c extends C2249b implements AbstractC2244a, dxs {

        /* renamed from: a */
        private final AbstractAdViewAdapter f6503a;

        /* renamed from: b */
        private final AbstractC2364h f6504b;

        public C2219c(AbstractAdViewAdapter abstractAdViewAdapter, AbstractC2364h abstractC2364h) {
            this.f6503a = abstractAdViewAdapter;
            this.f6504b = abstractC2364h;
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: a */
        public final void mo8042a() {
            this.f6504b.mo7638a(this.f6503a);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: a */
        public final void mo8041a(int i) {
            this.f6504b.mo7637a(this.f6503a, i);
        }

        @Override // com.google.android.gms.ads.p118a.AbstractC2244a
        /* renamed from: a */
        public final void mo11654a(String str, String str2) {
            this.f6504b.mo7636a(this.f6503a, str, str2);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: b */
        public final void mo8164b() {
            this.f6504b.mo7625b(this.f6503a);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: c */
        public final void mo1190c() {
            this.f6504b.mo7621c(this.f6503a);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: d */
        public final void mo8163d() {
            this.f6504b.mo7618d(this.f6503a);
        }

        @Override // com.google.android.gms.ads.C2249b, com.google.android.gms.internal.ads.dxs
        /* renamed from: e */
        public final void mo8200e() {
            this.f6504b.mo7615e(this.f6503a);
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$d */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$d.class */
    static final class C2220d extends C2381w {

        /* renamed from: a */
        private final AbstractC2267k f6505a;

        public C2220d(AbstractC2267k abstractC2267k) {
            this.f6505a = abstractC2267k;
            m14656a(abstractC2267k.mo8153a());
            m14655a(abstractC2267k.mo8152b());
            m14651b(abstractC2267k.mo8151c());
            m14660a(abstractC2267k.mo8150d());
            m14648c(abstractC2267k.mo8149e());
            m14646d(abstractC2267k.mo8148f());
            m14658a(abstractC2267k.mo8147g());
            m14644e(abstractC2267k.mo8146h());
            m14642f(abstractC2267k.mo8145i());
            m14657a(abstractC2267k.mo8142l());
            m14654a(true);
            m14650b(true);
            m14659a(abstractC2267k.mo8144j());
        }

        @Override // com.google.android.gms.ads.mediation.C2381w
        /* renamed from: a */
        public final void mo14661a(View view, Map<String, View> map, Map<String, View> map2) {
            if (view instanceof C2269l) {
                ((C2269l) view).setNativeAd(this.f6505a);
                return;
            }
            C2258f c2258f = C2258f.f6559a.get(view);
            if (c2258f == null) {
                return;
            }
            c2258f.m14883a(this.f6505a);
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$e */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$e.class */
    static final class C2221e extends C2249b implements AbstractC2259g.AbstractC2260a, AbstractC2261h.AbstractC2262a, AbstractC2263i.AbstractC2264a, AbstractC2263i.AbstractC2265b, AbstractC2267k.AbstractC2268a {

        /* renamed from: a */
        private final AbstractAdViewAdapter f6506a;

        /* renamed from: b */
        private final AbstractC2370n f6507b;

        public C2221e(AbstractAdViewAdapter abstractAdViewAdapter, AbstractC2370n abstractC2370n) {
            this.f6506a = abstractAdViewAdapter;
            this.f6507b = abstractC2370n;
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: a */
        public final void mo8042a() {
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: a */
        public final void mo8041a(int i) {
            this.f6507b.mo7632a(this.f6506a, i);
        }

        @Override // com.google.android.gms.ads.p119b.AbstractC2259g.AbstractC2260a
        /* renamed from: a */
        public final void mo14881a(AbstractC2259g abstractC2259g) {
            this.f6507b.mo7629a(this.f6506a, new C2218b(abstractC2259g));
        }

        @Override // com.google.android.gms.ads.p119b.AbstractC2261h.AbstractC2262a
        /* renamed from: a */
        public final void mo14880a(AbstractC2261h abstractC2261h) {
            this.f6507b.mo7629a(this.f6506a, new C2217a(abstractC2261h));
        }

        @Override // com.google.android.gms.ads.p119b.AbstractC2263i.AbstractC2265b
        /* renamed from: a */
        public final void mo14878a(AbstractC2263i abstractC2263i) {
            this.f6507b.mo7631a(this.f6506a, abstractC2263i);
        }

        @Override // com.google.android.gms.ads.p119b.AbstractC2263i.AbstractC2264a
        /* renamed from: a */
        public final void mo14879a(AbstractC2263i abstractC2263i, String str) {
            this.f6507b.mo7630a(this.f6506a, abstractC2263i, str);
        }

        @Override // com.google.android.gms.ads.p119b.AbstractC2267k.AbstractC2268a
        /* renamed from: a */
        public final void mo14874a(AbstractC2267k abstractC2267k) {
            this.f6507b.mo7628a(this.f6506a, new C2220d(abstractC2267k));
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: b */
        public final void mo8164b() {
            this.f6507b.mo7633a(this.f6506a);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: c */
        public final void mo1190c() {
            this.f6507b.mo7623b(this.f6506a);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: d */
        public final void mo8163d() {
            this.f6507b.mo7619c(this.f6506a);
        }

        @Override // com.google.android.gms.ads.C2249b, com.google.android.gms.internal.ads.dxs
        /* renamed from: e */
        public final void mo8200e() {
            this.f6507b.mo7616d(this.f6506a);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: f */
        public final void mo14909f() {
            this.f6507b.mo7613e(this.f6506a);
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$f */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$f.class */
    static final class C2222f extends C2249b implements dxs {

        /* renamed from: a */
        private final AbstractAdViewAdapter f6508a;

        /* renamed from: b */
        private final AbstractC2368l f6509b;

        public C2222f(AbstractAdViewAdapter abstractAdViewAdapter, AbstractC2368l abstractC2368l) {
            this.f6508a = abstractAdViewAdapter;
            this.f6509b = abstractC2368l;
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: a */
        public final void mo8042a() {
            this.f6509b.mo7635a(this.f6508a);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: a */
        public final void mo8041a(int i) {
            this.f6509b.mo7634a(this.f6508a, i);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: b */
        public final void mo8164b() {
            this.f6509b.mo7624b(this.f6508a);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: c */
        public final void mo1190c() {
            this.f6509b.mo7620c(this.f6508a);
        }

        @Override // com.google.android.gms.ads.C2249b
        /* renamed from: d */
        public final void mo8163d() {
            this.f6509b.mo7617d(this.f6508a);
        }

        @Override // com.google.android.gms.ads.C2249b, com.google.android.gms.internal.ads.dxs
        /* renamed from: e */
        public final void mo8200e() {
            this.f6509b.mo7614e(this.f6508a);
        }
    }

    private final C2282d zza(Context context, AbstractC2360e abstractC2360e, Bundle bundle, Bundle bundle2) {
        C2282d.C2283a c2283a = new C2282d.C2283a();
        Date mo7569a = abstractC2360e.mo7569a();
        if (mo7569a != null) {
            c2283a.m14835a(mo7569a);
        }
        int mo7568b = abstractC2360e.mo7568b();
        if (mo7568b != 0) {
            c2283a.m14840a(mo7568b);
        }
        Set<String> mo7567c = abstractC2360e.mo7567c();
        if (mo7567c != null) {
            for (String str : mo7567c) {
                c2283a.m14836a(str);
            }
        }
        Location mo7566d = abstractC2360e.mo7566d();
        if (mo7566d != null) {
            c2283a.m14839a(mo7566d);
        }
        if (abstractC2360e.mo7564f()) {
            dyx.m8162a();
            c2283a.m14833b(C3634xr.m6802a(context));
        }
        if (abstractC2360e.mo7565e() != -1) {
            c2283a.m14834a(abstractC2360e.mo7565e() == 1);
        }
        c2283a.m14832b(abstractC2360e.mo7563g());
        c2283a.m14837a(AdMobAdapter.class, zza(bundle, bundle2));
        return c2283a.m14841a();
    }

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.zzlw;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public Bundle getInterstitialAdapterInfo() {
        return new AbstractC2361f.C2362a().m14710a(1).m14711a();
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2383y
    public eba getVideoController() {
        C2387p videoController;
        return (this.zzlw == null || (videoController = this.zzlw.getVideoController()) == null) ? null : videoController.m14617a();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void initialize(Context context, AbstractC2360e abstractC2360e, String str, AbstractC2395a abstractC2395a, Bundle bundle, Bundle bundle2) {
        this.zzlz = context.getApplicationContext();
        this.zzmb = abstractC2395a;
        this.zzmb.mo7245a(this);
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public boolean isInitialized() {
        return this.zzmb != null;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void loadAd(AbstractC2360e abstractC2360e, Bundle bundle, Bundle bundle2) {
        if (this.zzlz == null || this.zzmb == null) {
            C3645yb.m6749c("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        this.zzma = new C2298i(this.zzlz);
        this.zzma.m14806a(true);
        this.zzma.m14807a(getAdUnitId(bundle));
        this.zzma.m14808a(this.zzmc);
        this.zzma.m14809a(new C2235f(this));
        this.zzma.m14810a(zza(this.zzlz, abstractC2360e, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2361f
    public void onDestroy() {
        if (this.zzlw != null) {
            this.zzlw.mo14814c();
            this.zzlw = null;
        }
        if (this.zzlx != null) {
            this.zzlx = null;
        }
        if (this.zzly != null) {
            this.zzly = null;
        }
        if (this.zzma != null) {
            this.zzma = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2380v
    public void onImmersiveModeUpdated(boolean z) {
        if (this.zzlx != null) {
            this.zzlx.m14804b(z);
        }
        if (this.zzma != null) {
            this.zzma.m14804b(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2361f
    public void onPause() {
        if (this.zzlw != null) {
            this.zzlw.mo14815b();
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2361f
    public void onResume() {
        if (this.zzlw != null) {
            this.zzlw.mo14817a();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, AbstractC2364h abstractC2364h, Bundle bundle, C2286e c2286e, AbstractC2360e abstractC2360e, Bundle bundle2) {
        this.zzlw = new AdView(context);
        this.zzlw.setAdSize(new C2286e(c2286e.m14827b(), c2286e.m14831a()));
        this.zzlw.setAdUnitId(getAdUnitId(bundle));
        this.zzlw.setAdListener(new C2219c(this, abstractC2364h));
        this.zzlw.mo14816a(zza(context, abstractC2360e, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, AbstractC2368l abstractC2368l, Bundle bundle, AbstractC2360e abstractC2360e, Bundle bundle2) {
        this.zzlx = new C2298i(context);
        this.zzlx.m14807a(getAdUnitId(bundle));
        this.zzlx.m14811a(new C2222f(this, abstractC2368l));
        this.zzlx.m14810a(zza(context, abstractC2360e, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, AbstractC2370n abstractC2370n, Bundle bundle, AbstractC2378t abstractC2378t, Bundle bundle2) {
        C2221e c2221e = new C2221e(this, abstractC2370n);
        C2274c.C2275a m14858a = new C2274c.C2275a(context, bundle.getString(AD_UNIT_ID_PARAMETER)).m14858a((C2249b) c2221e);
        C2255d mo7562h = abstractC2378t.mo7562h();
        if (mo7562h != null) {
            m14858a.m14862a(mo7562h);
        }
        if (abstractC2378t.mo7560j()) {
            m14858a.m14859a((AbstractC2267k.AbstractC2268a) c2221e);
        }
        if (abstractC2378t.mo7561i()) {
            m14858a.m14861a((AbstractC2259g.AbstractC2260a) c2221e);
        }
        if (abstractC2378t.mo7559k()) {
            m14858a.m14860a((AbstractC2261h.AbstractC2262a) c2221e);
        }
        if (abstractC2378t.mo7558l()) {
            for (String str : abstractC2378t.mo7557m().keySet()) {
                m14858a.m14856a(str, c2221e, abstractC2378t.mo7557m().get(str).booleanValue() ? c2221e : null);
            }
        }
        this.zzly = m14858a.m14867a();
        this.zzly.m14869a(zza(context, abstractC2378t, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.zzlx.m14805b();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void showVideo() {
        this.zzma.m14805b();
    }

    protected abstract Bundle zza(Bundle bundle, Bundle bundle2);
}
