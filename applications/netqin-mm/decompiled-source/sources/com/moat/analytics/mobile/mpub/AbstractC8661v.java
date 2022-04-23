package com.moat.analytics.mobile.mpub;

import android.app.Activity;
import android.app.Application;
import android.media.MediaPlayer;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.mpub.NativeDisplayTracker;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.mpub.v */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/v.class */
public abstract class AbstractC8661v {

    /* renamed from: com.moat.analytics.mobile.mpub.v$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/v$a.class */
    public static class C8662a extends MoatAnalytics {
        @Override // com.moat.analytics.mobile.mpub.MoatAnalytics
        public void prepareNativeDisplayTracking(String str) {
        }

        @Override // com.moat.analytics.mobile.mpub.MoatAnalytics
        public void start(Application application) {
        }

        @Override // com.moat.analytics.mobile.mpub.MoatAnalytics
        public void start(MoatOptions moatOptions, Application application) {
        }
    }

    /* renamed from: com.moat.analytics.mobile.mpub.v$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/v$b.class */
    public static class C8663b extends MoatFactory {
        @Override // com.moat.analytics.mobile.mpub.MoatFactory
        public <T> T createCustomTracker(MoatPlugin<T> moatPlugin) {
            return moatPlugin.mo5000b();
        }

        @Override // com.moat.analytics.mobile.mpub.MoatFactory
        public NativeDisplayTracker createNativeDisplayTracker(View view, Map<String, String> map) {
            return new C8664c();
        }

        @Override // com.moat.analytics.mobile.mpub.MoatFactory
        public NativeVideoTracker createNativeVideoTracker(String str) {
            return new C8665d();
        }

        @Override // com.moat.analytics.mobile.mpub.MoatFactory
        public WebAdTracker createWebAdTracker(ViewGroup viewGroup) {
            return new C8666e();
        }

        @Override // com.moat.analytics.mobile.mpub.MoatFactory
        public WebAdTracker createWebAdTracker(WebView webView) {
            return new C8666e();
        }
    }

    /* renamed from: com.moat.analytics.mobile.mpub.v$c */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/v$c.class */
    public static class C8664c implements NativeDisplayTracker {
        @Override // com.moat.analytics.mobile.mpub.NativeDisplayTracker
        public void removeListener() {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeDisplayTracker
        public void reportUserInteractionEvent(NativeDisplayTracker.MoatUserInteractionType moatUserInteractionType) {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeDisplayTracker
        public void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeDisplayTracker
        public void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeDisplayTracker
        public void startTracking() {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeDisplayTracker
        public void stopTracking() {
        }
    }

    /* renamed from: com.moat.analytics.mobile.mpub.v$d */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/v$d.class */
    public static class C8665d implements NativeVideoTracker {
        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public void changeTargetView(View view) {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public void dispatchEvent(MoatAdEvent moatAdEvent) {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public void removeListener() {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public void removeVideoListener() {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public void setPlayerVolume(Double d) {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public void setVideoListener(VideoTrackerListener videoTrackerListener) {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public void stopTracking() {
        }

        @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
        public boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
            return false;
        }
    }

    /* renamed from: com.moat.analytics.mobile.mpub.v$e */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/v$e.class */
    public static class C8666e implements WebAdTracker {
        @Override // com.moat.analytics.mobile.mpub.WebAdTracker
        public void removeListener() {
        }

        @Override // com.moat.analytics.mobile.mpub.WebAdTracker
        public void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.mpub.WebAdTracker
        public void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.mpub.WebAdTracker
        public void startTracking() {
        }

        @Override // com.moat.analytics.mobile.mpub.WebAdTracker
        public void stopTracking() {
        }
    }
}
