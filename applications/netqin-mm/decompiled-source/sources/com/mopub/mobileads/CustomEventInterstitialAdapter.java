package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.WebViewCacheService;
import com.mopub.mobileads.factories.CustomEventInterstitialFactory;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventInterstitialAdapter.class */
public class CustomEventInterstitialAdapter implements CustomEventInterstitial.CustomEventInterstitialListener {
    public static final int DEFAULT_INTERSTITIAL_TIMEOUT_DELAY = 30000;

    /* renamed from: a */
    public final MoPubInterstitial f34085a;

    /* renamed from: b */
    public boolean f34086b;

    /* renamed from: c */
    public AbstractC8771b f34087c;

    /* renamed from: d */
    public CustomEventInterstitial f34088d;

    /* renamed from: e */
    public Context f34089e;

    /* renamed from: f */
    public Map<String, Object> f34090f;

    /* renamed from: g */
    public Map<String, String> f34091g;

    /* renamed from: h */
    public long f34092h;

    /* renamed from: i */
    public final Handler f34093i = new Handler();

    /* renamed from: j */
    public final Runnable f34094j = new RunnableC8770a();

    /* renamed from: com.mopub.mobileads.CustomEventInterstitialAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventInterstitialAdapter$a.class */
    public class RunnableC8770a implements Runnable {
        public RunnableC8770a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "CustomEventInterstitialAdapter() failed with code " + MoPubErrorCode.NETWORK_TIMEOUT.getIntCode() + " and message " + MoPubErrorCode.NETWORK_TIMEOUT);
            CustomEventInterstitialAdapter.this.onInterstitialFailed(MoPubErrorCode.NETWORK_TIMEOUT);
            CustomEventInterstitialAdapter.this.m4398c();
        }
    }

    /* renamed from: com.mopub.mobileads.CustomEventInterstitialAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventInterstitialAdapter$b.class */
    public interface AbstractC8771b {
        void onCustomEventInterstitialClicked();

        void onCustomEventInterstitialDismissed();

        void onCustomEventInterstitialFailed(MoPubErrorCode moPubErrorCode);

        void onCustomEventInterstitialImpression();

        void onCustomEventInterstitialLoaded();

        void onCustomEventInterstitialShown();
    }

    public CustomEventInterstitialAdapter(MoPubInterstitial moPubInterstitial, String str, Map<String, String> map, long j, AdReport adReport) {
        Preconditions.checkNotNull(map);
        this.f34085a = moPubInterstitial;
        this.f34092h = j;
        this.f34089e = moPubInterstitial.getActivity();
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Attempting to invoke custom event: " + str);
        try {
            this.f34088d = CustomEventInterstitialFactory.create(str);
            this.f34091g = new TreeMap(map);
            this.f34090f = this.f34085a.getLocalExtras();
            if (this.f34085a.getLocation() != null) {
                this.f34090f.put("location", this.f34085a.getLocation());
            }
            this.f34090f.put(DataKeys.BROADCAST_IDENTIFIER_KEY, Long.valueOf(j));
            this.f34090f.put(DataKeys.AD_REPORT_KEY, adReport);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "CustomEventInterstitialFactory.create() failed with exception", e);
            this.f34085a.onCustomEventInterstitialFailed(MoPubErrorCode.ADAPTER_NOT_FOUND);
        }
    }

    /* renamed from: a */
    public final void m4401a() {
        this.f34093i.removeCallbacks(this.f34094j);
    }

    /* renamed from: a */
    public void m4400a(AbstractC8771b bVar) {
        this.f34087c = bVar;
    }

    /* renamed from: b */
    public final int m4399b() {
        MoPubInterstitial moPubInterstitial = this.f34085a;
        if (moPubInterstitial == null) {
            return 30000;
        }
        return moPubInterstitial.m4381a(30000).intValue();
    }

    /* renamed from: c */
    public void m4398c() {
        CustomEventInterstitial customEventInterstitial = this.f34088d;
        if (customEventInterstitial != null) {
            try {
                customEventInterstitial.onInvalidate();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalidating a custom event interstitial threw an exception.", e);
            }
        }
        this.f34088d = null;
        this.f34089e = null;
        this.f34091g = null;
        this.f34090f = null;
        this.f34087c = null;
        WebViewCacheService.Config popWebViewConfig = WebViewCacheService.popWebViewConfig(Long.valueOf(this.f34092h));
        if (popWebViewConfig != null) {
            popWebViewConfig.getWebView().destroy();
        }
        this.f34086b = true;
    }

    /* renamed from: d */
    public boolean m4397d() {
        CustomEventInterstitial customEventInterstitial = this.f34088d;
        if (customEventInterstitial == null) {
            return true;
        }
        return customEventInterstitial.m4402a();
    }

    /* renamed from: e */
    public boolean m4396e() {
        return this.f34086b;
    }

    /* renamed from: f */
    public void m4395f() {
        if (!m4396e() && this.f34088d != null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "loadInterstitial()");
            this.f34093i.postDelayed(this.f34094j, m4399b());
            try {
                this.f34088d.loadInterstitial(this.f34089e, this, this.f34090f, this.f34091g);
            } catch (Exception e) {
                onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    /* renamed from: g */
    public void m4394g() {
        if (!m4396e() && this.f34088d != null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "showInterstitial()");
            try {
                this.f34088d.showInterstitial();
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "showInterstitial() failed with code " + MoPubErrorCode.INTERNAL_ERROR.getIntCode() + " and message " + MoPubErrorCode.INTERNAL_ERROR);
                onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialClicked() {
        AbstractC8771b bVar;
        if (!m4396e() && (bVar = this.f34087c) != null) {
            bVar.onCustomEventInterstitialClicked();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialDismissed() {
        AbstractC8771b bVar;
        if (!m4396e() && (bVar = this.f34087c) != null) {
            bVar.onCustomEventInterstitialDismissed();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialFailed(MoPubErrorCode moPubErrorCode) {
        if (!m4396e()) {
            MoPubErrorCode moPubErrorCode2 = moPubErrorCode;
            if (moPubErrorCode == null) {
                moPubErrorCode2 = MoPubErrorCode.UNSPECIFIED;
            }
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "onInterstitialFailed() failed with code " + moPubErrorCode2.getIntCode() + " and message " + moPubErrorCode2);
            if (this.f34087c != null) {
                m4401a();
                this.f34087c.onCustomEventInterstitialFailed(moPubErrorCode2);
            }
        }
    }

    public void onInterstitialImpression() {
        AbstractC8771b bVar;
        if (!m4396e() && (bVar = this.f34087c) != null) {
            bVar.onCustomEventInterstitialImpression();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialLoaded() {
        if (!m4396e()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onInterstitialLoaded()");
            m4401a();
            AbstractC8771b bVar = this.f34087c;
            if (bVar != null) {
                bVar.onCustomEventInterstitialLoaded();
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialShown() {
        if (!m4396e()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onInterstitialShown()");
            AbstractC8771b bVar = this.f34087c;
            if (bVar != null) {
                bVar.onCustomEventInterstitialShown();
            }
        }
    }

    public void onLeaveApplication() {
        onInterstitialClicked();
    }
}
