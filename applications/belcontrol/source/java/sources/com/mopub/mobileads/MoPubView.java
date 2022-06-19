package com.mopub.mobileads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.location.Location;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.mopub.common.AdFormat;
import com.mopub.common.MoPubReward;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.Visibility;
import com.mopub.mobileads.base.C1128R;
import com.mopub.mobileads.factories.AdViewControllerFactory;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubView.class */
public class MoPubView extends FrameLayout implements MoPubAd {

    /* renamed from: a */
    public AdViewController f4746a;

    /* renamed from: b */
    public Context f4747b;

    /* renamed from: c */
    public int f4748c;

    /* renamed from: d */
    public BroadcastReceiver f4749d;

    /* renamed from: f */
    public MoPubAdSize f4750f;

    /* renamed from: g */
    public BannerAdListener f4751g;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubView$BannerAdListener.class */
    public interface BannerAdListener {
        void onBannerClicked(MoPubView moPubView);

        void onBannerCollapsed(MoPubView moPubView);

        void onBannerExpanded(MoPubView moPubView);

        void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode);

        void onBannerLoaded(MoPubView moPubView);
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubView$MoPubAdSize.class */
    public enum MoPubAdSize {
        MATCH_VIEW(-1),
        HEIGHT_50(50),
        HEIGHT_90(90),
        HEIGHT_250(250),
        HEIGHT_280(280);
        

        /* renamed from: a */
        public final int f4753a;

        MoPubAdSize(int i) {
            this.f4753a = i;
        }

        public static MoPubAdSize valueOf(int i) {
            return i != 50 ? i != 90 ? i != 250 ? i != 280 ? MATCH_VIEW : HEIGHT_280 : HEIGHT_250 : HEIGHT_90 : HEIGHT_50;
        }

        public int toInt() {
            return this.f4753a;
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubView$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubView$a.class */
    public class C1102a extends BroadcastReceiver {
        public C1102a() {
            MoPubView.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MoPubView moPubView;
            int i;
            if (!Visibility.isScreenVisible(MoPubView.this.f4748c) || intent == null) {
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.USER_PRESENT".equals(action)) {
                moPubView = MoPubView.this;
                i = 0;
            } else if (!"android.intent.action.SCREEN_OFF".equals(action)) {
                return;
            } else {
                moPubView = MoPubView.this;
                i = 8;
            }
            moPubView.setAdVisibility(i);
        }
    }

    public MoPubView(Context context) {
        this(context, null);
    }

    public MoPubView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4750f = m3610c(context, attributeSet, MoPubAdSize.MATCH_VIEW);
        ManifestUtils.checkWebViewActivitiesDeclared(context);
        this.f4747b = context;
        this.f4748c = getVisibility();
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setAdViewController(AdViewControllerFactory.create(context, this));
        m3609d();
    }

    public void setAdVisibility(int i) {
        if (this.f4746a == null) {
            return;
        }
        if (Visibility.isScreenVisible(i)) {
            this.f4746a.m3714x();
        } else {
            this.f4746a.m3716v();
        }
    }

    /* renamed from: c */
    public final MoPubAdSize m3610c(Context context, AttributeSet attributeSet, MoPubAdSize moPubAdSize) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1128R.styleable.MoPubView, 0, 0);
        try {
            try {
                moPubAdSize = MoPubAdSize.valueOf(obtainStyledAttributes.getInteger(C1128R.styleable.MoPubView_moPubAdSize, moPubAdSize.toInt()));
            } catch (Resources.NotFoundException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Encountered a problem while setting the MoPubAdSize", e);
            }
            return moPubAdSize;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: d */
    public final void m3609d() {
        this.f4749d = new C1102a();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f4747b.registerReceiver(this.f4749d, intentFilter);
    }

    public void destroy() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Destroy() called");
        m3608e();
        removeAllViews();
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.m3733e();
            this.f4746a = null;
        }
    }

    /* renamed from: e */
    public final void m3608e() {
        try {
            this.f4747b.unregisterReceiver(this.f4749d);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to unregister screen state broadcast receiver (never registered).");
        }
    }

    public void forceRefresh() {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.m3729i();
        }
    }

    public Activity getActivity() {
        return (Activity) this.f4747b;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public AdFormat getAdFormat() {
        return AdFormat.BANNER;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ int getAdHeight() {
        return getAdViewController();
    }

    public MoPubAdSize getAdSize() {
        return this.f4750f;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ String getAdUnitId() {
        return getAdViewController();
    }

    @Override // com.mopub.mobileads.MoPubAd
    public AdViewController getAdViewController() {
        return this.f4746a;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ int getAdWidth() {
        return getAdViewController();
    }

    public boolean getAutorefreshEnabled() {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            return adViewController.getCurrentAutoRefreshStatus();
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't get autorefresh status for destroyed MoPubView. Returning false.");
        return false;
    }

    public BannerAdListener getBannerAdListener() {
        return this.f4751g;
    }

    @Deprecated
    public String getClickTrackingUrl() {
        return null;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ String getKeywords() {
        return getAdViewController();
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ Map<String, Object> getLocalExtras() {
        return fh1.$default$getLocalExtras(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ Location getLocation() {
        return getAdViewController();
    }

    @Deprecated
    public String getResponseString() {
        return null;
    }

    public boolean getTesting() {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            return adViewController.getTesting();
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't get testing status for destroyed MoPubView. Returning false.");
        return false;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ String getUserDataKeywords() {
        return fh1.$default$getUserDataKeywords(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void loadAd() {
        fh1.$default$loadAd(this);
    }

    public void loadAd(MoPubAdSize moPubAdSize) {
        setAdSize(moPubAdSize);
        loadAd();
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ boolean loadFailUrl(MoPubErrorCode moPubErrorCode) {
        return fh1.$default$loadFailUrl(this, moPubErrorCode);
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.m3715w();
        }
        BannerAdListener bannerAdListener = this.f4751g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerClicked(this);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdCollapsed() {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.m3732f();
        }
        BannerAdListener bannerAdListener = this.f4751g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerCollapsed(this);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdExpanded() {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.m3731g();
        }
        BannerAdListener bannerAdListener = this.f4751g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerExpanded(this);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdFailed(MoPubErrorCode moPubErrorCode) {
        BannerAdListener bannerAdListener = this.f4751g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerFailed(this, moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
        BannerAdListener bannerAdListener = this.f4751g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerFailed(this, moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.m3738D();
        }
        BannerAdListener bannerAdListener = this.f4751g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerLoaded(this);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.m3731g();
        }
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdResumeAutoRefresh() {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.m3732f();
        }
    }

    @Override // com.mopub.mobileads.MoPubAd, com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdShown() {
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 28) {
            setWindowInsets(windowInsets);
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 28) {
            setWindowInsets(getRootWindowInsets());
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (Visibility.hasScreenVisibilityChanged(this.f4748c, i)) {
            this.f4748c = i;
            setAdVisibility(i);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void pauseAutoRefresh() {
        fh1.$default$pauseAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public Point resolveAdSize() {
        int height;
        Point point = new Point(getWidth(), getHeight());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (getParent() != null && layoutParams != null && layoutParams.width < 0) {
            point.x = ((View) getParent()).getWidth();
        }
        if (this.f4750f == MoPubAdSize.MATCH_VIEW) {
            if (getParent() != null && layoutParams != null && layoutParams.height < 0) {
                height = ((View) getParent()).getHeight();
            }
            return point;
        }
        height = (int) Math.ceil(this.f4750f.toInt() * this.f4747b.getResources().getDisplayMetrics().density);
        point.y = height;
        return point;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void resumeAutoRefresh() {
        fh1.$default$resumeAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setAdContentView(View view) {
        fh1.$default$setAdContentView(this, view);
    }

    public void setAdSize(MoPubAdSize moPubAdSize) {
        this.f4750f = moPubAdSize;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setAdUnitId(String str) {
        fh1.$default$setAdUnitId(this, str);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public void setAdViewController(AdViewController adViewController) {
        this.f4746a = adViewController;
    }

    public void setAutorefreshEnabled(boolean z) {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.m3739C(z);
        }
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.f4751g = bannerAdListener;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setKeywords(String str) {
        fh1.$default$setKeywords(this, str);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setLocalExtras(Map<String, ? extends Object> map) {
        fh1.$default$setLocalExtras(this, map);
    }

    @Deprecated
    public void setLocation(Location location) {
    }

    public void setTesting(boolean z) {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.setTesting(z);
        }
    }

    @Deprecated
    public void setTimeout(int i) {
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* bridge */ /* synthetic */ void setUserDataKeywords(String str) {
        fh1.$default$setUserDataKeywords(this, str);
    }

    public void setWindowInsets(WindowInsets windowInsets) {
        AdViewController adViewController = this.f4746a;
        if (adViewController != null) {
            adViewController.setWindowInsets(windowInsets);
        }
    }
}
