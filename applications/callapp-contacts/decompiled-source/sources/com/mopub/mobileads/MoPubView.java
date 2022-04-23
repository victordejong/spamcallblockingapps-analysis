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
import com.mopub.common.util.Visibility;
import com.mopub.mobileads.MoPubAd;
import com.mopub.mobileads.base.R;
import com.mopub.mobileads.factories.AdViewControllerFactory;
import com.mopub.network.AdResponse;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubView.class */
public class MoPubView extends FrameLayout implements MoPubAd {

    /* renamed from: a  reason: collision with root package name */
    protected AdViewController f34136a;

    /* renamed from: b  reason: collision with root package name */
    private Context f34137b;

    /* renamed from: c  reason: collision with root package name */
    private int f34138c;

    /* renamed from: d  reason: collision with root package name */
    private BroadcastReceiver f34139d;
    private MoPubAdSize e;
    private BannerAdListener f;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubView$BannerAdListener.class */
    public interface BannerAdListener {
        void onBannerClicked(MoPubView moPubView);

        void onBannerCollapsed(MoPubView moPubView);

        void onBannerExpanded(MoPubView moPubView);

        void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode);

        void onBannerLoaded(MoPubView moPubView);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubView$MoPubAdSize.class */
    public enum MoPubAdSize {
        MATCH_VIEW(-1),
        HEIGHT_50(50),
        HEIGHT_90(90),
        HEIGHT_250(250),
        HEIGHT_280(280);
        
        private final int mSizeInt;

        MoPubAdSize(int i) {
            this.mSizeInt = i;
        }

        public static MoPubAdSize valueOf(int i) {
            return i != 50 ? i != 90 ? i != 250 ? i != 280 ? MATCH_VIEW : HEIGHT_280 : HEIGHT_250 : HEIGHT_90 : HEIGHT_50;
        }

        public final int toInt() {
            return this.mSizeInt;
        }
    }

    public MoPubView(Context context) {
        this(context, null);
    }

    public MoPubView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = a(context, attributeSet, MoPubAdSize.MATCH_VIEW);
        this.f34137b = context;
        this.f34138c = getVisibility();
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setAdViewController(AdViewControllerFactory.create(context, this));
        this.f34139d = new BroadcastReceiver() { // from class: com.mopub.mobileads.MoPubView.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                if (Visibility.isScreenVisible(MoPubView.this.f34138c) && intent != null) {
                    String action = intent.getAction();
                    if ("android.intent.action.USER_PRESENT".equals(action)) {
                        MoPubView.this.a(0);
                    } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                        MoPubView.this.a(8);
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f34137b.getApplicationContext().registerReceiver(this.f34139d, intentFilter);
    }

    private static MoPubAdSize a(Context context, AttributeSet attributeSet, MoPubAdSize moPubAdSize) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.MoPubView, 0, 0);
        try {
            try {
                moPubAdSize = MoPubAdSize.valueOf(obtainStyledAttributes.getInteger(R.styleable.MoPubView_moPubAdSize, moPubAdSize.toInt()));
            } catch (Resources.NotFoundException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Encountered a problem while setting the MoPubAdSize", e);
            }
            return moPubAdSize;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (this.f34136a != null) {
            if (Visibility.isScreenVisible(i)) {
                this.f34136a.a();
            } else {
                this.f34136a.b(false);
            }
        }
    }

    private void a(WindowInsets windowInsets) {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.setWindowInsets(windowInsets);
        }
    }

    public void destroy() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Destroy() called");
        try {
            this.f34137b.getApplicationContext().unregisterReceiver(this.f34139d);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to unregister screen state broadcast receiver (never registered).");
        }
        removeAllViews();
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.d();
            this.f34136a = null;
        }
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void fakeLoadAd(AdResponse adResponse) {
        MoPubAd._CC.$default$fakeLoadAd(this, adResponse);
    }

    public void forceRefresh() {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.f();
        }
    }

    public Activity getActivity() {
        return (Activity) this.f34137b;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public AdFormat getAdFormat() {
        return AdFormat.BANNER;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ int getAdHeight() {
        return MoPubAd._CC.$default$getAdHeight(this);
    }

    public MoPubAdSize getAdSize() {
        return this.e;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ String getAdUnitId() {
        return MoPubAd._CC.$default$getAdUnitId(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public AdViewController getAdViewController() {
        return this.f34136a;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ int getAdWidth() {
        return MoPubAd._CC.$default$getAdWidth(this);
    }

    public boolean getAutorefreshEnabled() {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            return adViewController.getCurrentAutoRefreshStatus();
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't get autorefresh status for destroyed MoPubView. Returning false.");
        return false;
    }

    public BannerAdListener getBannerAdListener() {
        return this.f;
    }

    @Deprecated
    public String getClickTrackingUrl() {
        return null;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ String getKeywords() {
        return MoPubAd._CC.$default$getKeywords(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ Map getLocalExtras() {
        return MoPubAd._CC.$default$getLocalExtras(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ Location getLocation() {
        return MoPubAd._CC.$default$getLocation(this);
    }

    @Deprecated
    public String getResponseString() {
        return null;
    }

    public boolean getTesting() {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            return adViewController.getTesting();
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't get testing status for destroyed MoPubView. Returning false.");
        return false;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ String getUserDataKeywords() {
        return MoPubAd._CC.$default$getUserDataKeywords(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void loadAd() {
        MoPubAd._CC.$default$loadAd(this);
    }

    public void loadAd(MoPubAdSize moPubAdSize) {
        setAdSize(moPubAdSize);
        loadAd();
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ boolean loadFailUrl(MoPubErrorCode moPubErrorCode) {
        return MoPubAd._CC.$default$loadFailUrl(this, moPubErrorCode);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.e();
        }
        BannerAdListener bannerAdListener = this.f;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerClicked(this);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdCollapsed() {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.c();
        }
        BannerAdListener bannerAdListener = this.f;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerCollapsed(this);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdExpanded() {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.b();
        }
        BannerAdListener bannerAdListener = this.f;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerExpanded(this);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdFailed(MoPubErrorCode moPubErrorCode) {
        BannerAdListener bannerAdListener = this.f;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerFailed(this, moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
        BannerAdListener bannerAdListener = this.f;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerFailed(this, moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.h();
        }
        BannerAdListener bannerAdListener = this.f;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerLoaded(this);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.b();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdResumeAutoRefresh() {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.c();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdShown() {
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 28) {
            a(windowInsets);
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 28) {
            a(getRootWindowInsets());
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        if (Visibility.hasScreenVisibilityChanged(this.f34138c, i)) {
            this.f34138c = i;
            a(i);
        }
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void pauseAutoRefresh() {
        MoPubAd._CC.$default$pauseAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public Point resolveAdSize() {
        Point point = new Point(getWidth(), getHeight());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(getParent() == null || layoutParams == null || layoutParams.width >= 0)) {
            point.x = ((View) getParent()).getWidth();
        }
        if (this.e != MoPubAdSize.MATCH_VIEW) {
            point.y = (int) Math.ceil(this.e.toInt() * this.f34137b.getResources().getDisplayMetrics().density);
        } else if (!(getParent() == null || layoutParams == null || layoutParams.height >= 0)) {
            point.y = ((View) getParent()).getHeight();
        }
        return point;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void resumeAutoRefresh() {
        MoPubAd._CC.$default$resumeAutoRefresh(this);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setAdContentView(View view) {
        MoPubAd._CC.$default$setAdContentView(this, view);
    }

    public void setAdSize(MoPubAdSize moPubAdSize) {
        this.e = moPubAdSize;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setAdUnitId(String str) {
        MoPubAd._CC.$default$setAdUnitId(this, str);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public void setAdViewController(AdViewController adViewController) {
        this.f34136a = adViewController;
    }

    public void setAutorefreshEnabled(boolean z) {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.a(z);
        }
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.f = bannerAdListener;
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setKeywords(String str) {
        MoPubAd._CC.$default$setKeywords(this, str);
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setLocalExtras(Map map) {
        MoPubAd._CC.$default$setLocalExtras(this, map);
    }

    @Deprecated
    public void setLocation(Location location) {
    }

    public void setTesting(boolean z) {
        AdViewController adViewController = this.f34136a;
        if (adViewController != null) {
            adViewController.setTesting(z);
        }
    }

    @Deprecated
    public void setTimeout(int i) {
    }

    @Override // com.mopub.mobileads.MoPubAd
    public /* synthetic */ void setUserDataKeywords(String str) {
        MoPubAd._CC.$default$setUserDataKeywords(this, str);
    }
}
