package p131c.p135b.p154b;

import android.content.Context;
import android.util.Log;
import com.applovin.mediation.AppLovinNativeAdapter;
import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.lang.ref.WeakReference;
import java.util.List;
/* renamed from: c.b.b.c */
/* loaded from: classes-dex2jar.jar:c/b/b/c.class */
public class C2441c implements AppLovinNativeAdLoadListener, AppLovinNativeAdPrecacheListener {

    /* renamed from: a */
    public final AppLovinNativeAdapter f9382a;

    /* renamed from: b */
    public final MediationNativeListener f9383b;

    /* renamed from: c */
    public final AppLovinSdk f9384c;

    /* renamed from: d */
    public final WeakReference<Context> f9385d;

    /* renamed from: e */
    public final NativeMediationAdRequest f9386e;

    /* renamed from: c.b.b.c$a */
    /* loaded from: classes-dex2jar.jar:c/b/b/c$a.class */
    public class RunnableC2442a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2446e f9387a;

        public RunnableC2442a(C2446e eVar) {
            this.f9387a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2441c.this.f9383b.mo16613a(C2441c.this.f9382a, this.f9387a);
        }
    }

    /* renamed from: c.b.b.c$b */
    /* loaded from: classes-dex2jar.jar:c/b/b/c$b.class */
    public class RunnableC2443b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2445d f9389a;

        public RunnableC2443b(C2445d dVar) {
            this.f9389a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2441c.this.f9383b.mo16614a(C2441c.this.f9382a, this.f9389a);
        }
    }

    /* renamed from: c.b.b.c$c */
    /* loaded from: classes-dex2jar.jar:c/b/b/c$c.class */
    public class RunnableC2444c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f9391a;

        public RunnableC2444c(int i) {
            this.f9391a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2441c.this.f9383b.mo16618a(C2441c.this.f9382a, this.f9391a);
        }
    }

    public C2441c(AppLovinNativeAdapter appLovinNativeAdapter, MediationNativeListener mediationNativeListener, AppLovinSdk appLovinSdk, Context context, NativeMediationAdRequest nativeMediationAdRequest) {
        this.f9382a = appLovinNativeAdapter;
        this.f9383b = mediationNativeListener;
        this.f9384c = appLovinSdk;
        this.f9385d = new WeakReference<>(context);
        this.f9386e = nativeMediationAdRequest;
    }

    /* renamed from: a */
    public static boolean m29733a(AppLovinNativeAd appLovinNativeAd) {
        return (appLovinNativeAd.getImageUrl() == null || appLovinNativeAd.getIconUrl() == null || appLovinNativeAd.getTitle() == null || appLovinNativeAd.getDescriptionText() == null || appLovinNativeAd.getCtaText() == null) ? false : true;
    }

    /* renamed from: a */
    public final void m29735a(int i) {
        AppLovinSdkUtils.runOnUiThread(new RunnableC2444c(i));
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
        Log.e(AppLovinNativeAdapter.f21799a, AppLovinMediationAdapter.createSDKError(i));
        m29735a(i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
        Context context = this.f9385d.get();
        if (context == null) {
            Log.e(AppLovinNativeAdapter.f21799a, AppLovinMediationAdapter.createAdapterError(103, "Failed to create mapper. Context is null."));
            m29735a(103);
        } else if (this.f9386e.mo16532d()) {
            C2446e eVar = new C2446e(context, appLovinNativeAd);
            Log.d(AppLovinNativeAdapter.f21799a, "UnifiedNativeAd loaded.");
            AppLovinSdkUtils.runOnUiThread(new RunnableC2442a(eVar));
        } else if (this.f9386e.mo16530f()) {
            C2445d dVar = new C2445d(appLovinNativeAd, context);
            Log.d(AppLovinNativeAdapter.f21799a, "AppInstallAd loaded.");
            AppLovinSdkUtils.runOnUiThread(new RunnableC2443b(dVar));
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
    public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        Log.e(AppLovinNativeAdapter.f21799a, AppLovinMediationAdapter.createSDKError(i));
        m29735a(i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List<AppLovinNativeAd> list) {
        if (list.size() <= 0 || !m29733a(list.get(0))) {
            Log.e(AppLovinNativeAdapter.f21799a, AppLovinMediationAdapter.createAdapterError(107, "Ad from AppLovin doesn't have all assets required for the app install ad format"));
            m29735a(107);
            return;
        }
        this.f9384c.getNativeAdService().precacheResources(list.get(0), this);
    }
}
