package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.C0351c;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.mediation.AbstractC5772e;
import com.google.android.gms.ads.mediation.AbstractC5781n;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.common.util.C6237o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbye.class */
public final class zzbye implements MediationInterstitialAdapter {

    /* renamed from: a */
    private Activity f33749a;

    /* renamed from: b */
    private AbstractC5781n f33750b;

    /* renamed from: c */
    private Uri f33751c;

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void onDestroy() {
        ei0.m15469a("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void onPause() {
        ei0.m15469a("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void onResume() {
        ei0.m15469a("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, AbstractC5781n abstractC5781n, Bundle bundle, AbstractC5772e abstractC5772e, Bundle bundle2) {
        this.f33750b = abstractC5781n;
        if (abstractC5781n == null) {
            ei0.m15464f("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            ei0.m15464f("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f33750b.mo10785d(this, 0);
        } else if (!C6237o.m16782b() || !C6643jx.m14023a(context)) {
            ei0.m15464f("Default browser does not support custom tabs. Bailing out.");
            this.f33750b.mo10785d(this, 0);
        } else {
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                ei0.m15464f("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.f33750b.mo10785d(this, 0);
                return;
            }
            this.f33749a = (Activity) context;
            this.f33751c = Uri.parse(string);
            this.f33750b.mo10775n(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        C0351c m34653a = new C0351c.C0352a().m34653a();
        m34653a.f1470a.setData(this.f33751c);
        C5679c2.f18451a.post(new ga0(this, new AdOverlayInfoParcel(new zzc(m34653a.f1470a, null), null, new fa0(this), null, new zzcgz(0, 0, false, false, false), null, null)));
        C5667s.m18156h().m12238h();
    }
}
