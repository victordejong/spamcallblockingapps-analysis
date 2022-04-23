package com.callapp.contacts.util.ads;

import android.app.Activity;
import android.util.Pair;
import androidx.lifecycle.j;
import androidx.lifecycle.o;
import androidx.lifecycle.v;
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
public class InterstitialLoaderLifecycle implements o {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f16065a;

    /* renamed from: b  reason: collision with root package name */
    private final Pair<String, Boolean> f16066b;

    /* renamed from: c  reason: collision with root package name */
    private final String f16067c;

    /* renamed from: d  reason: collision with root package name */
    private final AdUtils.AdEvents f16068d;
    private final ShouldLoadIntervalPredicate e;
    private MoPubInterstitial f;
    private InterstitialAutoCloserLifecycleCallbacks g;
    private BaseInterstitialAdLoader h;

    /* renamed from: com.callapp.contacts.util.ads.InterstitialLoaderLifecycle$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1.class */
    class AnonymousClass1 extends Task {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ JSONAdPreferences f16069a;

        AnonymousClass1(JSONAdPreferences jSONAdPreferences) {
            this.f16069a = jSONAdPreferences;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            InterstitialLoaderLifecycle interstitialLoaderLifecycle = InterstitialLoaderLifecycle.this;
            interstitialLoaderLifecycle.h = AdLoaderFactory.a(interstitialLoaderLifecycle.f16065a, InterstitialLoaderLifecycle.this.f16066b, new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.InterstitialLoaderLifecycle.1.1
                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onAdClick() {
                    InterstitialLoaderLifecycle.this.g.a();
                    if (InterstitialLoaderLifecycle.this.f16068d != null) {
                        InterstitialLoaderLifecycle.this.f16068d.onAdClick();
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
                    if (InterstitialLoaderLifecycle.this.f16068d != null) {
                        InterstitialLoaderLifecycle.this.f16068d.onInterstitialDismissed(moPubInterstitial);
                    }
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                    if (InterstitialLoaderLifecycle.this.f16068d != null) {
                        InterstitialLoaderLifecycle.this.f16068d.onInterstitialFailed(moPubInterstitial, moPubErrorCode);
                    }
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                    InterstitialLoaderLifecycle.this.f = moPubInterstitial;
                    if (InterstitialLoaderLifecycle.this.f16068d != null) {
                        InterstitialLoaderLifecycle.this.f16068d.onInterstitialLoaded(moPubInterstitial);
                    }
                }

                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                public void onInterstitialShown(final MoPubInterstitial moPubInterstitial) {
                    if (AnonymousClass1.this.f16069a.getInterstitialAutoCloseSec() > 0) {
                        new Task() { // from class: com.callapp.contacts.util.ads.InterstitialLoaderLifecycle.1.1.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                final InterstitialAutoCloserLifecycleCallbacks interstitialAutoCloserLifecycleCallbacks = InterstitialLoaderLifecycle.this.g;
                                final Activity activity = interstitialAutoCloserLifecycleCallbacks.f16059a.get();
                                if (activity != null) {
                                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.InterstitialAutoCloserLifecycleCallbacks.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            activity.finish();
                                        }
                                    });
                                }
                                if (InterstitialLoaderLifecycle.this.f16068d != null) {
                                    InterstitialLoaderLifecycle.this.f16068d.onInterstitialDismissed(moPubInterstitial);
                                }
                            }
                        }.schedule(AnonymousClass1.this.f16069a.getInterstitialAutoCloseSec() * 1000);
                    }
                    if (InterstitialLoaderLifecycle.this.f16068d != null) {
                        InterstitialLoaderLifecycle.this.f16068d.onInterstitialShown(moPubInterstitial);
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
            InterstitialLoaderLifecycle.this.h.a();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents.class */
    public static class BottomBarActivityInterstitialAdEvents implements AdUtils.AdEvents {

        /* renamed from: a  reason: collision with root package name */
        public static ShouldLoadIntervalPredicate f16074a = _$$Lambda$InterstitialLoaderLifecycle$BottomBarActivityInterstitialAdEvents$tYyOIs5uur5CG6W9CtFJp6sgiBo.INSTANCE;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean a(JSONAdPreferences jSONAdPreferences) {
            return Prefs.fw.b(1).get().intValue() >= jSONAdPreferences.getInterstitialInterval();
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
            Prefs.fw.set(0);
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
        this.f16065a = activity;
        this.f16066b = pair;
        this.f16067c = str;
        this.f16068d = adEvents;
        this.e = shouldLoadIntervalPredicate;
    }

    @v(a = j.a.ON_CREATE)
    public void loadAd() {
        Pair<String, Boolean> pair;
        JSONAdPreferences a2;
        if (!AdUtils.a() && (pair = this.f16066b) != null && StringUtils.b((CharSequence) pair.first) && (a2 = AdUtils.a(this.f16067c)) != null && a2.shouldShowInterstitial() && this.e.shouldLoadIntervalPredicate(a2)) {
            if (this.g == null) {
                this.g = new InterstitialAutoCloserLifecycleCallbacks();
                CallAppApplication.get().registerActivityLifecycleCallbacks(this.g);
            }
            new AnonymousClass1(a2).execute();
        }
    }

    @v(a = j.a.ON_DESTROY)
    protected void onDestroy() {
        BaseInterstitialAdLoader baseInterstitialAdLoader = this.h;
        if (baseInterstitialAdLoader != null) {
            baseInterstitialAdLoader.b();
        }
        MoPubInterstitial moPubInterstitial = this.f;
        if (moPubInterstitial != null) {
            moPubInterstitial.destroy();
            this.f = null;
        }
        CallAppApplication.get().unregisterActivityLifecycleCallbacks(this.g);
    }
}
