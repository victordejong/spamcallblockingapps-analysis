package net.pubnative.lite.sdk.interstitial.presenter;

import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.analytics.ReportingController;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter;
import net.pubnative.lite.sdk.models.C20576Ad;
import net.pubnative.lite.sdk.utils.AdTracker;
import net.pubnative.lite.sdk.utils.CheckUtils;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterDecorator.class */
public class InterstitialPresenterDecorator implements InterstitialPresenter, InterstitialPresenter.Listener {
    private static final String TAG = "InterstitialPresenterDecorator";
    private final AdTracker mAdTrackingDelegate;
    private final InterstitialPresenter mInterstitialPresenter;
    private boolean mIsDestroyed;
    private final InterstitialPresenter.Listener mListener;
    private final ReportingController mReportingController;

    public InterstitialPresenterDecorator(InterstitialPresenter interstitialPresenter, AdTracker adTracker, ReportingController reportingController, InterstitialPresenter.Listener listener) {
        this.mInterstitialPresenter = interstitialPresenter;
        this.mAdTrackingDelegate = adTracker;
        this.mReportingController = reportingController;
        this.mListener = listener;
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public void destroy() {
        this.mInterstitialPresenter.destroy();
        this.mIsDestroyed = true;
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public C20576Ad getAd() {
        return this.mInterstitialPresenter.getAd();
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public boolean isReady() {
        return this.mInterstitialPresenter.isReady();
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public void load() {
        if (!CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "InterstitialPresenterDecorator is destroyed")) {
            return;
        }
        this.mInterstitialPresenter.load();
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialClicked(InterstitialPresenter interstitialPresenter) {
        if (this.mIsDestroyed) {
            return;
        }
        if (this.mReportingController != null) {
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType("click");
            reportingEvent.setTimestamp(System.currentTimeMillis());
            reportingEvent.setAdFormat("fullscreen");
            this.mReportingController.reportEvent(reportingEvent);
        }
        this.mAdTrackingDelegate.trackClick();
        this.mListener.onInterstitialClicked(interstitialPresenter);
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialDismissed(InterstitialPresenter interstitialPresenter) {
        if (this.mIsDestroyed) {
            return;
        }
        if (this.mReportingController != null) {
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.INTERSTITIAL_CLOSED);
            reportingEvent.setTimestamp(System.currentTimeMillis());
            reportingEvent.setAdFormat("fullscreen");
            this.mReportingController.reportEvent(reportingEvent);
        }
        this.mListener.onInterstitialDismissed(interstitialPresenter);
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialError(InterstitialPresenter interstitialPresenter) {
        if (this.mIsDestroyed) {
            return;
        }
        if (this.mReportingController != null) {
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType("error");
            reportingEvent.setTimestamp(System.currentTimeMillis());
            reportingEvent.setAdFormat("fullscreen");
            this.mReportingController.reportEvent(reportingEvent);
        }
        Logger.m630d(TAG, "Interstitial error for zone id: ");
        this.mListener.onInterstitialError(interstitialPresenter);
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialLoaded(InterstitialPresenter interstitialPresenter) {
        if (this.mIsDestroyed) {
            return;
        }
        this.mListener.onInterstitialLoaded(interstitialPresenter);
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter.Listener
    public void onInterstitialShown(InterstitialPresenter interstitialPresenter) {
        if (this.mIsDestroyed) {
            return;
        }
        if (this.mReportingController != null) {
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType("impression");
            reportingEvent.setTimestamp(System.currentTimeMillis());
            reportingEvent.setAdFormat("fullscreen");
            this.mReportingController.reportEvent(reportingEvent);
        }
        this.mAdTrackingDelegate.trackImpression();
        this.mListener.onInterstitialShown(interstitialPresenter);
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public void setListener(InterstitialPresenter.Listener listener) {
    }

    @Override // net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter
    public void show() {
        if (!CheckUtils.NoThrow.checkArgument(!this.mIsDestroyed, "InterstitialPresenterDecorator is destroyed")) {
            return;
        }
        this.mInterstitialPresenter.show();
    }
}
