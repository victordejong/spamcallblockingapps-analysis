package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.p014a.C0392b;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C2317d;
import com.google.android.gms.ads.mediation.AbstractC2360e;
import com.google.android.gms.ads.mediation.AbstractC2368l;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.common.util.C2716m;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaol.class */
public final class zzaol implements MediationInterstitialAdapter {

    /* renamed from: a */
    private Activity f17731a;

    /* renamed from: b */
    private AbstractC2368l f17732b;

    /* renamed from: c */
    private Uri f17733c;

    @Override // com.google.android.gms.ads.mediation.AbstractC2361f
    public final void onDestroy() {
        C3645yb.m6751b("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2361f
    public final void onPause() {
        C3645yb.m6751b("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2361f
    public final void onResume() {
        C3645yb.m6751b("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, AbstractC2368l abstractC2368l, Bundle bundle, AbstractC2360e abstractC2360e, Bundle bundle2) {
        this.f17732b = abstractC2368l;
        if (this.f17732b == null) {
            C3645yb.m6745e("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            C3645yb.m6745e("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f17732b.mo7634a(this, 0);
        } else {
            if (!(C2716m.m13841b() && C3643y.m6757a(context))) {
                C3645yb.m6745e("Default browser does not support custom tabs. Bailing out.");
                this.f17732b.mo7634a(this, 0);
                return;
            }
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                C3645yb.m6745e("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.f17732b.mo7634a(this, 0);
                return;
            }
            this.f17731a = (Activity) context;
            this.f17733c = Uri.parse(string);
            this.f17732b.mo7635a(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        C0392b m21065a = new C0392b.C0393a().m21065a();
        m21065a.f1606a.setData(this.f17733c);
        C3567ve.f17498a.post(new RunnableC3351ne(this, new AdOverlayInfoParcel(new C2317d(m21065a.f1606a), null, new C3349nc(this), null, new C3647yd(0, 0, false))));
        C2341q.m14740g().m7091c();
    }
}
