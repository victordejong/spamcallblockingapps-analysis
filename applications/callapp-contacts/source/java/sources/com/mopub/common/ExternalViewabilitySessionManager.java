package com.mopub.common;

import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import com.mopub.common.ViewabilityTracker;
import com.mopub.common.logging.MoPubLog;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager.class */
public class ExternalViewabilitySessionManager {

    /* renamed from: c */
    private static ExternalViewabilityManagerFactory f58742c;

    /* renamed from: b */
    private ViewabilityTracker f58744b = null;

    /* renamed from: a */
    final Set<Pair<View, ViewabilityObstruction>> f58743a = new HashSet();

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory.class */
    public interface ExternalViewabilityManagerFactory {
        ExternalViewabilitySessionManager create();
    }

    @Deprecated
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor.class */
    public enum ViewabilityVendor {
        AVID,
        MOAT,
        ALL
    }

    private ExternalViewabilitySessionManager() {
    }

    public static ExternalViewabilitySessionManager create() {
        ExternalViewabilityManagerFactory externalViewabilityManagerFactory = f58742c;
        return externalViewabilityManagerFactory == null ? new ExternalViewabilitySessionManager() : externalViewabilityManagerFactory.create();
    }

    public static void setCreator(ExternalViewabilityManagerFactory externalViewabilityManagerFactory) {
        f58742c = externalViewabilityManagerFactory;
    }

    public void createNativeSession(View view, Set<com.mopub.common.ViewabilityVendor> set) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        if (this.f58744b != null) {
            return;
        }
        try {
            this.f58744b = ViewabilityTracker.m6698a(view, set);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createNativeTracker failed", e);
        }
    }

    public void createVideoSession(View view, Set<com.mopub.common.ViewabilityVendor> set) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        if (this.f58744b != null) {
            return;
        }
        try {
            this.f58744b = C16721e.m6677b(view, set);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createVastVideoTracker failed", e);
        }
    }

    public void createWebViewSession(WebView webView) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(webView);
        if (this.f58744b != null) {
            return;
        }
        try {
            this.f58744b = ViewabilityTracker.m6697a(webView);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createWebViewTracker failed", e);
        }
    }

    public void endSession() {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f58744b;
            if (viewabilityTracker == null) {
                return;
            }
            ViewabilityTracker.m6693a("stopTracking(): " + viewabilityTracker.f58816d);
            viewabilityTracker.m6695a(ViewabilityTracker.STATE.STOPPED);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "stopTracking failed", e);
        }
    }

    public boolean hasImpressionOccurred() {
        ViewabilityTracker viewabilityTracker = this.f58744b;
        if (viewabilityTracker != null) {
            return viewabilityTracker.f58813a;
        }
        return false;
    }

    public boolean isTracking() {
        Preconditions.checkUiThread();
        ViewabilityTracker viewabilityTracker = this.f58744b;
        if (viewabilityTracker == null) {
            return false;
        }
        return viewabilityTracker.m6701a();
    }

    public void onVideoPrepared(long j) {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f58744b;
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
            ViewabilityTracker viewabilityTracker = this.f58744b;
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
        ViewabilityTracker viewabilityTracker = this.f58744b;
        try {
            if (viewabilityTracker == null) {
                if (view == null || viewabilityObstruction == null) {
                    return;
                }
                this.f58743a.add(new Pair<>(view, viewabilityObstruction));
                return;
            }
            if (view != null && viewabilityObstruction != null) {
                viewabilityTracker.m6699a(view, viewabilityObstruction);
            }
            if (this.f58743a.size() <= 0) {
                return;
            }
            viewabilityTracker.m6694a(this.f58743a);
            this.f58743a.clear();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, e.getLocalizedMessage());
        }
    }

    public void registerTrackedView(View view) {
        ViewabilityTracker viewabilityTracker = this.f58744b;
        if (viewabilityTracker != null) {
            viewabilityTracker.m6700a(view);
        }
    }

    public void registerVideoObstruction(View view, ViewabilityObstruction viewabilityObstruction) {
        registerFriendlyObstruction(view, viewabilityObstruction);
    }

    public void startSession() {
        Preconditions.checkUiThread();
        try {
            if (this.f58744b == null) {
                return;
            }
            registerFriendlyObstruction(null, null);
            this.f58744b.startTracking();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "startSession()", e);
        }
    }

    public void trackImpression() {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f58744b;
            if (viewabilityTracker == null) {
                return;
            }
            viewabilityTracker.trackImpression();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "trackImpression()", e);
        }
    }
}
