package net.pubnative.lite.sdk.presenter;

import android.view.View;
import net.pubnative.lite.sdk.analytics.ReportingController;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.presenter.AdPresenter;
import net.pubnative.lite.sdk.utils.AdTracker;
import net.pubnative.lite.sdk.utils.CheckUtils;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/presenter/AdPresenterDecorator.class */
public class AdPresenterDecorator implements AdPresenter, AdPresenter.ImpressionListener, AdPresenter.Listener {
    private static final String TAG = "AdPresenterDecorator";
    private final AdPresenter mAdPresenter;
    private final AdTracker mAdTrackingDelegate;
    private boolean mIsDestroyed;
    private final AdPresenter.Listener mListener;
    private final ReportingController mReportingController;

    public AdPresenterDecorator(AdPresenter adPresenter, AdTracker adTracker, ReportingController reportingController, AdPresenter.Listener listener) {
        this.mAdPresenter = adPresenter;
        this.mAdTrackingDelegate = adTracker;
        this.mReportingController = reportingController;
        this.mListener = listener;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void destroy() {
        this.mAdPresenter.destroy();
        this.mIsDestroyed = true;
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public Ad getAd() {
        return this.mAdPresenter.getAd();
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void load() {
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "AdPresenterDecorator is destroyed")) {
            this.mAdPresenter.load();
        }
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter.Listener
    public void onAdClicked(AdPresenter adPresenter) {
        if (!this.mIsDestroyed) {
            if (this.mReportingController != null) {
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("click");
                reportingEvent.setTimestamp(String.valueOf(System.currentTimeMillis()));
                reportingEvent.setAdFormat("banner");
                this.mReportingController.reportEvent(reportingEvent);
            }
            this.mAdTrackingDelegate.trackClick();
            this.mListener.onAdClicked(adPresenter);
        }
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter.Listener
    public void onAdError(AdPresenter adPresenter) {
        if (!this.mIsDestroyed) {
            if (this.mReportingController != null) {
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("error");
                reportingEvent.setTimestamp(String.valueOf(System.currentTimeMillis()));
                reportingEvent.setAdFormat("banner");
                this.mReportingController.reportEvent(reportingEvent);
            }
            Logger.d(TAG, "Banner error for zone id: ");
            this.mListener.onAdError(adPresenter);
        }
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter.Listener
    public void onAdLoaded(AdPresenter adPresenter, View view) {
        if (!this.mIsDestroyed) {
            this.mListener.onAdLoaded(adPresenter, view);
        }
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter.ImpressionListener
    public void onImpression() {
        if (!this.mIsDestroyed) {
            if (this.mReportingController != null) {
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("impression");
                reportingEvent.setTimestamp(String.valueOf(System.currentTimeMillis()));
                reportingEvent.setAdFormat("banner");
                this.mReportingController.reportEvent(reportingEvent);
            }
            this.mAdTrackingDelegate.trackImpression();
        }
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void setImpressionListener(AdPresenter.ImpressionListener impressionListener) {
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void setListener(AdPresenter.Listener listener) {
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void startTracking() {
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "AdPresenterDecorator is destroyed")) {
            this.mAdPresenter.startTracking();
        }
    }

    @Override // net.pubnative.lite.sdk.presenter.AdPresenter
    public void stopTracking() {
        if (CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "AdPresenterDecorator is destroyed")) {
            this.mAdPresenter.stopTracking();
        }
    }
}
