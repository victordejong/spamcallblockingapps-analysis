package com.callapp.contacts.util.ads;

import android.app.Activity;
import android.util.Pair;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1262o;
import androidx.lifecycle.AbstractC1269v;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.loaders.AdLoaderFactory;
import com.callapp.contacts.util.ads.loaders.BaseInterstitialAdLoader;
import com.callapp.framework.util.StringUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/InterstitialLoaderLifecycle.class */
public class InterstitialLoaderLifecycle implements AbstractC1262o {

    /* renamed from: a */
    private final Activity f28013a;

    /* renamed from: b */
    private final Pair<String, Boolean> f28014b;

    /* renamed from: c */
    private final String f28015c;

    /* renamed from: d */
    private final AdUtils.AdEvents f28016d;

    /* renamed from: e */
    private final ShouldLoadIntervalPredicate f28017e;

    /* renamed from: f */
    private MoPubInterstitial f28018f;

    /* renamed from: g */
    private InterstitialAutoCloserLifecycleCallbacks f28019g;

    /* renamed from: h */
    private BaseInterstitialAdLoader f28020h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.ads.InterstitialLoaderLifecycle$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1.class */
    public class C78721 extends Task {

        /* renamed from: a */
        final /* synthetic */ JSONAdPreferences f28021a;

        C78721(JSONAdPreferences jSONAdPreferences) {
            InterstitialLoaderLifecycle.this = r4;
            this.f28021a = jSONAdPreferences;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            InterstitialLoaderLifecycle interstitialLoaderLifecycle = InterstitialLoaderLifecycle.this;
            interstitialLoaderLifecycle.f28020h = AdLoaderFactory.m27213a(interstitialLoaderLifecycle.f28013a, InterstitialLoaderLifecycle.this.f28014b, new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.InterstitialLoaderLifecycle.1.1
                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onAdClick() {
                    InterstitialLoaderLifecycle.this.f28019g.m27231a();
                    if (InterstitialLoaderLifecycle.this.f28016d != null) {
                        InterstitialLoaderLifecycle.this.f28016d.onAdClick();
                    }
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                    AdUtils.AdEvents._CC.$default$onBannerAdFailed(this, moPubView, moPubErrorCode);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onBannerAdLoaded(MoPubView moPubView, boolean z) {
                    AdUtils.AdEvents._CC.$default$onBannerAdLoaded(this, moPubView, z);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                    AdUtils.AdEvents._CC.$default$onInterstitialClicked(this, moPubInterstitial);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                    if (InterstitialLoaderLifecycle.this.f28016d != null) {
                        InterstitialLoaderLifecycle.this.f28016d.onInterstitialDismissed(moPubInterstitial);
                    }
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                    if (InterstitialLoaderLifecycle.this.f28016d != null) {
                        InterstitialLoaderLifecycle.this.f28016d.onInterstitialFailed(moPubInterstitial, moPubErrorCode);
                    }
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                    InterstitialLoaderLifecycle.this.f28018f = moPubInterstitial;
                    if (InterstitialLoaderLifecycle.this.f28016d != null) {
                        InterstitialLoaderLifecycle.this.f28016d.onInterstitialLoaded(moPubInterstitial);
                    }
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialShown(final MoPubInterstitial moPubInterstitial) {
                    if (C78721.this.f28021a.getInterstitialAutoCloseSec() > 0) {
                        new Task() { // from class: com.callapp.contacts.util.ads.InterstitialLoaderLifecycle.1.1.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                final InterstitialAutoCloserLifecycleCallbacks interstitialAutoCloserLifecycleCallbacks = InterstitialLoaderLifecycle.this.f28019g;
                                final Activity activity = interstitialAutoCloserLifecycleCallbacks.f28007a.get();
                                if (activity != null) {
                                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.InterstitialAutoCloserLifecycleCallbacks.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            activity.finish();
                                        }
                                    });
                                }
                                if (InterstitialLoaderLifecycle.this.f28016d != null) {
                                    InterstitialLoaderLifecycle.this.f28016d.onInterstitialDismissed(moPubInterstitial);
                                }
                            }
                        }.schedule(C78721.this.f28021a.getInterstitialAutoCloseSec() * 1000);
                    }
                    if (InterstitialLoaderLifecycle.this.f28016d != null) {
                        InterstitialLoaderLifecycle.this.f28016d.onInterstitialShown(moPubInterstitial);
                    }
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                    AdUtils.AdEvents._CC.$default$onNativeAdFailed(this, nativeErrorCode);
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public /* synthetic */ void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
                    AdUtils.AdEvents._CC.$default$onNativeAdLoaded(this, nativeAd, z);
                }
            });
            InterstitialLoaderLifecycle.this.f28020h.mo27206a();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents.class */
    public static class BottomBarActivityInterstitialAdEvents implements AdUtils.AdEvents {

        /* renamed from: a */
        public static ShouldLoadIntervalPredicate f28026a = C7883xe44daa8a.INSTANCE;

        /* renamed from: a */
        public static /* synthetic */ boolean m27223a(JSONAdPreferences jSONAdPreferences) {
            return Prefs.f26537fw.m28169b(1).get().intValue() >= jSONAdPreferences.getInterstitialInterval();
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onAdClick() {
            AdUtils.AdEvents._CC.$default$onAdClick(this);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            AdUtils.AdEvents._CC.$default$onBannerAdFailed(this, moPubView, moPubErrorCode);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onBannerAdLoaded(MoPubView moPubView, boolean z) {
            AdUtils.AdEvents._CC.$default$onBannerAdLoaded(this, moPubView, z);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialClicked(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialDismissed(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
            AdUtils.AdEvents._CC.$default$onInterstitialFailed(this, moPubInterstitial, moPubErrorCode);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
            Prefs.f26537fw.set(0);
            moPubInterstitial.show();
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialShown(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
            AdUtils.AdEvents._CC.$default$onNativeAdFailed(this, nativeErrorCode);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
            AdUtils.AdEvents._CC.$default$onNativeAdLoaded(this, nativeAd, z);
        }
    }

    @FunctionalInterface
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/InterstitialLoaderLifecycle$ShouldLoadIntervalPredicate.class */
    public interface ShouldLoadIntervalPredicate {
        boolean shouldLoadIntervalPredicate(JSONAdPreferences jSONAdPreferences);
    }

    public InterstitialLoaderLifecycle(Activity activity, Pair<String, Boolean> pair, String str, AdUtils.AdEvents adEvents, ShouldLoadIntervalPredicate shouldLoadIntervalPredicate) {
        this.f28013a = activity;
        this.f28014b = pair;
        this.f28015c = str;
        this.f28016d = adEvents;
        this.f28017e = shouldLoadIntervalPredicate;
    }

    @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_CREATE)
    public void loadAd() {
        Pair<String, Boolean> pair;
        JSONAdPreferences m27270a;
        if (AdUtils.m27285a() || (pair = this.f28014b) == null || !StringUtils.m26045b((CharSequence) pair.first) || (m27270a = AdUtils.m27270a(this.f28015c)) == null || !m27270a.shouldShowInterstitial() || !this.f28017e.shouldLoadIntervalPredicate(m27270a)) {
            return;
        }
        if (this.f28019g == null) {
            this.f28019g = new InterstitialAutoCloserLifecycleCallbacks();
            CallAppApplication.get().registerActivityLifecycleCallbacks(this.f28019g);
        }
        new C78721(m27270a).execute();
    }

    @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_DESTROY)
    protected void onDestroy() {
        BaseInterstitialAdLoader baseInterstitialAdLoader = this.f28020h;
        if (baseInterstitialAdLoader != null) {
            baseInterstitialAdLoader.mo27205b();
        }
        MoPubInterstitial moPubInterstitial = this.f28018f;
        if (moPubInterstitial != null) {
            moPubInterstitial.destroy();
            this.f28018f = null;
        }
        CallAppApplication.get().unregisterActivityLifecycleCallbacks(this.f28019g);
    }
}
