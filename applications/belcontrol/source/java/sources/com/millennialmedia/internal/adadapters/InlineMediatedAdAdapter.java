package com.millennialmedia.internal.adadapters;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.millennialmedia.InlineAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.ActivityListenerManager;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.adadapters.MediatedAdAdapter;
import com.millennialmedia.internal.adadapters.SmartYieldAdapter;
import com.millennialmedia.internal.adwrapper.SmartYieldAdWrapperType;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.mediation.CustomEvent;
import com.millennialmedia.mediation.CustomEventBanner;
import com.millennialmedia.mediation.CustomEventRegistry;
import com.millennialmedia.mediation.ErrorCode;
import com.millennialmedia.mediation.SmartYieldCustomEvent;
@SuppressLint({"DefaultLocale"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InlineMediatedAdAdapter.class */
public class InlineMediatedAdAdapter extends InlineAdapter implements MediatedAdAdapter, SmartYieldAdapter {
    private static final String TAG = "InlineMediatedAdAdapter";
    private int activityHashCode = -1;
    private InlineActivityListener activityListener;
    private Context context;
    private volatile CustomEventBanner customEventBanner;
    private CustomEventBannerListenerImpl customEventBannerListener;
    private InlineAdapter.InlineAdapterListener inlineAdapterListener;
    private MediatedAdAdapter.MediationInfo mediationInfo;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl.class */
    public static class CustomEventBannerListenerImpl implements CustomEventBanner.CustomEventBannerListener {
        private RelativeLayout containerLayout;
        private InlineAdapter.InlineAdapterListener inlineAdapterListener;

        public CustomEventBannerListenerImpl(InlineAdapter.InlineAdapterListener inlineAdapterListener, RelativeLayout relativeLayout) {
            this.inlineAdapterListener = inlineAdapterListener;
            this.containerLayout = relativeLayout;
        }

        @Override // com.millennialmedia.mediation.CustomEventBanner.CustomEventBannerListener
        public void onAdLeftApplication() {
            this.inlineAdapterListener.onAdLeftApplication();
        }

        @Override // com.millennialmedia.mediation.CustomEventBanner.CustomEventBannerListener
        public void onClicked() {
            this.inlineAdapterListener.onClicked();
        }

        @Override // com.millennialmedia.mediation.CustomEventBanner.CustomEventBannerListener
        public void onCollapsed() {
            this.inlineAdapterListener.onCollapsed();
        }

        @Override // com.millennialmedia.mediation.CustomEventBanner.CustomEventBannerListener
        public void onExpanded() {
            this.inlineAdapterListener.onExpanded();
        }

        @Override // com.millennialmedia.mediation.CustomEventBanner.CustomEventBannerListener
        public void onRequestFailed(ErrorCode errorCode) {
            this.inlineAdapterListener.displayFailed();
        }

        @Override // com.millennialmedia.mediation.CustomEventBanner.CustomEventBannerListener
        public void onRequestSucceeded(View view) {
            this.containerLayout.addView(view, new RelativeLayout.LayoutParams(-2, -2));
            this.inlineAdapterListener.displaySucceeded();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener.class */
    public final class InlineActivityListener extends ActivityListenerManager.ActivityListener {
        private InlineActivityListener() {
            InlineMediatedAdAdapter.this = r4;
        }

        @Override // com.millennialmedia.internal.ActivityListenerManager.ActivityListener
        public void onPaused(Activity activity) {
            if (InlineMediatedAdAdapter.this.customEventBanner != null) {
                InlineMediatedAdAdapter.this.customEventBanner.onPause();
            }
        }

        @Override // com.millennialmedia.internal.ActivityListenerManager.ActivityListener
        public void onResumed(Activity activity) {
            if (InlineMediatedAdAdapter.this.customEventBanner != null) {
                InlineMediatedAdAdapter.this.customEventBanner.onResume();
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineMediatedSmartYieldCustomEventListener.class */
    public static final class InlineMediatedSmartYieldCustomEventListener implements SmartYieldCustomEvent.SmartYieldCustomEventListener {
        private String requestId;

        private InlineMediatedSmartYieldCustomEventListener(String str) {
            this.requestId = str;
        }

        @Override // com.millennialmedia.mediation.SmartYieldCustomEvent.SmartYieldCustomEventListener
        public void onBidLost() {
            SmartYieldAdapter.SmartYieldDecisionListener activeSmartYieldDecisionListener = SmartYieldAdWrapperType.getActiveSmartYieldDecisionListener(this.requestId);
            if (activeSmartYieldDecisionListener != null) {
                activeSmartYieldDecisionListener.onBidLost();
            }
        }

        @Override // com.millennialmedia.mediation.SmartYieldCustomEvent.SmartYieldCustomEventListener
        public void onError() {
            SmartYieldAdapter.SmartYieldDecisionListener activeSmartYieldDecisionListener = SmartYieldAdWrapperType.getActiveSmartYieldDecisionListener(this.requestId);
            if (activeSmartYieldDecisionListener != null) {
                activeSmartYieldDecisionListener.onError();
            }
        }
    }

    private CustomEventBanner getCustomEventBanner() {
        CustomEventBanner customEventBanner;
        synchronized (this) {
            if (this.customEventBanner == null) {
                this.customEventBanner = (CustomEventBanner) CustomEventRegistry.getCustomEvent(InlineAd.class, this.mediationInfo.networkId, CustomEventBanner.class);
            }
            customEventBanner = this.customEventBanner;
        }
        return customEventBanner;
    }

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void display(RelativeLayout relativeLayout, InlineAd.AdSize adSize) {
        try {
            int activityHashForView = ViewUtils.getActivityHashForView(relativeLayout);
            this.activityHashCode = activityHashForView;
            if (activityHashForView != -1) {
                ActivityListenerManager.registerListener(activityHashForView, this.activityListener);
            }
            relativeLayout.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.millennialmedia.internal.adadapters.InlineMediatedAdAdapter.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    if (InlineMediatedAdAdapter.this.activityHashCode == -1) {
                        InlineMediatedAdAdapter.this.activityHashCode = ViewUtils.getActivityHashForView(view);
                        ActivityListenerManager.registerListener(InlineMediatedAdAdapter.this.activityHashCode, InlineMediatedAdAdapter.this.activityListener);
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    ActivityListenerManager.unregisterListener(InlineMediatedAdAdapter.this.activityHashCode, InlineMediatedAdAdapter.this.activityListener);
                }
            });
            this.customEventBannerListener = new CustomEventBannerListenerImpl(this.inlineAdapterListener, relativeLayout);
            Bundle bundle = new Bundle();
            bundle.putString(CustomEvent.PLACEMENT_ID_KEY, this.mediationInfo.spaceId);
            bundle.putString(CustomEvent.SITE_ID_KEY, this.mediationInfo.siteId);
            this.customEventBanner.requestBanner(this.context, this.customEventBannerListener, adSize, bundle);
        } catch (Throwable th) {
            String str = TAG;
            MMLog.m4067e(str, String.format("Error requesting banner for mediation Id: %s", this.mediationInfo.networkId), th);
            InlineAdapter.InlineAdapterListener inlineAdapterListener = this.inlineAdapterListener;
            if (inlineAdapterListener != null) {
                inlineAdapterListener.displayFailed();
            } else {
                MMLog.m4062w(str, "display called but inlineAdapterListener was null. Possibly display called without first calling init?");
            }
        }
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public long getImpressionDelay() {
        return Handshake.getMinImpressionDuration();
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public int getMinImpressionViewabilityPercentage() {
        return Handshake.getMinImpressionViewabilityPercent();
    }

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void init(Context context, InlineAdapter.InlineAdapterListener inlineAdapterListener, AdPlacement.DisplayOptions displayOptions) {
        if (context == null) {
            inlineAdapterListener.initFailed();
        } else if (this.mediationInfo == null) {
            inlineAdapterListener.initFailed();
        } else if (getCustomEventBanner() == null) {
            inlineAdapterListener.initFailed();
        } else {
            this.context = context;
            this.inlineAdapterListener = inlineAdapterListener;
            this.activityListener = new InlineActivityListener();
            inlineAdapterListener.initSucceeded();
        }
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public void release() {
        if (this.customEventBanner != null) {
            this.customEventBanner.destroy();
            this.customEventBanner = null;
        }
    }

    @Override // com.millennialmedia.internal.adadapters.SmartYieldAdapter
    public void requestSmartYieldDecision(Context context, String str, String str2, int i, int i2) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format("requestSmartYieldDecision called with id: %s, bp: %s, width: %d, height: %d", str, str2, Integer.valueOf(i), Integer.valueOf(i2)));
        }
        try {
            CustomEventBanner customEventBanner = getCustomEventBanner();
            if (customEventBanner == null || !(customEventBanner instanceof SmartYieldCustomEvent)) {
                if (MMLog.isDebugEnabled()) {
                    if (customEventBanner == null) {
                        MMLog.m4070d(TAG, "CustomEventBanner instance is null.");
                    } else {
                        MMLog.m4070d(TAG, String.format("CustomEventBanner class %s does not implement SmartYieldCustomEvent interface.", customEventBanner.getClass().getSimpleName()));
                    }
                }
                SmartYieldAdWrapperType.getActiveSmartYieldDecisionListener(str).onBidLost();
                return;
            }
            InlineMediatedSmartYieldCustomEventListener inlineMediatedSmartYieldCustomEventListener = new InlineMediatedSmartYieldCustomEventListener(str);
            Bundle bundle = new Bundle();
            bundle.putString(CustomEvent.PLACEMENT_ID_KEY, this.mediationInfo.spaceId);
            bundle.putString(CustomEvent.SITE_ID_KEY, this.mediationInfo.siteId);
            ((SmartYieldCustomEvent) customEventBanner).requestSmartYieldDecision(context, str, str2, i, i2, bundle, inlineMediatedSmartYieldCustomEventListener);
        } catch (Throwable th) {
            MMLog.m4067e(TAG, "Error occurred requesting bid decision.", th);
            SmartYieldAdWrapperType.getActiveSmartYieldDecisionListener(str).onBidLost();
        }
    }

    @Override // com.millennialmedia.internal.adadapters.MediatedAdAdapter
    public void setMediationInfo(MediatedAdAdapter.MediationInfo mediationInfo) {
        this.mediationInfo = mediationInfo;
    }
}
