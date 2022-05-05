package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.mobileads.factories.CustomEventBannerFactory;
import java.util.Map;
import java.util.TreeMap;
import p081h.p430l.p433b.C10694b;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBannerAdapter.class */
public class CustomEventBannerAdapter implements InternalCustomEventBannerListener {
    public static final int DEFAULT_BANNER_TIMEOUT_DELAY = 10000;

    /* renamed from: a */
    public boolean f8434a;

    /* renamed from: b */
    public MoPubView f8435b;

    /* renamed from: c */
    public Context f8436c;
    @Nullable

    /* renamed from: d */
    public CustomEventBanner f8437d;

    /* renamed from: e */
    public Map<String, Object> f8438e;

    /* renamed from: f */
    public Map<String, String> f8439f;
    @Nullable

    /* renamed from: l */
    public C10694b f8445l;

    /* renamed from: i */
    public int f8442i = Integer.MIN_VALUE;

    /* renamed from: j */
    public int f8443j = Integer.MIN_VALUE;

    /* renamed from: k */
    public boolean f8444k = false;

    /* renamed from: g */
    public final Handler f8440g = new Handler();

    /* renamed from: h */
    public final Runnable f8441h = new RunnableC3824a();

    /* renamed from: com.mopub.mobileads.CustomEventBannerAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBannerAdapter$a.class */
    public class RunnableC3824a implements Runnable {
        public RunnableC3824a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "CustomEventBannerAdapter failed with code " + MoPubErrorCode.NETWORK_TIMEOUT.getIntCode() + " and message " + MoPubErrorCode.NETWORK_TIMEOUT);
            CustomEventBannerAdapter.this.onBannerFailed(MoPubErrorCode.NETWORK_TIMEOUT);
            CustomEventBannerAdapter.this.invalidate();
        }
    }

    /* renamed from: com.mopub.mobileads.CustomEventBannerAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBannerAdapter$b.class */
    public class C3825b implements C10694b.AbstractC10698d {
        public C3825b() {
        }

        @Override // p081h.p430l.p433b.C10694b.AbstractC10698d
        public void onVisibilityChanged() {
            CustomEventBannerAdapter.this.f8435b.m30506n();
            if (CustomEventBannerAdapter.this.f8437d != null) {
                CustomEventBannerAdapter.this.f8437d.trackMpxAndThirdPartyImpressions();
            }
            CustomEventBannerAdapter.this.f8435b.m30507m();
        }
    }

    public CustomEventBannerAdapter(@NonNull MoPubView moPubView, @NonNull String str, @NonNull Map<String, String> map, long j, @Nullable AdReport adReport) {
        Preconditions.checkNotNull(map);
        this.f8435b = moPubView;
        this.f8436c = moPubView.getContext();
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Attempting to invoke custom event: " + str);
        try {
            this.f8437d = CustomEventBannerFactory.create(str);
            this.f8439f = new TreeMap(map);
            m30560d();
            this.f8438e = this.f8435b.getLocalExtras();
            if (this.f8435b.getLocation() != null) {
                this.f8438e.put("location", this.f8435b.getLocation());
            }
            this.f8438e.put(DataKeys.BROADCAST_IDENTIFIER_KEY, Long.valueOf(j));
            this.f8438e.put(DataKeys.AD_REPORT_KEY, adReport);
            this.f8438e.put("com_mopub_ad_width", Integer.valueOf(this.f8435b.getAdWidth()));
            this.f8438e.put("com_mopub_ad_height", Integer.valueOf(this.f8435b.getAdHeight()));
            this.f8438e.put(DataKeys.BANNER_IMPRESSION_PIXEL_COUNT_ENABLED, Boolean.valueOf(this.f8444k));
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Couldn't locate or instantiate custom event: " + str + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            this.f8435b.m30518b(MoPubErrorCode.ADAPTER_NOT_FOUND);
        }
    }

    /* renamed from: a */
    public final void m30565a() {
        this.f8440g.removeCallbacks(this.f8441h);
    }

    /* renamed from: b */
    public final int m30563b() {
        MoPubView moPubView = this.f8435b;
        if (moPubView == null) {
            return 10000;
        }
        return moPubView.m30527a(10000).intValue();
    }

    /* renamed from: c */
    public boolean m30561c() {
        return this.f8434a;
    }

    /* renamed from: d */
    public final void m30560d() {
        String str = this.f8439f.get(DataKeys.BANNER_IMPRESSION_MIN_VISIBLE_DIPS);
        String str2 = this.f8439f.get(DataKeys.BANNER_IMPRESSION_MIN_VISIBLE_MS);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                this.f8442i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-pixels");
            }
            try {
                this.f8443j = Integer.parseInt(str2);
            } catch (NumberFormatException e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-ms");
            }
            if (this.f8442i > 0 && this.f8443j >= 0) {
                this.f8444k = true;
            }
        }
    }

    @ReflectionTarget
    public void invalidate() {
        CustomEventBanner customEventBanner = this.f8437d;
        if (customEventBanner != null) {
            try {
                customEventBanner.onInvalidate();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Invalidating a custom event banner threw an exception", e);
            }
        }
        C10694b bVar = this.f8445l;
        if (bVar != null) {
            try {
                bVar.m10896a();
            } catch (Exception e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Destroying a banner visibility tracker threw an exception", e2);
            }
            this.f8445l = null;
        }
        this.f8436c = null;
        this.f8437d = null;
        this.f8438e = null;
        this.f8439f = null;
        this.f8434a = true;
    }

    @ReflectionTarget
    public void loadAd() {
        if (!m30561c() && this.f8437d != null) {
            this.f8440g.postDelayed(this.f8441h, m30563b());
            try {
                this.f8437d.loadBanner(this.f8436c, this, this.f8438e, this.f8439f);
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "loadAd() failed with code " + MoPubErrorCode.INTERNAL_ERROR.getIntCode() + " and message " + MoPubErrorCode.INTERNAL_ERROR);
                onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerClicked() {
        MoPubView moPubView;
        if (!m30561c() && (moPubView = this.f8435b) != null) {
            moPubView.m30510j();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerCollapsed() {
        if (!m30561c()) {
            this.f8435b.m30514f();
            this.f8435b.m30520b();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerExpanded() {
        if (!m30561c()) {
            this.f8435b.m30513g();
            this.f8435b.m30516d();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerFailed(MoPubErrorCode moPubErrorCode) {
        if (!m30561c()) {
            m30565a();
            if (this.f8435b != null) {
                MoPubErrorCode moPubErrorCode2 = moPubErrorCode;
                if (moPubErrorCode == null) {
                    moPubErrorCode2 = MoPubErrorCode.UNSPECIFIED;
                }
                this.f8435b.m30518b(moPubErrorCode2);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerImpression() {
        CustomEventBanner customEventBanner;
        if (!m30561c() && this.f8435b != null && (customEventBanner = this.f8437d) != null && !customEventBanner.isAutomaticImpressionAndClickTrackingEnabled()) {
            this.f8435b.m30506n();
            if (this.f8444k) {
                this.f8437d.trackMpxAndThirdPartyImpressions();
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerLoaded(View view) {
        CustomEventBanner customEventBanner;
        CustomEventBanner customEventBanner2;
        if (!m30561c()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onBannerLoaded() success. Attempting to show.");
            m30565a();
            MoPubView moPubView = this.f8435b;
            if (moPubView != null) {
                moPubView.m30515e();
                if (this.f8444k && (customEventBanner2 = this.f8437d) != null && customEventBanner2.isAutomaticImpressionAndClickTrackingEnabled()) {
                    this.f8435b.m30511i();
                    this.f8445l = new C10694b(this.f8436c, this.f8435b, view, this.f8442i, this.f8443j);
                    this.f8445l.m10894a(new C3825b());
                }
                this.f8435b.setAdContentView(view);
                if (!this.f8444k && (customEventBanner = this.f8437d) != null && customEventBanner.isAutomaticImpressionAndClickTrackingEnabled() && !(view instanceof HtmlBannerWebView)) {
                    this.f8435b.m30506n();
                }
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onBannerLoaded() - Show successful.");
                return;
            }
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "onBannerLoaded() - Show failed with code " + MoPubErrorCode.INTERNAL_ERROR.getIntCode() + " and message " + MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onLeaveApplication() {
        onBannerClicked();
    }

    @Override // com.mopub.mobileads.InternalCustomEventBannerListener
    public void onPauseAutoRefresh() {
        MoPubView moPubView = this.f8435b;
        if (moPubView != null) {
            moPubView.m30513g();
        }
    }

    @Override // com.mopub.mobileads.InternalCustomEventBannerListener
    public void onResumeAutoRefresh() {
        MoPubView moPubView = this.f8435b;
        if (moPubView != null) {
            moPubView.m30514f();
        }
    }
}
