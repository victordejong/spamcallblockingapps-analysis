package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
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
    public final MoPubInterstitial f8448a;

    /* renamed from: b */
    public boolean f8449b;

    /* renamed from: c */
    public AbstractC3827b f8450c;

    /* renamed from: d */
    public CustomEventInterstitial f8451d;

    /* renamed from: e */
    public Context f8452e;

    /* renamed from: f */
    public Map<String, Object> f8453f;

    /* renamed from: g */
    public Map<String, String> f8454g;

    /* renamed from: h */
    public long f8455h;

    /* renamed from: i */
    public final Handler f8456i = new Handler();

    /* renamed from: j */
    public final Runnable f8457j = new RunnableC3826a();

    /* renamed from: com.mopub.mobileads.CustomEventInterstitialAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventInterstitialAdapter$a.class */
    public class RunnableC3826a implements Runnable {
        public RunnableC3826a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.m30733d("Third-party network timed out.");
            CustomEventInterstitialAdapter.this.onInterstitialFailed(MoPubErrorCode.NETWORK_TIMEOUT);
            CustomEventInterstitialAdapter.this.m30556c();
        }
    }

    /* renamed from: com.mopub.mobileads.CustomEventInterstitialAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventInterstitialAdapter$b.class */
    public interface AbstractC3827b {
        void onCustomEventInterstitialClicked();

        void onCustomEventInterstitialDismissed();

        void onCustomEventInterstitialFailed(MoPubErrorCode moPubErrorCode);

        void onCustomEventInterstitialLoaded();

        void onCustomEventInterstitialShown();
    }

    public CustomEventInterstitialAdapter(@NonNull MoPubInterstitial moPubInterstitial, @NonNull String str, @NonNull Map<String, String> map, long j, @Nullable AdReport adReport) {
        Preconditions.checkNotNull(map);
        this.f8448a = moPubInterstitial;
        this.f8455h = j;
        this.f8452e = this.f8448a.getActivity();
        MoPubLog.m30733d("Attempting to invoke custom event: " + str);
        try {
            this.f8451d = CustomEventInterstitialFactory.create(str);
            this.f8454g = new TreeMap(map);
            this.f8453f = this.f8448a.getLocalExtras();
            if (this.f8448a.getLocation() != null) {
                this.f8453f.put("location", this.f8448a.getLocation());
            }
            this.f8453f.put(DataKeys.BROADCAST_IDENTIFIER_KEY, Long.valueOf(j));
            this.f8453f.put(DataKeys.AD_REPORT_KEY, adReport);
        } catch (Exception e) {
            MoPubLog.m30733d("Couldn't locate or instantiate custom event: " + str + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            this.f8448a.onCustomEventInterstitialFailed(MoPubErrorCode.ADAPTER_NOT_FOUND);
        }
    }

    /* renamed from: a */
    public final void m30559a() {
        this.f8456i.removeCallbacks(this.f8457j);
    }

    /* renamed from: a */
    public void m30558a(AbstractC3827b bVar) {
        this.f8450c = bVar;
    }

    /* renamed from: b */
    public final int m30557b() {
        MoPubInterstitial moPubInterstitial = this.f8448a;
        if (moPubInterstitial == null || moPubInterstitial.m30543a() == null || this.f8448a.m30543a().intValue() < 0) {
            return 30000;
        }
        return this.f8448a.m30543a().intValue() * 1000;
    }

    /* renamed from: c */
    public void m30556c() {
        CustomEventInterstitial customEventInterstitial = this.f8451d;
        if (customEventInterstitial != null) {
            try {
                customEventInterstitial.onInvalidate();
            } catch (Exception e) {
                MoPubLog.m30732d("Invalidating a custom event interstitial threw an exception.", e);
            }
        }
        this.f8451d = null;
        this.f8452e = null;
        this.f8454g = null;
        this.f8453f = null;
        this.f8450c = null;
        WebViewCacheService.Config popWebViewConfig = WebViewCacheService.popWebViewConfig(Long.valueOf(this.f8455h));
        if (popWebViewConfig != null) {
            popWebViewConfig.getWebView().destroy();
        }
        this.f8449b = true;
    }

    /* renamed from: d */
    public boolean m30555d() {
        return this.f8449b;
    }

    /* renamed from: e */
    public void m30554e() {
        if (!m30555d() && this.f8451d != null) {
            this.f8456i.postDelayed(this.f8457j, m30557b());
            try {
                this.f8451d.loadInterstitial(this.f8452e, this, this.f8453f, this.f8454g);
            } catch (Exception e) {
                MoPubLog.m30732d("Loading a custom event interstitial threw an exception.", e);
                onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    /* renamed from: f */
    public void m30553f() {
        CustomEventInterstitial customEventInterstitial;
        if (!m30555d() && (customEventInterstitial = this.f8451d) != null) {
            try {
                customEventInterstitial.showInterstitial();
            } catch (Exception e) {
                MoPubLog.m30732d("Showing a custom event interstitial threw an exception.", e);
                onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialClicked() {
        AbstractC3827b bVar;
        if (!m30555d() && (bVar = this.f8450c) != null) {
            bVar.onCustomEventInterstitialClicked();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialDismissed() {
        AbstractC3827b bVar;
        if (!m30555d() && (bVar = this.f8450c) != null) {
            bVar.onCustomEventInterstitialDismissed();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialFailed(MoPubErrorCode moPubErrorCode) {
        if (!m30555d() && this.f8450c != null) {
            MoPubErrorCode moPubErrorCode2 = moPubErrorCode;
            if (moPubErrorCode == null) {
                moPubErrorCode2 = MoPubErrorCode.UNSPECIFIED;
            }
            m30559a();
            this.f8450c.onCustomEventInterstitialFailed(moPubErrorCode2);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialLoaded() {
        if (!m30555d()) {
            m30559a();
            AbstractC3827b bVar = this.f8450c;
            if (bVar != null) {
                bVar.onCustomEventInterstitialLoaded();
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialShown() {
        AbstractC3827b bVar;
        if (!m30555d() && (bVar = this.f8450c) != null) {
            bVar.onCustomEventInterstitialShown();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onLeaveApplication() {
        onInterstitialClicked();
    }
}
