package net.pubnative.lite.sdk.rewarded.presenter;

import android.text.TextUtils;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.analytics.ReportingController;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter;
import net.pubnative.lite.sdk.utils.AdTracker;
import net.pubnative.lite.sdk.utils.CheckUtils;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterDecorator.class */
public class RewardedPresenterDecorator implements RewardedPresenter, RewardedPresenter.Listener {
    private static final String TAG = "RewardedPresenterDecorator";
    private final AdTracker mAdTrackingDelegate;
    private boolean mIsDestroyed;
    private final RewardedPresenter.Listener mListener;
    private final ReportingController mReportingController;
    private final RewardedPresenter mRewardedPresenter;

    public RewardedPresenterDecorator(RewardedPresenter rewardedPresenter, AdTracker adTracker, ReportingController reportingController, RewardedPresenter.Listener listener) {
        this.mRewardedPresenter = rewardedPresenter;
        this.mAdTrackingDelegate = adTracker;
        this.mReportingController = reportingController;
        this.mListener = listener;
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public void destroy() {
        this.mRewardedPresenter.destroy();
        this.mIsDestroyed = true;
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public Ad getAd() {
        return this.mRewardedPresenter.getAd();
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public boolean isReady() {
        return this.mRewardedPresenter.isReady();
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public void load() {
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "RewardedPresenterDecorator is destroyed")) {
            this.mRewardedPresenter.load();
        }
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedClicked(RewardedPresenter rewardedPresenter) {
        if (!this.mIsDestroyed) {
            if (this.mReportingController != null) {
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("click");
                reportingEvent.setTimestamp(System.currentTimeMillis());
                reportingEvent.setAdFormat(Reporting.AdFormat.REWARDED);
                this.mReportingController.reportEvent(reportingEvent);
            }
            this.mAdTrackingDelegate.trackClick();
            this.mListener.onRewardedClicked(rewardedPresenter);
        }
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedClosed(RewardedPresenter rewardedPresenter) {
        if (!this.mIsDestroyed) {
            this.mListener.onRewardedClosed(rewardedPresenter);
        }
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedError(RewardedPresenter rewardedPresenter) {
        if (!this.mIsDestroyed) {
            if (this.mReportingController != null) {
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("error");
                reportingEvent.setTimestamp(System.currentTimeMillis());
                reportingEvent.setAdFormat(Reporting.AdFormat.REWARDED);
                this.mReportingController.reportEvent(reportingEvent);
            }
            String zoneId = getAd().getZoneId();
            Logger.d(TAG, TextUtils.isEmpty(zoneId) ? "Rewarded error" : "Rewarded error for zone id: ".concat(String.valueOf(zoneId)));
            this.mListener.onRewardedError(rewardedPresenter);
        }
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedFinished(RewardedPresenter rewardedPresenter) {
        if (!this.mIsDestroyed) {
            if (this.mReportingController != null) {
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_FINISHED);
                reportingEvent.setTimestamp(System.currentTimeMillis());
                reportingEvent.setAdFormat(Reporting.AdFormat.REWARDED);
                this.mReportingController.reportEvent(reportingEvent);
            }
            this.mListener.onRewardedFinished(rewardedPresenter);
        }
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedLoaded(RewardedPresenter rewardedPresenter) {
        if (!this.mIsDestroyed) {
            this.mListener.onRewardedLoaded(rewardedPresenter);
        }
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter.Listener
    public void onRewardedOpened(RewardedPresenter rewardedPresenter) {
        if (!this.mIsDestroyed) {
            if (this.mReportingController != null) {
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("impression");
                reportingEvent.setTimestamp(System.currentTimeMillis());
                reportingEvent.setAdFormat(Reporting.AdFormat.REWARDED);
                this.mReportingController.reportEvent(reportingEvent);
            }
            this.mAdTrackingDelegate.trackImpression();
            this.mListener.onRewardedOpened(rewardedPresenter);
        }
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public void setListener(RewardedPresenter.Listener listener) {
    }

    @Override // net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter
    public void show() {
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "RewardedPresenterDecorator is destroyed")) {
            this.mRewardedPresenter.show();
        }
    }
}
