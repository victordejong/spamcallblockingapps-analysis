package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5605f;
import com.google.android.gms.ads.mediation.AbstractC5772e;
import com.google.android.gms.ads.mediation.AbstractC5776i;
import com.google.android.gms.ads.mediation.AbstractC5781n;
import com.google.android.gms.ads.mediation.AbstractC5783p;
import com.google.android.gms.ads.mediation.AbstractC5788s;
import com.google.android.gms.ads.mediation.AbstractC5790u;
import com.google.android.gms.ads.mediation.AbstractC5794y;
import com.google.android.gms.ads.mediation.C5793x;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.p265x.AbstractC5859a;
import com.google.android.gms.internal.ads.AbstractC6640ju;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.xh0;
import com.google.android.gms.internal.ads.zzcoi;
import java.util.Date;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter.class */
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationNativeAdapter, AbstractC5790u, zzcoi, AbstractC5794y {
    @RecentlyNonNull
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    private C5600d adLoader;
    @RecentlyNonNull
    protected AdView mAdView;
    @RecentlyNonNull
    protected AbstractC5859a mInterstitialAd;

    C5603e buildAdRequest(Context context, AbstractC5772e abstractC5772e, Bundle bundle, Bundle bundle2) {
        C5603e.C5604a c5604a = new C5603e.C5604a();
        Date mo10072f = abstractC5772e.mo10072f();
        if (mo10072f != null) {
            c5604a.m18279f(mo10072f);
        }
        int mo10067k = abstractC5772e.mo10067k();
        if (mo10067k != 0) {
            c5604a.m18278g(mo10067k);
        }
        Set<String> mo10070h = abstractC5772e.mo10070h();
        if (mo10070h != null) {
            for (String str : mo10070h) {
                c5604a.m18284a(str);
            }
        }
        Location mo10068j = abstractC5772e.mo10068j();
        if (mo10068j != null) {
            c5604a.m18281d(mo10068j);
        }
        if (abstractC5772e.mo10071g()) {
            C7118wr.m9485a();
            c5604a.m18280e(xh0.m9160r(context));
        }
        if (abstractC5772e.mo10075c() != -1) {
            boolean z = true;
            if (abstractC5772e.mo10075c() != 1) {
                z = false;
            }
            c5604a.m18277h(z);
        }
        c5604a.m18276i(abstractC5772e.mo10073e());
        c5604a.m18283b(AdMobAdapter.class, buildExtrasBundle(bundle, bundle2));
        return c5604a.m18282c();
    }

    @RecentlyNonNull
    protected abstract Bundle buildExtrasBundle(@RecentlyNonNull Bundle bundle, @RecentlyNonNull Bundle bundle2);

    @RecentlyNonNull
    public String getAdUnitId(@RecentlyNonNull Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    @RecentlyNonNull
    public View getBannerView() {
        return this.mAdView;
    }

    AbstractC5859a getInterstitialAd() {
        return this.mInterstitialAd;
    }

    @Override // com.google.android.gms.internal.ads.zzcoi
    @RecentlyNonNull
    public Bundle getInterstitialAdapterInfo() {
        C5793x c5793x = new C5793x();
        c5793x.m17859a(1);
        return c5793x.m17858b();
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5794y
    public AbstractC6640ju getVideoController() {
        AdView adView = this.mAdView;
        if (adView != null) {
            return adView.m18315e().m17766c();
        }
        return null;
    }

    C5600d.C5601a newAdLoader(Context context, String str) {
        return new C5600d.C5601a(context, str);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, com.google.android.gms.ads.mediation.AbstractC5773f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onDestroy() {
        AdView adView = this.mAdView;
        if (adView != null) {
            adView.m18314a();
            this.mAdView = null;
        }
        if (this.mInterstitialAd != null) {
            this.mInterstitialAd = null;
        }
        if (this.adLoader != null) {
            this.adLoader = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5790u
    public void onImmersiveModeUpdated(boolean z) {
        AbstractC5859a abstractC5859a = this.mInterstitialAd;
        if (abstractC5859a != null) {
            abstractC5859a.mo11726c(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, com.google.android.gms.ads.mediation.AbstractC5773f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onPause() {
        AdView adView = this.mAdView;
        if (adView != null) {
            adView.m18312c();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter, com.google.android.gms.ads.mediation.AbstractC5773f, com.google.android.gms.ads.mediation.MediationNativeAdapter, com.google.android.gms.internal.ads.zzcoi, com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void onResume() {
        AdView adView = this.mAdView;
        if (adView != null) {
            adView.m18311d();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5776i abstractC5776i, @RecentlyNonNull Bundle bundle, @RecentlyNonNull C5605f c5605f, @RecentlyNonNull AbstractC5772e abstractC5772e, @RecentlyNonNull Bundle bundle2) {
        AdView adView = new AdView(context);
        this.mAdView = adView;
        adView.setAdSize(new C5605f(c5605f.m18273c(), c5605f.m18275a()));
        this.mAdView.setAdUnitId(getAdUnitId(bundle));
        this.mAdView.setAdListener(new C4597g(this, abstractC5776i));
        this.mAdView.m18313b(buildAdRequest(context, abstractC5772e, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5781n abstractC5781n, @RecentlyNonNull Bundle bundle, @RecentlyNonNull AbstractC5772e abstractC5772e, @RecentlyNonNull Bundle bundle2) {
        AbstractC5859a.m17736a(context, getAdUnitId(bundle), buildAdRequest(context, abstractC5772e, bundle2, bundle), new C4598h(this, abstractC5781n));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5783p abstractC5783p, @RecentlyNonNull Bundle bundle, @RecentlyNonNull AbstractC5788s abstractC5788s, @RecentlyNonNull Bundle bundle2) {
        C4600j c4600j = new C4600j(this, abstractC5783p);
        C5600d.C5601a m18288e = newAdLoader(context, bundle.getString(AD_UNIT_ID_PARAMETER)).m18288e(c4600j);
        m18288e.m18287f(abstractC5788s.mo10069i());
        m18288e.m18286g(abstractC5788s.mo10077a());
        if (abstractC5788s.mo10074d()) {
            m18288e.m18289d(c4600j);
        }
        if (abstractC5788s.zza()) {
            for (String str : abstractC5788s.mo10076b().keySet()) {
                m18288e.m18291b(str, c4600j, true != abstractC5788s.mo10076b().get(str).booleanValue() ? null : c4600j);
            }
        }
        C5600d m18292a = m18288e.m18292a();
        this.adLoader = m18292a;
        m18292a.m18294b(buildAdRequest(context, abstractC5788s, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        AbstractC5859a abstractC5859a = this.mInterstitialAd;
        if (abstractC5859a != null) {
            abstractC5859a.mo11725d(null);
        }
    }
}
