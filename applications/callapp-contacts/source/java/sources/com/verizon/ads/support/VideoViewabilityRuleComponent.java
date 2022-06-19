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

    /* renamed from: a */
    private static final Logger f61702a = Logger.getInstance(VideoViewabilityRuleComponent.class);

    /* renamed from: b */
    private final Map<String, Object> f61703b;

    /* renamed from: c */
    private final String f61704c;

    /* renamed from: d */
    private final boolean f61705d;

    /* renamed from: f */
    private RuleComponent.RuleListener f61707f;

    /* renamed from: g */
    private float f61708g;

    /* renamed from: h */
    private int f61709h;

    /* renamed from: i */
    private boolean f61710i = false;

    /* renamed from: j */
    private boolean f61711j = false;

    /* renamed from: e */
    private boolean f61706e = false;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/VideoViewabilityRuleComponent$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (Logger.isLogLevelEnabled(3)) {
                VideoViewabilityRuleComponent.f61702a.m5567d(String.format("Creating VideoViewabilityRuleComponent with ruleInfo: %s", jSONObject));
            }
            if (jSONObject == null) {
                VideoViewabilityRuleComponent.f61702a.m5565e("ruleInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof VideoPlayerView) || !(objArr[1] instanceof RuleComponent.RuleListener)) {
                VideoViewabilityRuleComponent.f61702a.m5565e("Call to newInstance requires VideoPlayerView and RuleListener");
                return null;
            } else {
                VideoPlayerView videoPlayerView = (VideoPlayerView) objArr[0];
                RuleComponent.RuleListener ruleListener = (RuleComponent.RuleListener) objArr[1];
                JSONObject optJSONObject = jSONObject.optJSONObject("data");
                if (optJSONObject == null) {
                    VideoViewabilityRuleComponent.f61702a.m5565e("data in ruleInfo is either missing or not a dictionary");
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
                    }
                    if (i2 < 0 || i2 > 15000) {
                        throw new Exception("Duration must be >= 0 and <= 15000");
                    }
                    VideoViewabilityRuleComponent videoViewabilityRuleComponent = new VideoViewabilityRuleComponent(videoPlayerView, ruleListener, i, i2, z, z2, string, optJSONObject.has("eventArgs") ? ViewabilityWatcherRule.convertJSONToMap(optJSONObject.getJSONObject("eventArgs")) : null);
                    if (Logger.isLogLevelEnabled(3)) {
                        VideoViewabilityRuleComponent.f61702a.m5567d(String.format("Rule created %s", videoViewabilityRuleComponent));
                    }
                    return videoViewabilityRuleComponent;
                } catch (Exception e) {
                    VideoViewabilityRuleComponent.f61702a.m5564e(String.format("Error creating VideoViewabilityRuleComponent with ruleInfo: %s", jSONObject), e);
                    return null;
                }
            }
        }
    }

    protected VideoViewabilityRuleComponent(final VideoPlayerView videoPlayerView, RuleComponent.RuleListener ruleListener, int i, int i2, boolean z, final boolean z2, String str, Map<String, Object> map) {
        super(videoPlayerView, i, i2, z);
        this.f61707f = ruleListener;
        this.f61704c = str;
        this.f61703b = map;
        this.f61705d = z2;
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$VideoViewabilityRuleComponent$cHvNk4kMBsHoZ4RrDA7luSMObSM
            @Override // java.lang.Runnable
            public final void run() {
                VideoViewabilityRuleComponent.this.m5337a(videoPlayerView, z2);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m5338a(VideoPlayer videoPlayer) {
        if (this.f61710i) {
            this.f61709h = 0;
            this.f61710i = false;
        } else {
            this.f61709h = Math.max(videoPlayer.getCurrentPosition(), 0);
        }
        if (!this.f61711j) {
            m5323j();
        } else {
            this.f61711j = false;
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5337a(VideoPlayerView videoPlayerView, boolean z) {
        VideoPlayer videoPlayer = videoPlayerView.getVideoPlayer();
        if (videoPlayer != null) {
            this.f61709h = Math.max(videoPlayer.getCurrentPosition(), 0);
            if (z) {
                this.f61708g = videoPlayer.getVolume();
            }
            videoPlayer.registerListener(this);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5336a(boolean z) {
        if (z) {
            m5323j();
        } else {
            m5322k();
        }
    }

    /* renamed from: n */
    private void m5334n() {
        VideoPlayer videoPlayer;
        View f = m5327f();
        if (f == null || (videoPlayer = ((VideoPlayerView) f).getVideoPlayer()) == null) {
            return;
        }
        videoPlayer.unregisterListener(this);
    }

    /* renamed from: o */
    private boolean m5333o() {
        return this.f61708g > BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    /* renamed from: a */
    protected final boolean mo5332a() {
        if (m5326g()) {
            return (!this.f61705d || m5333o()) && !this.f61710i;
        }
        return false;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    /* renamed from: b */
    protected final long mo5331b() {
        return this.f61709h;
    }

    @Override // com.verizon.ads.RuleComponent
    public void fire() {
        if (!ThreadUtils.isUiThread()) {
            f61702a.m5565e("Must be on the UI thread to fire rule");
        } else if (this.f61706e) {
            f61702a.m5567d("Rule has already fired");
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f61702a.m5567d(String.format("Firing rule: %s", this));
            }
            this.f61706e = true;
            m5334n();
            m5322k();
            m5324i();
            RuleComponent.RuleListener ruleListener = this.f61707f;
            if (ruleListener == null) {
                return;
            }
            ruleListener.onRuleFired(this);
        }
    }

    @Override // com.verizon.ads.RuleComponent
    public Map<String, Object> getEventArgs() {
        return this.f61703b;
    }

    @Override // com.verizon.ads.RuleComponent
    public String getEventId() {
        return this.f61704c;
    }

    @Override // com.verizon.ads.RuleComponent
    public boolean hasFired() {
        return this.f61706e;
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onClick(VideoPlayer videoPlayer) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onComplete(VideoPlayer videoPlayer) {
        this.f61710i = true;
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
        this.f61711j = true;
        ThreadUtils.runOnUiThread(new _$$Lambda$6Na3xQMKApfDjtps7z2MqyT_2FI(this));
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPlay(final VideoPlayer videoPlayer) {
        f61702a.m5567d("video is playing.");
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$VideoViewabilityRuleComponent$AYQIe4iBLKUayq3Peo4mzw9ir9E
            @Override // java.lang.Runnable
            public final void run() {
                VideoViewabilityRuleComponent.this.m5338a(videoPlayer);
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onProgress(VideoPlayer videoPlayer, int i) {
        if (i > this.f61709h) {
            this.f61709h = Math.max(i, 0);
            if (!m5321l() || m5320m() < m5325h()) {
                return;
            }
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$lc3wHZsTSJApNWzsjID3fOm19OM
                @Override // java.lang.Runnable
                public final void run() {
                    VideoViewabilityRuleComponent.this.fire();
                }
            });
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
        if (!this.f61705d) {
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61702a.m5567d(String.format("video player volume changed to <%f>", Float.valueOf(f)));
        }
        boolean m5333o = m5333o();
        this.f61708g = f;
        final boolean m5333o2 = m5333o();
        if (m5333o == m5333o2) {
            return;
        }
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$VideoViewabilityRuleComponent$BQnW5NB4N2_JSsrULpk_MHTCwR8
            @Override // java.lang.Runnable
            public final void run() {
                VideoViewabilityRuleComponent.this.m5336a(m5333o2);
            }
        });
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule, com.verizon.ads.RuleComponent, com.verizon.ads.Component
    public void release() {
        f61702a.m5567d("Releasing");
        m5322k();
        m5334n();
        this.f61707f = null;
        super.release();
    }

    @Override // com.verizon.ads.RuleComponent
    public void reset() {
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    public String toString() {
        return String.format("VideoViewabilityRuleComponent{eventId: %s, audioRequired: %s, %s}", this.f61704c, Boolean.valueOf(this.f61705d), super.toString());
    }
}
