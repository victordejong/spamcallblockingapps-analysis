package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.PlatformVersion;
import p012b.p031d.p032b.C0760b;
import p131c.p161d.p170b.p224d.p252g.p253a.C3568g3;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3531f3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapx.class */
public final class zzapx implements MediationInterstitialAdapter {

    /* renamed from: a */
    public Activity f24246a;

    /* renamed from: b */
    public MediationInterstitialListener f24247b;

    /* renamed from: c */
    public Uri f24248c;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        zzbbq.m15858a("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        zzbbq.m15858a("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        zzbbq.m15858a("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.f24247b = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            zzbbq.m15852d("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            zzbbq.m15852d("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f24247b.mo16621a(this, 0);
        } else {
            if (!(PlatformVersion.m17066b() && zzacc.m16870a(context))) {
                zzbbq.m15852d("Default browser does not support custom tabs. Bailing out.");
                this.f24247b.mo16621a(this, 0);
                return;
            }
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                zzbbq.m15852d("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.f24247b.mo16621a(this, 0);
                return;
            }
            this.f24246a = (Activity) context;
            this.f24248c = Uri.parse(string);
            this.f24247b.mo16605c(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        C0760b a = new C0760b.C0761a().m36132a();
        a.f3620a.setData(this.f24248c);
        zzayu.f24665h.post(new RunnableC3531f3(this, new AdOverlayInfoParcel(new zzb(a.f3620a), null, new C3568g3(this), null, new zzbbx(0, 0, false))));
        zzp.m17965g().m16180e();
    }
}
