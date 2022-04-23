package com.verizon.ads.support;

import android.content.Context;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.Logger;
import com.verizon.ads.RuleComponent;
import com.verizon.ads.VideoPlayer;
import com.verizon.ads.VideoPlayerView;
import com.verizon.ads.utils.ThreadUtils;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/VideoViewabilityRuleComponent.class */
public class VideoViewabilityRuleComponent extends ViewabilityWatcherRule implements RuleComponent, VideoPlayer.VideoPlayerListener {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35625a = Logger.getInstance(VideoViewabilityRuleComponent.class);

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f35626b;

    /* renamed from: c  reason: collision with root package name */
    private final String f35627c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f35628d;
    private RuleComponent.RuleListener f;
    private float g;
    private int h;
    private boolean i = false;
    private boolean j = false;
    private boolean e = false;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/VideoViewabilityRuleComponent$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (Logger.isLogLevelEnabled(3)) {
                VideoViewabilityRuleComponent.f35625a.d(String.format("Creating VideoViewabilityRuleComponent with ruleInfo: %s", jSONObject));
            }
            if (jSONObject == null) {
                VideoViewabilityRuleComponent.f35625a.e("ruleInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof VideoPlayerView) || !(objArr[1] instanceof RuleComponent.RuleListener)) {
                VideoViewabilityRuleComponent.f35625a.e("Call to newInstance requires VideoPlayerView and RuleListener");
                return null;
            } else {
                VideoPlayerView videoPlayerView = (VideoPlayerView) objArr[0];
                RuleComponent.RuleListener ruleListener = (RuleComponent.RuleListener) objArr[1];
                JSONObject optJSONObject = jSONObject.optJSONObject("data");
                if (optJSONObject == null) {
                    VideoViewabilityRuleComponent.f35625a.e("data in ruleInfo is either missing or not a dictionary");
                    return null;
                }
                try {
                    String string = optJSONObject.getString("eventId");
                    int i = optJSONObject.getInt("percentage");
                    int i2 = optJSONObject.getInt(VastIconXmlManager.DURATION);
                    boolean z = optJSONObject.getBoolean("continuous");
                    boolean z2 = optJSONObject.getBoolean("audio");
                    if (i < 0 || i > 100) {
                        throw new Exception("Percentage must be >= 0 and <= 100");
                    } else if (i2 < 0 || i2 > 15000) {
                        throw new Exception("Duration must be >= 0 and <= 15000");
                    } else {
                        VideoViewabilityRuleComponent videoViewabilityRuleComponent = new VideoViewabilityRuleComponent(videoPlayerView, ruleListener, i, i2, z, z2, string, optJSONObject.has("eventArgs") ? ViewabilityWatcherRule.convertJSONToMap(optJSONObject.getJSONObject("eventArgs")) : null);
                        if (Logger.isLogLevelEnabled(3)) {
                            VideoViewabilityRuleComponent.f35625a.d(String.format("Rule created %s", videoViewabilityRuleComponent));
                        }
                        return videoViewabilityRuleComponent;
                    }
                } catch (Exception e) {
                    VideoViewabilityRuleComponent.f35625a.e(String.format("Error creating VideoViewabilityRuleComponent with ruleInfo: %s", jSONObject), e);
                    return null;
                }
            }
        }
    }

    protected VideoViewabilityRuleComponent(final VideoPlayerView videoPlayerView, RuleComponent.RuleListener ruleListener, int i, int i2, boolean z, final boolean z2, String str, Map<String, Object> map) {
        super(videoPlayerView, i, i2, z);
        this.f = ruleListener;
        this.f35627c = str;
        this.f35626b = map;
        this.f35628d = z2;
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM
            @Override // java.lang.Runnable
            public final void run() {
                VideoViewabilityRuleComponent.this.a(videoPlayerView, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(VideoPlayer videoPlayer) {
        if (this.i) {
            this.h = 0;
            this.i = false;
        } else {
            this.h = Math.max(videoPlayer.getCurrentPosition(), 0);
        }
        if (!this.j) {
            j();
        } else {
            this.j = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(VideoPlayerView videoPlayerView, boolean z) {
        VideoPlayer videoPlayer = videoPlayerView.getVideoPlayer();
        if (videoPlayer != null) {
            this.h = Math.max(videoPlayer.getCurrentPosition(), 0);
            if (z) {
                this.g = videoPlayer.getVolume();
            }
            videoPlayer.registerListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z) {
        if (z) {
            j();
        } else {
            k();
        }
    }

    private void n() {
        VideoPlayer videoPlayer;
        View f = f();
        if (f != null && (videoPlayer = ((VideoPlayerView) f).getVideoPlayer()) != null) {
            videoPlayer.unregisterListener(this);
        }
    }

    private boolean o() {
        return this.g > BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    protected final boolean a() {
        if (g()) {
            return (!this.f35628d || o()) && !this.i;
        }
        return false;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    protected final long b() {
        return this.h;
    }

    @Override // com.verizon.ads.RuleComponent
    public void fire() {
        if (!ThreadUtils.isUiThread()) {
            f35625a.e("Must be on the UI thread to fire rule");
        } else if (this.e) {
            f35625a.d("Rule has already fired");
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f35625a.d(String.format("Firing rule: %s", this));
            }
            this.e = true;
            n();
            k();
            i();
            RuleComponent.RuleListener ruleListener = this.f;
            if (ruleListener != null) {
                ruleListener.onRuleFired(this);
            }
        }
    }

    @Override // com.verizon.ads.RuleComponent
    public Map<String, Object> getEventArgs() {
        return this.f35626b;
    }

    @Override // com.verizon.ads.RuleComponent
    public String getEventId() {
        return this.f35627c;
    }

    @Override // com.verizon.ads.RuleComponent
    public boolean hasFired() {
        return this.e;
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onClick(VideoPlayer videoPlayer) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onComplete(VideoPlayer videoPlayer) {
        this.i = true;
        ThreadUtils.runOnUiThread(new _$$Lambda$6Na3xQMKApfDjtps7z2MqyT_2FI(this));
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onError(VideoPlayer videoPlayer) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onLoaded(VideoPlayer videoPlayer) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPaused(VideoPlayer videoPlayer) {
        this.j = true;
        ThreadUtils.runOnUiThread(new _$$Lambda$6Na3xQMKApfDjtps7z2MqyT_2FI(this));
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPlay(final VideoPlayer videoPlayer) {
        f35625a.d("video is playing.");
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$VideoViewabilityRuleComponent$AYQIe4iBLKUayq3Peo4mzw9ir9E
            @Override // java.lang.Runnable
            public final void run() {
                VideoViewabilityRuleComponent.this.a(videoPlayer);
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onProgress(VideoPlayer videoPlayer, int i) {
        if (i > this.h) {
            this.h = Math.max(i, 0);
            if (l() && m() >= h()) {
                ThreadUtils.runOnUiThread(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$lc3wHZsTSJApNWzsjID3fOm19OM
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoViewabilityRuleComponent.this.fire();
                    }
                });
            }
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onReady(VideoPlayer videoPlayer) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onSeekCompleted(VideoPlayer videoPlayer) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onUnloaded(VideoPlayer videoPlayer) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVideoSizeChanged(int i, int i2) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVolumeChanged(VideoPlayer videoPlayer, float f) {
        if (this.f35628d) {
            if (Logger.isLogLevelEnabled(3)) {
                f35625a.d(String.format("video player volume changed to <%f>", Float.valueOf(f)));
            }
            boolean o = o();
            this.g = f;
            final boolean o2 = o();
            if (o != o2) {
                ThreadUtils.runOnUiThread(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$VideoViewabilityRuleComponent$BQnW5NB4N2_JSsrULpk_MHTCwR8
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoViewabilityRuleComponent.this.a(o2);
                    }
                });
            }
        }
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule, com.verizon.ads.RuleComponent, com.verizon.ads.Component
    public void release() {
        f35625a.d("Releasing");
        k();
        n();
        this.f = null;
        super.release();
    }

    @Override // com.verizon.ads.RuleComponent
    public void reset() {
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    public String toString() {
        return String.format("VideoViewabilityRuleComponent{eventId: %s, audioRequired: %s, %s}", this.f35627c, Boolean.valueOf(this.f35628d), super.toString());
    }
}
