package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.d;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaqt.class */
public final class zzaqt implements MediationInterstitialAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Activity f28600a;

    /* renamed from: b  reason: collision with root package name */
    private MediationInterstitialListener f28601b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f28602c;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        za.zzdz("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        za.zzdz("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        za.zzdz("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.f28601b = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            za.zzez("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            za.zzez("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f28601b.onAdFailedToLoad(this, 0);
        } else {
            if (!(n.a() && br.a(context))) {
                za.zzez("Default browser does not support custom tabs. Bailing out.");
                this.f28601b.onAdFailedToLoad(this, 0);
                return;
            }
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                za.zzez("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.f28601b.onAdFailedToLoad(this, 0);
                return;
            }
            this.f28600a = (Activity) context;
            this.f28602c = Uri.parse(string);
            this.f28601b.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        d a2 = new d.a().a();
        a2.f1233a.setData(this.f28602c);
        zzj.zzegq.post(new pl(this, new AdOverlayInfoParcel(new zzb(a2.f1233a, null), null, new pj(this), null, new zzbar(0, 0, false), null)));
        yi yiVar = zzr.zzkz().g;
        long a3 = zzr.zzlc().a();
        synchronized (yiVar.f28540a) {
            if (yiVar.f28541b == yh.f28537b) {
                if (yiVar.f28542c + ((Long) ekb.e().a(aq.dA)).longValue() <= a3) {
                    yiVar.f28541b = yh.f28536a;
                }
            }
        }
        long a4 = zzr.zzlc().a();
        synchronized (yiVar.f28540a) {
            if (yiVar.f28541b == 2) {
                yiVar.f28541b = 3;
                if (yiVar.f28541b == yh.f28537b) {
                    yiVar.f28542c = a4;
                }
            }
        }
    }
}
