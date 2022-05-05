package com.mopub.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.InternalCustomEventBannerListener;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.factories.MraidControllerFactory;
import com.mopub.mraid.MraidBridge;
import com.mopub.mraid.MraidController;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBanner.class */
public class MraidBanner extends CustomEventBanner {
    public static final String ADAPTER_NAME = "MraidBanner";
    @Nullable

    /* renamed from: a */
    public MraidController f8876a;
    @Nullable

    /* renamed from: b */
    public InternalCustomEventBannerListener f8877b;
    @Nullable

    /* renamed from: c */
    public MraidWebViewDebugListener f8878c;
    @Nullable

    /* renamed from: d */
    public ExternalViewabilitySessionManager f8879d;

    /* renamed from: e */
    public boolean f8880e = false;

    /* renamed from: com.mopub.mraid.MraidBanner$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBanner$a.class */
    public class C3896a implements MraidController.MraidListener {
        public C3896a() {
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onClose() {
            MraidBanner.this.f8877b.onBannerCollapsed();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onExpand() {
            MraidBanner.this.f8877b.onBannerExpanded();
            MraidBanner.this.f8877b.onBannerClicked();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onFailedToLoad() {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MraidBanner.ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.MRAID_LOAD_ERROR.getIntCode()), MoPubErrorCode.MRAID_LOAD_ERROR);
            MraidBanner.this.f8877b.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onLoaded(View view) {
            AdViewController.setShouldHonorServerDimensions(view);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MraidBanner.ADAPTER_NAME);
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, MraidBanner.ADAPTER_NAME);
            MraidBanner.this.f8877b.onBannerLoaded(view);
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onOpen() {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MraidBanner.ADAPTER_NAME);
            MraidBanner.this.f8877b.onBannerClicked();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onRenderProcessGone(@NonNull MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MraidBanner.ADAPTER_NAME, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            MraidBanner.this.f8877b.onBannerFailed(moPubErrorCode);
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onResize(boolean z) {
            if (z) {
                MraidBanner.this.f8877b.onResumeAutoRefresh();
            } else {
                MraidBanner.this.f8877b.onPauseAutoRefresh();
            }
        }
    }

    /* renamed from: com.mopub.mraid.MraidBanner$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBanner$b.class */
    public class C3897b implements MraidController.MraidWebViewCacheListener {

        /* renamed from: a */
        public final /* synthetic */ Context f8882a;

        public C3897b(Context context) {
            this.f8882a = context;
        }

        @Override // com.mopub.mraid.MraidController.MraidWebViewCacheListener
        public void onReady(@NonNull MraidBridge.MraidWebView mraidWebView, @Nullable ExternalViewabilitySessionManager externalViewabilitySessionManager) {
            mraidWebView.getSettings().setJavaScriptEnabled(true);
            Context context = this.f8882a;
            if (context instanceof Activity) {
                MraidBanner.this.f8879d = new ExternalViewabilitySessionManager(context);
                MraidBanner.this.f8879d.createDisplaySession(this.f8882a, mraidWebView, MraidBanner.this.f8880e);
            }
        }
    }

    /* renamed from: b */
    public final boolean m30339b(@NonNull Map<String, String> map) {
        return map.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void loadBanner(@NonNull Context context, @NonNull CustomEventBanner.CustomEventBannerListener customEventBannerListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2) {
        try {
            this.f8877b = (InternalCustomEventBannerListener) customEventBannerListener;
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
            if (m30339b(map2)) {
                String str = map2.get(DataKeys.HTML_RESPONSE_BODY_KEY);
                Object obj = map.get(DataKeys.BANNER_IMPRESSION_PIXEL_COUNT_ENABLED);
                if (obj instanceof Boolean) {
                    this.f8880e = ((Boolean) obj).booleanValue();
                }
                try {
                    this.f8876a = MraidControllerFactory.create(context, (AdReport) map.get(DataKeys.AD_REPORT_KEY), PlacementType.INLINE);
                    this.f8876a.setDebugListener(this.f8878c);
                    this.f8876a.setMraidListener(new C3896a());
                    this.f8876a.fillContent(str, new C3897b(context));
                } catch (ClassCastException e) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.MRAID_LOAD_ERROR.getIntCode()), MoPubErrorCode.MRAID_LOAD_ERROR);
                    this.f8877b.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
                }
            } else {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.MRAID_LOAD_ERROR.getIntCode()), MoPubErrorCode.MRAID_LOAD_ERROR);
                this.f8877b.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
            }
        } catch (ClassCastException e2) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.MRAID_LOAD_ERROR.getIntCode()), MoPubErrorCode.MRAID_LOAD_ERROR);
            customEventBannerListener.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void onInvalidate() {
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f8879d;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.endDisplaySession();
            this.f8879d = null;
        }
        MraidController mraidController = this.f8876a;
        if (mraidController != null) {
            mraidController.setMraidListener(null);
            this.f8876a.destroy();
        }
    }

    @VisibleForTesting
    public void setDebugListener(@Nullable MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.f8878c = mraidWebViewDebugListener;
        MraidController mraidController = this.f8876a;
        if (mraidController != null) {
            mraidController.setDebugListener(mraidWebViewDebugListener);
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void trackMpxAndThirdPartyImpressions() {
        MraidController mraidController = this.f8876a;
        if (mraidController != null) {
            mraidController.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
            if (this.f8880e && this.f8879d != null) {
                Activity activity = this.f8876a.m30274g().get();
                if (activity != null) {
                    this.f8879d.startDeferredDisplaySession(activity);
                } else {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, ADAPTER_NAME, "Lost the activity for deferred Viewability tracking. Dropping session.");
                }
            }
        }
    }
}
