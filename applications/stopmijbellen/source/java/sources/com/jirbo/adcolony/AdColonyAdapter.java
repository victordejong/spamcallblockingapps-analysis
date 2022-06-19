package com.jirbo.adcolony;

import android.content.Context;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.adcolony.sdk.AdColonyInterstitialActivity;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MediationUtils;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.jirbo.adcolony.C1975a;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import p068d2.C2168b;
import p068d2.C2227e4;
import p068d2.C2267f4;
import p068d2.C2278h;
import p068d2.C2315i3;
import p068d2.C2319j;
import p068d2.C2387q;
import p068d2.C2408t;
import p068d2.C2410t0;
import p068d2.C2411t1;
import p068d2.RunnableC2311i;
import p137j7.C3285a;
import p137j7.C3286b;
/* loaded from: classes2-dex2jar.jar:com/jirbo/adcolony/AdColonyAdapter.class */
public class AdColonyAdapter extends AdColonyMediationAdapter implements MediationInterstitialAdapter, MediationBannerAdapter {

    /* renamed from: b */
    public C2387q f7256b;

    /* renamed from: c */
    public C3285a f7257c;

    /* renamed from: d */
    public C2319j f7258d;

    /* renamed from: e */
    public C3286b f7259e;

    /* renamed from: com.jirbo.adcolony.AdColonyAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/jirbo/adcolony/AdColonyAdapter$a.class */
    public class C1973a implements C1975a.AbstractC1976a {

        /* renamed from: a */
        public final /* synthetic */ String f7260a;

        /* renamed from: b */
        public final /* synthetic */ MediationInterstitialListener f7261b;

        public C1973a(String str, MediationInterstitialListener mediationInterstitialListener) {
            AdColonyAdapter.this = r4;
            this.f7260a = str;
            this.f7261b = mediationInterstitialListener;
        }

        @Override // com.jirbo.adcolony.C1975a.AbstractC1976a
        /* renamed from: a */
        public void mo1945a() {
            C2168b.m3787k(this.f7260a, AdColonyAdapter.this.f7257c);
        }

        @Override // com.jirbo.adcolony.C1975a.AbstractC1976a
        /* renamed from: b */
        public void mo1944b(AdError adError) {
            Log.w(AdColonyMediationAdapter.TAG, adError.getMessage());
            this.f7261b.onAdFailedToLoad(AdColonyAdapter.this, adError);
        }
    }

    /* renamed from: com.jirbo.adcolony.AdColonyAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/jirbo/adcolony/AdColonyAdapter$b.class */
    public class C1974b implements C1975a.AbstractC1976a {

        /* renamed from: a */
        public final /* synthetic */ C2278h f7263a;

        /* renamed from: b */
        public final /* synthetic */ String f7264b;

        /* renamed from: c */
        public final /* synthetic */ MediationBannerListener f7265c;

        public C1974b(C2278h c2278h, String str, MediationBannerListener mediationBannerListener) {
            AdColonyAdapter.this = r4;
            this.f7263a = c2278h;
            this.f7264b = str;
            this.f7265c = mediationBannerListener;
        }

        @Override // com.jirbo.adcolony.C1975a.AbstractC1976a
        /* renamed from: a */
        public void mo1945a() {
            String.format(Locale.US, "Requesting banner with ad size: %dx%d", Integer.valueOf(this.f7263a.f8189a), Integer.valueOf(this.f7263a.f8190b));
            String str = AdColonyMediationAdapter.TAG;
            C2168b.m3788j(this.f7264b, AdColonyAdapter.this.f7259e, this.f7263a, null);
        }

        @Override // com.jirbo.adcolony.C1975a.AbstractC1976a
        /* renamed from: b */
        public void mo1944b(AdError adError) {
            Log.w(AdColonyMediationAdapter.TAG, adError.getMessage());
            this.f7265c.onAdFailedToLoad(AdColonyAdapter.this, adError);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.f7258d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        Context context;
        C2387q c2387q = this.f7256b;
        if (c2387q != null) {
            if (c2387q.f8438c != null && ((context = C2408t.f8531a) == null || (context instanceof AdColonyInterstitialActivity))) {
                C2267f4 c2267f4 = new C2267f4();
                C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, c2387q.f8438c.f8302l);
                new C2410t0("AdSession.on_request_close", c2387q.f8438c.f8301k, c2267f4).m3586b();
            }
            C2387q c2387q2 = this.f7256b;
            Objects.requireNonNull(c2387q2);
            C2408t.m3591d().m3722l().f8330c.remove(c2387q2.f8442g);
        }
        C3285a c3285a = this.f7257c;
        if (c3285a != null) {
            c3285a.f11126b = null;
            c3285a.f11125a = null;
        }
        C2319j c2319j = this.f7258d;
        if (c2319j != null) {
            if (c2319j.f8280l) {
                C0082b.m8750l(0, 1, "Ignoring duplicate call to destroy().", false);
            } else {
                c2319j.f8280l = true;
                C2411t1 c2411t1 = c2319j.f8277i;
                if (c2411t1 != null && c2411t1.f8538a != null) {
                    c2411t1.m3582d();
                }
                C2315i3.m3652s(new RunnableC2311i(c2319j));
            }
        }
        C3286b c3286b = this.f7259e;
        if (c3286b != null) {
            c3286b.f11128e = null;
            c3286b.f11127d = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        ArrayList arrayList = new ArrayList();
        AdSize adSize2 = AdSize.BANNER;
        arrayList.add(adSize2);
        AdSize adSize3 = AdSize.LEADERBOARD;
        arrayList.add(adSize3);
        AdSize adSize4 = AdSize.MEDIUM_RECTANGLE;
        arrayList.add(adSize4);
        AdSize adSize5 = AdSize.WIDE_SKYSCRAPER;
        arrayList.add(adSize5);
        AdSize findClosestSize = MediationUtils.findClosestSize(context, adSize, arrayList);
        C2278h c2278h = adSize2.equals(findClosestSize) ? C2278h.f8186d : adSize4.equals(findClosestSize) ? C2278h.f8185c : adSize3.equals(findClosestSize) ? C2278h.f8187e : adSize5.equals(findClosestSize) ? C2278h.f8188f : null;
        if (c2278h == null) {
            String valueOf = String.valueOf(adSize.toString());
            AdError createAdapterError = AdColonyMediationAdapter.createAdapterError(104, valueOf.length() != 0 ? "Failed to request banner with unsupported size: ".concat(valueOf) : new String("Failed to request banner with unsupported size: "));
            createAdapterError.getMessage();
            mediationBannerListener.onAdFailedToLoad(this, createAdapterError);
            return;
        }
        String m3985e = C1975a.m3986d().m3985e(C1975a.m3986d().m3984f(bundle), bundle2);
        if (!TextUtils.isEmpty(m3985e)) {
            this.f7259e = new C3286b(this, mediationBannerListener);
            C1975a.m3986d().m3989a(context, bundle, mediationAdRequest, new C1974b(c2278h, m3985e, mediationBannerListener));
            return;
        }
        AdError createAdapterError2 = AdColonyMediationAdapter.createAdapterError(101, "Failed to request ad: zone ID is null or empty");
        createAdapterError2.getMessage();
        mediationBannerListener.onAdFailedToLoad(this, createAdapterError2);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        String m3985e = C1975a.m3986d().m3985e(C1975a.m3986d().m3984f(bundle), bundle2);
        if (!TextUtils.isEmpty(m3985e)) {
            this.f7257c = new C3285a(this, mediationInterstitialListener);
            C1975a.m3986d().m3989a(context, bundle, mediationAdRequest, new C1973a(m3985e, mediationInterstitialListener));
            return;
        }
        AdError createAdapterError = AdColonyMediationAdapter.createAdapterError(101, "Missing or invalid Zone ID.");
        createAdapterError.getMessage();
        mediationInterstitialListener.onAdFailedToLoad(this, createAdapterError);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        C2387q c2387q = this.f7256b;
        if (c2387q != null) {
            c2387q.m3614d();
        }
    }
}
