package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.C0458d;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.C12110n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaqt.class */
public final class zzaqt implements MediationInterstitialAdapter {

    /* renamed from: a */
    private Activity f50148a;

    /* renamed from: b */
    private MediationInterstitialListener f50149b;

    /* renamed from: c */
    private Uri f50150c;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        C13088za.zzdz("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        C13088za.zzdz("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        C13088za.zzdz("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.f50149b = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            C13088za.zzez("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            C13088za.zzez("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f50149b.onAdFailedToLoad(this, 0);
        } else {
            if (!(C12110n.m19021a() && C12250br.m17658a(context))) {
                C13088za.zzez("Default browser does not support custom tabs. Bailing out.");
                this.f50149b.onAdFailedToLoad(this, 0);
                return;
            }
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                C13088za.zzez("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.f50149b.onAdFailedToLoad(this, 0);
                return;
            }
            this.f50148a = (Activity) context;
            this.f50150c = Uri.parse(string);
            this.f50149b.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        C0458d m45466a = new C0458d.C0459a().m45466a();
        m45466a.f1796a.setData(this.f50150c);
        zzj.zzegq.post(new RunnableC12827pl(this, new AdOverlayInfoParcel(new zzb(m45466a.f1796a, null), null, new C12825pj(this), null, new zzbar(0, 0, false), null)));
        C13069yi c13069yi = zzr.zzkz().f50049g;
        long mo19039a = zzr.zzlc().mo19039a();
        synchronized (c13069yi.f50070a) {
            if (c13069yi.f50071b == C13068yh.f50067b) {
                if (c13069yi.f50072c + ((Long) ekb.m14831e().m18571a(C12187aq.f42797dA)).longValue() <= mo19039a) {
                    c13069yi.f50071b = C13068yh.f50066a;
                }
            }
        }
        long mo19039a2 = zzr.zzlc().mo19039a();
        synchronized (c13069yi.f50070a) {
            if (c13069yi.f50071b != 2) {
                return;
            }
            c13069yi.f50071b = 3;
            if (c13069yi.f50071b == C13068yh.f50067b) {
                c13069yi.f50072c = mo19039a2;
            }
        }
    }
}
