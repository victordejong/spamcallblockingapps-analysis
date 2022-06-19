package com.millennialmedia.internal.adadapters;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
import com.millennialmedia.internal.adadapters.MediatedAdAdapter;
import com.millennialmedia.internal.adadapters.SmartYieldAdapter;
import com.millennialmedia.internal.adwrapper.SmartYieldAdWrapperType;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.mediation.CustomEvent;
import com.millennialmedia.mediation.CustomEventInterstitial;
import com.millennialmedia.mediation.CustomEventRegistry;
import com.millennialmedia.mediation.ErrorCode;
import com.millennialmedia.mediation.SmartYieldCustomEvent;
@SuppressLint({"DefaultLocale"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter.class */
public class InterstitialMediatedAdAdapter extends InterstitialAdapter implements MediatedAdAdapter, SmartYieldAdapter {
    private static final String TAG = "InterstitialMediatedAdAdapter";
    private InterstitialAdapter.InterstitialAdapterListener adapterListener;
    private volatile CustomEventInterstitial customEventInterstitial;
    private CustomEventInterstitialListenerImpl customEventInterstitialListener;
    private MediatedAdAdapter.MediationInfo mediationInfo;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$CustomEventInterstitialListenerImpl.class */
    public class CustomEventInterstitialListenerImpl implements CustomEventInterstitial.CustomEventInterstitialListener {
        private CustomEventInterstitialListenerImpl() {
            InterstitialMediatedAdAdapter.this = r4;
        }

        @Override // com.millennialmedia.mediation.CustomEventInterstitial.CustomEventInterstitialListener
        public void onAdLeftApplication() {
            InterstitialMediatedAdAdapter.this.adapterListener.onAdLeftApplication();
        }

        @Override // com.millennialmedia.mediation.CustomEventInterstitial.CustomEventInterstitialListener
        public void onClicked() {
            InterstitialMediatedAdAdapter.this.adapterListener.onClicked();
        }

        @Override // com.millennialmedia.mediation.CustomEventInterstitial.CustomEventInterstitialListener
        public void onClosed() {
            InterstitialMediatedAdAdapter.this.adapterListener.onClosed();
        }

        @Override // com.millennialmedia.mediation.CustomEventInterstitial.CustomEventInterstitialListener
        public void onExpired() {
            InterstitialMediatedAdAdapter.this.adapterListener.onExpired();
        }

        @Override // com.millennialmedia.mediation.CustomEventInterstitial.CustomEventInterstitialListener
        public void onLoadFailed(ErrorCode errorCode) {
            InterstitialMediatedAdAdapter.this.adapterListener.initFailed();
        }

        @Override // com.millennialmedia.mediation.CustomEventInterstitial.CustomEventInterstitialListener
        public void onLoaded() {
            InterstitialMediatedAdAdapter.this.adapterListener.initSucceeded();
        }

        @Override // com.millennialmedia.mediation.CustomEventInterstitial.CustomEventInterstitialListener
        public void onShowFailed(ErrorCode errorCode) {
            InterstitialMediatedAdAdapter.this.adapterListener.showFailed(null);
        }

        @Override // com.millennialmedia.mediation.CustomEventInterstitial.CustomEventInterstitialListener
        public void onShown() {
            InterstitialMediatedAdAdapter.this.adapterListener.shown();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InterstitialMediatedAdAdapter$InterstitialMediatedSmartYieldCustomEventListener.class */
    public final class InterstitialMediatedSmartYieldCustomEventListener implements SmartYieldCustomEvent.SmartYieldCustomEventListener {
        private String positionId;

        private InterstitialMediatedSmartYieldCustomEventListener(String str) {
            InterstitialMediatedAdAdapter.this = r4;
            this.positionId = str;
        }

        @Override // com.millennialmedia.mediation.SmartYieldCustomEvent.SmartYieldCustomEventListener
        public void onBidLost() {
            SmartYieldAdapter.SmartYieldDecisionListener activeSmartYieldDecisionListener = SmartYieldAdWrapperType.getActiveSmartYieldDecisionListener(this.positionId);
            if (activeSmartYieldDecisionListener != null) {
                activeSmartYieldDecisionListener.onBidLost();
            }
        }

        @Override // com.millennialmedia.mediation.SmartYieldCustomEvent.SmartYieldCustomEventListener
        public void onError() {
            SmartYieldAdapter.SmartYieldDecisionListener activeSmartYieldDecisionListener = SmartYieldAdWrapperType.getActiveSmartYieldDecisionListener(this.positionId);
            if (activeSmartYieldDecisionListener != null) {
                activeSmartYieldDecisionListener.onError();
            }
        }
    }

    public Bundle buildMediationExtras() {
        Bundle bundle = new Bundle();
        bundle.putString(CustomEvent.PLACEMENT_ID_KEY, this.mediationInfo.spaceId);
        bundle.putString(CustomEvent.SITE_ID_KEY, this.mediationInfo.siteId);
        return bundle;
    }

    private CustomEventInterstitial getCustomEventInterstitial() {
        CustomEventInterstitial customEventInterstitial;
        synchronized (this) {
            if (this.customEventInterstitial == null) {
                this.customEventInterstitial = (CustomEventInterstitial) CustomEventRegistry.getCustomEvent(InterstitialAd.class, this.mediationInfo.networkId, CustomEventInterstitial.class);
            }
            customEventInterstitial = this.customEventInterstitial;
        }
        return customEventInterstitial;
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public long getImpressionDelay() {
        return 0L;
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public int getMinImpressionViewabilityPercentage() {
        return -1;
    }

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void init(final Context context, InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener) {
        this.adapterListener = interstitialAdapterListener;
        if (this.mediationInfo == null) {
            interstitialAdapterListener.initFailed();
            return;
        }
        this.customEventInterstitial = getCustomEventInterstitial();
        if (this.customEventInterstitial == null) {
            interstitialAdapterListener.initFailed();
        } else {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adadapters.InterstitialMediatedAdAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    InterstitialMediatedAdAdapter interstitialMediatedAdAdapter = InterstitialMediatedAdAdapter.this;
                    interstitialMediatedAdAdapter.customEventInterstitialListener = new CustomEventInterstitialListenerImpl();
                    InterstitialMediatedAdAdapter.this.customEventInterstitial.loadInterstitial(context, InterstitialMediatedAdAdapter.this.customEventInterstitialListener, InterstitialMediatedAdAdapter.this.buildMediationExtras());
                }
            });
        }
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public void release() {
        if (this.customEventInterstitial != null) {
            this.customEventInterstitial.destroy();
            this.customEventInterstitial = null;
        }
    }

    @Override // com.millennialmedia.internal.adadapters.SmartYieldAdapter
    public void requestSmartYieldDecision(Context context, String str, String str2, int i, int i2) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format("requestSmartYieldDecision called with id: %s, bp: %s, width: %d, height: %d", str, str2, Integer.valueOf(i), Integer.valueOf(i2)));
        }
        try {
            CustomEventInterstitial customEventInterstitial = getCustomEventInterstitial();
            if (customEventInterstitial == null || !(customEventInterstitial instanceof SmartYieldCustomEvent)) {
                if (MMLog.isDebugEnabled()) {
                    if (customEventInterstitial == null) {
                        MMLog.m4070d(TAG, "CustomEventInterstitial instance is null.");
                    } else {
                        MMLog.m4070d(TAG, String.format("CustomEventInterstitial class %s does not implement SmartYieldCustomEvent interface.", customEventInterstitial.getClass().getSimpleName()));
                    }
                }
                SmartYieldAdWrapperType.getActiveSmartYieldDecisionListener(str).onBidLost();
                return;
            }
            InterstitialMediatedSmartYieldCustomEventListener interstitialMediatedSmartYieldCustomEventListener = new InterstitialMediatedSmartYieldCustomEventListener(str);
            Bundle bundle = new Bundle();
            bundle.putString(CustomEvent.PLACEMENT_ID_KEY, this.mediationInfo.spaceId);
            bundle.putString(CustomEvent.SITE_ID_KEY, this.mediationInfo.siteId);
            ((SmartYieldCustomEvent) customEventInterstitial).requestSmartYieldDecision(context, str, str2, i, i2, bundle, interstitialMediatedSmartYieldCustomEventListener);
        } catch (Throwable th) {
            MMLog.m4067e(TAG, "Error occurred requesting bid decision.", th);
            SmartYieldAdWrapperType.getActiveSmartYieldDecisionListener(str).onBidLost();
        }
    }

    @Override // com.millennialmedia.internal.adadapters.MediatedAdAdapter
    public void setMediationInfo(MediatedAdAdapter.MediationInfo mediationInfo) {
        this.mediationInfo = mediationInfo;
    }

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void show(Context context, AdPlacement.DisplayOptions displayOptions) {
        this.customEventInterstitial.showInterstitial(context, buildMediationExtras());
    }
}
