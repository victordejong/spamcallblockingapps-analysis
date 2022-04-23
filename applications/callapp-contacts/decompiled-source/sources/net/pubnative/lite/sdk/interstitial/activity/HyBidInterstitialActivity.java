package net.pubnative.lite.sdk.interstitial.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastReceiver;
import net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastSender;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.utils.UrlHandler;
import net.pubnative.lite.sdk.views.CloseableContainer;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/activity/HyBidInterstitialActivity.class */
public abstract class HyBidInterstitialActivity extends Activity {
    public static final String EXTRA_BROADCAST_ID = "extra_pn_broadcast_id";
    public static final String EXTRA_SKIP_OFFSET = "extra_pn_skip_offset";
    public static final String EXTRA_ZONE_ID = "extra_pn_zone_id";
    private Ad mAd;
    private HyBidInterstitialBroadcastSender mBroadcastSender;
    private final CloseableContainer.OnCloseListener mCloseListener = new CloseableContainer.OnCloseListener() { // from class: net.pubnative.lite.sdk.interstitial.activity.HyBidInterstitialActivity.1
        @Override // net.pubnative.lite.sdk.views.CloseableContainer.OnCloseListener
        public void onClose() {
            HyBidInterstitialActivity.this.dismiss();
        }
    };
    private CloseableContainer mCloseableContainer;
    private UrlHandler mUrlHandlerDelegate;
    private String mZoneId;
    private ProgressBar progressBar;

    /* JADX INFO: Access modifiers changed from: protected */
    public void dismiss() {
        getBroadcastSender().sendBroadcast(HyBidInterstitialBroadcastReceiver.Action.DISMISS);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Ad getAd() {
        if (this.mAd == null) {
            synchronized (this) {
                if (HyBid.getAdCache() != null) {
                    this.mAd = HyBid.getAdCache().remove(this.mZoneId);
                }
            }
        }
        return this.mAd;
    }

    public abstract View getAdView();

    /* JADX INFO: Access modifiers changed from: protected */
    public HyBidInterstitialBroadcastSender getBroadcastSender() {
        return this.mBroadcastSender;
    }

    protected CloseableContainer getCloseableContainer() {
        return this.mCloseableContainer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public UrlHandler getUrlHandler() {
        return this.mUrlHandlerDelegate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getZoneId() {
        return this.mZoneId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void hideInterstitialCloseButton() {
        CloseableContainer closeableContainer = this.mCloseableContainer;
        if (closeableContainer != null) {
            closeableContainer.setCloseVisible(false);
            this.mCloseableContainer.setOnCloseListener(null);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        RelativeLayout contentInfoContainer;
        super.onCreate(bundle);
        Intent intent = getIntent();
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        this.mUrlHandlerDelegate = new UrlHandler(this);
        this.mZoneId = intent.getStringExtra("extra_pn_zone_id");
        long longExtra = intent.getLongExtra("extra_pn_broadcast_id", -1L);
        if (TextUtils.isEmpty(this.mZoneId) || longExtra == -1) {
            finish();
            return;
        }
        this.mBroadcastSender = new HyBidInterstitialBroadcastSender(this, longExtra);
        View adView = getAdView();
        if (adView != null) {
            this.mCloseableContainer = new CloseableContainer(this);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            this.progressBar = new ProgressBar(this);
            setProgressBarInvisible();
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 17;
            this.mCloseableContainer.addView(this.progressBar, layoutParams2);
            this.mCloseableContainer.addView(adView, layoutParams);
            this.mCloseableContainer.setBackgroundColor(-1);
            showInterstitialCloseButton();
            if (!(!shouldShowContentInfo() || getAd() == null || (contentInfoContainer = getAd().getContentInfoContainer(this)) == null)) {
                this.mCloseableContainer.addView(contentInfoContainer);
            }
            setContentView(this.mCloseableContainer);
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        CloseableContainer closeableContainer = this.mCloseableContainer;
        if (closeableContainer != null) {
            closeableContainer.removeAllViews();
        }
        super.onDestroy();
    }

    protected void setClosePosition(CloseableContainer.ClosePosition closePosition) {
        this.mCloseableContainer.setClosePosition(closePosition);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setProgressBarInvisible() {
        this.progressBar.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setProgressBarVisible() {
        this.progressBar.setVisibility(0);
    }

    protected abstract boolean shouldShowContentInfo();

    /* JADX INFO: Access modifiers changed from: protected */
    public void showInterstitialCloseButton() {
        CloseableContainer closeableContainer = this.mCloseableContainer;
        if (closeableContainer != null) {
            closeableContainer.setCloseVisible(true);
            this.mCloseableContainer.setOnCloseListener(this.mCloseListener);
        }
    }
}
