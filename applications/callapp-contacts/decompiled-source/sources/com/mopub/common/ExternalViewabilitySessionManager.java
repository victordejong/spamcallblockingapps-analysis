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

    /* renamed from: c  reason: collision with root package name */
    private static ExternalViewabilityManagerFactory f33824c;

    /* renamed from: b  reason: collision with root package name */
    private ViewabilityTracker f33826b = null;

    /* renamed from: a  reason: collision with root package name */
    final Set<Pair<View, ViewabilityObstruction>> f33825a = new HashSet();

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
        ExternalViewabilityManagerFactory externalViewabilityManagerFactory = f33824c;
        return externalViewabilityManagerFactory == null ? new ExternalViewabilitySessionManager() : externalViewabilityManagerFactory.create();
    }

    public static void setCreator(ExternalViewabilityManagerFactory externalViewabilityManagerFactory) {
        f33824c = externalViewabilityManagerFactory;
    }

    public void createNativeSession(View view, Set<com.mopub.common.ViewabilityVendor> set) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        if (this.f33826b == null) {
            try {
                this.f33826b = ViewabilityTracker.a(view, set);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createNativeTracker failed", e);
            }
        }
    }

    public void createVideoSession(View view, Set<com.mopub.common.ViewabilityVendor> set) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        if (this.f33826b == null) {
            try {
                this.f33826b = e.b(view, set);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createVastVideoTracker failed", e);
            }
        }
    }

    public void createWebViewSession(WebView webView) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(webView);
        if (this.f33826b == null) {
            try {
                this.f33826b = ViewabilityTracker.a(webView);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createWebViewTracker failed", e);
            }
        }
    }

    public void endSession() {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f33826b;
            if (viewabilityTracker != null) {
                ViewabilityTracker.a("stopTracking(): " + viewabilityTracker.f33882d);
                viewabilityTracker.a(ViewabilityTracker.STATE.STOPPED);
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "stopTracking failed", e);
        }
    }

    public boolean hasImpressionOccurred() {
        ViewabilityTracker viewabilityTracker = this.f33826b;
        if (viewabilityTracker != null) {
            return viewabilityTracker.f33879a;
        }
        return false;
    }

    public boolean isTracking() {
        Preconditions.checkUiThread();
        ViewabilityTracker viewabilityTracker = this.f33826b;
        if (viewabilityTracker == null) {
            return false;
        }
        return viewabilityTracker.a();
    }

    public void onVideoPrepared(long j) {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f33826b;
            if (viewabilityTracker != null) {
                viewabilityTracker.videoPrepared(((float) j) / 1000.0f);
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "videoPrepared failed", e);
        }
    }

    public void recordVideoEvent(VideoEvent videoEvent, int i) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(videoEvent);
        try {
            ViewabilityTracker viewabilityTracker = this.f33826b;
            if (viewabilityTracker != null) {
                viewabilityTracker.trackVideo(videoEvent);
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "trackVideo failed", e);
        }
    }

    public void registerFriendlyObstruction(View view, ViewabilityObstruction viewabilityObstruction) {
        Preconditions.checkUiThread();
        ViewabilityTracker viewabilityTracker = this.f33826b;
        try {
            if (viewabilityTracker != null) {
                if (!(view == null || viewabilityObstruction == null)) {
                    viewabilityTracker.a(view, viewabilityObstruction);
                }
                if (this.f33825a.size() > 0) {
                    viewabilityTracker.a(this.f33825a);
                    this.f33825a.clear();
                }
            } else if (view != null && viewabilityObstruction != null) {
                this.f33825a.add(new Pair<>(view, viewabilityObstruction));
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, e.getLocalizedMessage());
        }
    }

    public void registerTrackedView(View view) {
        ViewabilityTracker viewabilityTracker = this.f33826b;
        if (viewabilityTracker != null) {
            viewabilityTracker.a(view);
        }
    }

    public void registerVideoObstruction(View view, ViewabilityObstruction viewabilityObstruction) {
        registerFriendlyObstruction(view, viewabilityObstruction);
    }

    public void startSession() {
        Preconditions.checkUiThread();
        try {
            if (this.f33826b != null) {
                registerFriendlyObstruction(null, null);
                this.f33826b.startTracking();
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "startSession()", e);
        }
    }

    public void trackImpression() {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f33826b;
            if (viewabilityTracker != null) {
                viewabilityTracker.trackImpression();
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "trackImpression()", e);
        }
    }
}
