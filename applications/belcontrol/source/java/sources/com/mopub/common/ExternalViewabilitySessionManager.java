package com.mopub.common;

import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import com.mopub.common.logging.MoPubLog;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager.class */
public class ExternalViewabilitySessionManager {

    /* renamed from: c */
    public static ExternalViewabilityManagerFactory f4243c;

    /* renamed from: a */
    public ViewabilityTracker f4244a = null;

    /* renamed from: b */
    public final Set<Pair<View, ViewabilityObstruction>> f4245b = new HashSet();

    @VisibleForTesting
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory.class */
    public interface ExternalViewabilityManagerFactory {
        ExternalViewabilitySessionManager create();
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor.class */
    public enum ViewabilityVendor {
        AVID,
        MOAT,
        ALL
    }

    private ExternalViewabilitySessionManager() {
    }

    public static ExternalViewabilitySessionManager create() {
        ExternalViewabilityManagerFactory externalViewabilityManagerFactory = f4243c;
        return externalViewabilityManagerFactory == null ? new ExternalViewabilitySessionManager() : externalViewabilityManagerFactory.create();
    }

    @VisibleForTesting
    public static void setCreator(ExternalViewabilityManagerFactory externalViewabilityManagerFactory) {
        f4243c = externalViewabilityManagerFactory;
    }

    public void createNativeSession(View view, Set<com.mopub.common.ViewabilityVendor> set) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        if (this.f4244a != null) {
            return;
        }
        try {
            this.f4244a = ViewabilityTracker.m3894c(view, set);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createNativeTracker failed", e);
        }
    }

    public void createVideoSession(View view, Set<com.mopub.common.ViewabilityVendor> set) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        if (this.f4244a != null) {
            return;
        }
        try {
            this.f4244a = bg1.m5667m(view, set);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createVastVideoTracker failed", e);
        }
    }

    public void createWebViewSession(WebView webView) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(webView);
        if (this.f4244a != null) {
            return;
        }
        try {
            this.f4244a = ViewabilityTracker.m3892e(webView);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createWebViewTracker failed", e);
        }
    }

    public void endSession() {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f4244a;
            if (viewabilityTracker == null) {
                return;
            }
            viewabilityTracker.m3885l();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "stopTracking failed", e);
        }
    }

    public boolean hasImpressionOccurred() {
        ViewabilityTracker viewabilityTracker = this.f4244a;
        if (viewabilityTracker != null) {
            return viewabilityTracker.m3891f();
        }
        return false;
    }

    public boolean isTracking() {
        Preconditions.checkUiThread();
        ViewabilityTracker viewabilityTracker = this.f4244a;
        if (viewabilityTracker == null) {
            return false;
        }
        return viewabilityTracker.m3890g();
    }

    public void onVideoPrepared(long j) {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f4244a;
            if (viewabilityTracker == null) {
                return;
            }
            viewabilityTracker.videoPrepared(((float) j) / 1000.0f);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "videoPrepared failed", e);
        }
    }

    public void recordVideoEvent(VideoEvent videoEvent, int i) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(videoEvent);
        try {
            ViewabilityTracker viewabilityTracker = this.f4244a;
            if (viewabilityTracker == null) {
                return;
            }
            viewabilityTracker.trackVideo(videoEvent);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "trackVideo failed", e);
        }
    }

    public void registerFriendlyObstruction(View view, ViewabilityObstruction viewabilityObstruction) {
        Preconditions.checkUiThread();
        ViewabilityTracker viewabilityTracker = this.f4244a;
        try {
            if (viewabilityTracker == null) {
                if (view == null || viewabilityObstruction == null) {
                    return;
                }
                this.f4245b.add(new Pair<>(view, viewabilityObstruction));
                return;
            }
            if (view != null && viewabilityObstruction != null) {
                viewabilityTracker.m3888i(view, viewabilityObstruction);
            }
            if (this.f4245b.size() <= 0) {
                return;
            }
            viewabilityTracker.m3887j(this.f4245b);
            this.f4245b.clear();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, e.getLocalizedMessage());
        }
    }

    public void registerTrackedView(View view) {
        ViewabilityTracker viewabilityTracker = this.f4244a;
        if (viewabilityTracker != null) {
            viewabilityTracker.m3886k(view);
        }
    }

    public void registerVideoObstruction(View view, ViewabilityObstruction viewabilityObstruction) {
        registerFriendlyObstruction(view, viewabilityObstruction);
    }

    public void startSession() {
        Preconditions.checkUiThread();
        try {
            if (this.f4244a == null) {
                return;
            }
            registerFriendlyObstruction(null, null);
            this.f4244a.startTracking();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "startSession()", e);
        }
    }

    public void trackImpression() {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f4244a;
            if (viewabilityTracker == null) {
                return;
            }
            viewabilityTracker.trackImpression();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "trackImpression()", e);
        }
    }
}
