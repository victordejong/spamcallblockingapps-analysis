package com.mopub.common;

import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import com.iab.omid.library.mopub.adsession.AdEvents;
import com.iab.omid.library.mopub.adsession.AdSession;
import com.iab.omid.library.mopub.adsession.CreativeType;
import com.iab.omid.library.mopub.adsession.Owner;
import com.mopub.common.ViewabilityTracker;
import com.mopub.common.logging.MoPubLog;
import e.n.a.j;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager.class */
public class ExternalViewabilitySessionManager {

    /* renamed from: c */
    public static ExternalViewabilityManagerFactory f8506c;

    /* renamed from: a */
    public ViewabilityTracker f8507a = null;

    /* renamed from: b */
    public final Set<Pair<View, ViewabilityObstruction>> f8508b = new HashSet();

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
        ExternalViewabilityManagerFactory externalViewabilityManagerFactory = f8506c;
        return externalViewabilityManagerFactory == null ? new ExternalViewabilitySessionManager() : externalViewabilityManagerFactory.create();
    }

    @VisibleForTesting
    public static void setCreator(ExternalViewabilityManagerFactory externalViewabilityManagerFactory) {
        f8506c = externalViewabilityManagerFactory;
    }

    public void createNativeSession(View view, Set<com.mopub.common.ViewabilityVendor> set) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        if (this.f8507a != null) {
            return;
        }
        try {
            AtomicInteger atomicInteger = ViewabilityTracker.f8582g;
            if (set.size() == 0) {
                throw new IllegalArgumentException("Empty viewability vendors list.");
            }
            AdSession m36293b = ViewabilityTracker.m36293b(CreativeType.NATIVE_DISPLAY, set, Owner.NONE);
            this.f8507a = new ViewabilityTracker(m36293b, AdEvents.createAdEvents(m36293b), view);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createNativeTracker failed", e);
        }
    }

    public void createVideoSession(View view, Set<com.mopub.common.ViewabilityVendor> set) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        if (this.f8507a != null) {
            return;
        }
        try {
            int i = j.i;
            AdSession m36293b = ViewabilityTracker.m36293b(CreativeType.VIDEO, set, Owner.NATIVE);
            this.f8507a = new j(m36293b, AdEvents.createAdEvents(m36293b), view);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createVastVideoTracker failed", e);
        }
    }

    public void createWebViewSession(WebView webView) {
        Preconditions.checkUiThread();
        Preconditions.checkNotNull(webView);
        if (this.f8507a != null) {
            return;
        }
        try {
            this.f8507a = ViewabilityTracker.m36292c(webView);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "createWebViewTracker failed", e);
        }
    }

    public void endSession() {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f8507a;
            if (viewabilityTracker == null) {
                return;
            }
            Objects.requireNonNull(viewabilityTracker);
            viewabilityTracker.m36291d("stopTracking(): " + viewabilityTracker.f8588f);
            viewabilityTracker.m36294a(ViewabilityTracker.STATE.STOPPED);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "stopTracking failed", e);
        }
    }

    public boolean hasImpressionOccurred() {
        ViewabilityTracker viewabilityTracker = this.f8507a;
        if (viewabilityTracker != null) {
            return viewabilityTracker.f8585c;
        }
        return false;
    }

    public boolean isTracking() {
        Preconditions.checkUiThread();
        ViewabilityTracker viewabilityTracker = this.f8507a;
        if (viewabilityTracker == null) {
            return false;
        }
        return viewabilityTracker.f8586d;
    }

    public void onVideoPrepared(long j) {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f8507a;
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
            ViewabilityTracker viewabilityTracker = this.f8507a;
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
        ViewabilityTracker viewabilityTracker = this.f8507a;
        try {
            if (viewabilityTracker == null) {
                if (view == null || viewabilityObstruction == null) {
                    return;
                }
                this.f8508b.add(new Pair<>(view, viewabilityObstruction));
                return;
            }
            if (view != null && viewabilityObstruction != null) {
                viewabilityTracker.m36290e(view, viewabilityObstruction);
            }
            if (this.f8508b.size() <= 0) {
                return;
            }
            viewabilityTracker.m36289f(this.f8508b);
            this.f8508b.clear();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, e.getLocalizedMessage());
        }
    }

    public void registerTrackedView(View view) {
        ViewabilityTracker viewabilityTracker = this.f8507a;
        if (viewabilityTracker != null) {
            viewabilityTracker.f8583a.registerAdView(view);
        }
    }

    public void registerVideoObstruction(View view, ViewabilityObstruction viewabilityObstruction) {
        registerFriendlyObstruction(view, viewabilityObstruction);
    }

    public void startSession() {
        Preconditions.checkUiThread();
        try {
            if (this.f8507a == null) {
                return;
            }
            registerFriendlyObstruction(null, null);
            this.f8507a.startTracking();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "startSession()", e);
        }
    }

    public void trackImpression() {
        Preconditions.checkUiThread();
        try {
            ViewabilityTracker viewabilityTracker = this.f8507a;
            if (viewabilityTracker == null) {
                return;
            }
            viewabilityTracker.trackImpression();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "trackImpression()", e);
        }
    }
}
