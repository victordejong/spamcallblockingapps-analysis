package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.verizonmedia.adsession.C16479a;
import com.iab.omid.library.verizonmedia.adsession.p447a.C16480a;
import com.iab.omid.library.verizonmedia.adsession.p447a.C16482c;
import com.iab.omid.library.verizonmedia.adsession.p447a.EnumC16481b;
import com.verizon.ads.AdSession;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.ComponentRegistry;
import com.verizon.ads.Configuration;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.VideoPlayer;
import com.verizon.ads.VideoPlayerView;
import com.verizon.ads.support.FileStorageCache;
import com.verizon.ads.support.utils.ViewabilityWatcher;
import com.verizon.ads.utils.ThreadUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent.class */
public class VerizonNativeVideoComponent extends VerizonNativeComponent implements VideoPlayer.VideoPlayerListener, ViewabilityWatcher.ViewabilityListener, NativeVideoComponent {
    public static final int ERROR_INVALID_VIEW_CLASS = -2;
    public static final int ERROR_NOT_UI_THREAD = -3;
    public static final int ERROR_VIDEO_PLAYER_NOT_REGISTERED = -4;
    public static final int ERROR_VIEW_ALREADY_EXISTS = -1;
    public static final String VIDEO_COMPLETE_EVENT = "videoComplete";
    public static final String VIDEO_FIRST_QUARTILE_EVENT = "videoFirstQuartile";
    public static final String VIDEO_MIDPOINT_EVENT = "videoMidpoint";
    public static final String VIDEO_START_EVENT = "videoStart";
    public static final String VIDEO_THIRD_QUARTILE_EVENT = "videoThirdQuartile";

    /* renamed from: g */
    private final String f61948g;

    /* renamed from: i */
    private WeakReference<View> f61950i;

    /* renamed from: j */
    private WeakReference<View> f61951j;

    /* renamed from: k */
    private VideoPlayer f61952k;

    /* renamed from: l */
    private ViewabilityWatcher f61953l;

    /* renamed from: m */
    private C16480a f61954m;

    /* renamed from: n */
    private C16479a f61955n;

    /* renamed from: o */
    private int f61956o;

    /* renamed from: p */
    private int f61957p;

    /* renamed from: q */
    private int f61958q;

    /* renamed from: r */
    private FileStorageCache f61959r;

    /* renamed from: t */
    private boolean f61961t;

    /* renamed from: v */
    private boolean f61963v;

    /* renamed from: a */
    private static final Logger f61943a = Logger.getInstance(VerizonNativeVideoComponent.class);
    public static final String WHO = VerizonNativeVideoComponent.class.getSimpleName();

    /* renamed from: b */
    private volatile boolean f61944b = false;

    /* renamed from: c */
    private volatile boolean f61945c = false;

    /* renamed from: e */
    private volatile int f61946e = 0;

    /* renamed from: f */
    private final VideoViewability f61947f = new VideoViewability();

    /* renamed from: h */
    private final List<Runnable> f61949h = new ArrayList();

    /* renamed from: u */
    private float f61962u = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: s */
    private int f61960s = Configuration.getInt("com.verizon.ads.verizonnativecontroller.video", "autoplayThresholdPercentage", 10);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent$Factory.class */
    static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (jSONObject == null) {
                VerizonNativeVideoComponent.f61943a.m5565e("componentInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof AdSession) || !(objArr[1] instanceof String)) {
                VerizonNativeVideoComponent.f61943a.m5565e("Call to newInstance requires AdSession, component ID and SurfaceView");
                return null;
            } else {
                AdSession adSession = (AdSession) objArr[0];
                String str = (String) objArr[1];
                try {
                    String string = jSONObject.getString("contentType");
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    return new VerizonNativeVideoComponent(adSession, str, string, jSONObject, jSONObject2.getString("url"), jSONObject2.getInt("width"), jSONObject2.getInt("height"), jSONObject2.optBoolean("autoplay", true));
                } catch (JSONException e) {
                    VerizonNativeVideoComponent.f61943a.m5564e("Error occurred parsing json for width, height and asset", e);
                    return null;
                }
            }
        }
    }

    VerizonNativeVideoComponent(AdSession adSession, String str, String str2, JSONObject jSONObject, String str3, int i, int i2, boolean z) {
        super(adSession, str, str2, jSONObject);
        this.f61948g = str3;
        this.f61957p = i;
        this.f61958q = i2;
        this.f61963v = z;
    }

    /* renamed from: a */
    public /* synthetic */ void m5130a(final float f) {
        m5127a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$9Sp3T7pB9KFK8z9Yow1ODiAJMng
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5124b(f);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m5129a(int i) {
        this.f61962u = getVolume();
        if (i == 1) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$3ldp_j9TnSLBKa_4DGhsq3iDiCQ
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.m5108p();
                }
            });
        } else if (i == 2) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$_trJa8FVMU4dRn8tCE70usv6vIs
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.m5109o();
                }
            });
        } else if (i != 3) {
        } else {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$9IZlep_Q_Z4Oob7BX7RTlr8y544
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.m5110n();
                }
            });
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5128a(VideoPlayer videoPlayer) {
        this.f61956o = videoPlayer.getDuration();
        m5127a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$vnW_V8C_tu93t8twFjldZqDaP4s
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5131a();
            }
        });
    }

    /* renamed from: a */
    private void m5127a(Runnable runnable) {
        if (this.f61954m != null) {
            runnable.run();
        } else {
            this.f61949h.add(runnable);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m5124b(float f) {
        C16480a c16480a = this.f61954m;
        if (c16480a != null) {
            try {
                c16480a.m7170a(f);
                f61943a.m5567d("Fired OMSDK volume change event.");
            } catch (Throwable th) {
                f61943a.m5564e("Error occurred firing OMSDK volume change event.", th);
            }
        }
    }

    /* renamed from: b */
    private void m5123b(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(VerizonNativeComponent.MACROS_KEY, m5114j());
        if (Logger.isLogLevelEnabled(3)) {
            f61943a.m5567d(String.format("Firing video viewability event '%s' with args %s", str, hashMap));
        }
        View m5111m = m5111m();
        if (m5111m != null) {
            m5161a(m5111m.getContext(), str, hashMap);
        }
    }

    /* renamed from: e */
    public /* synthetic */ void m5119e(View view) {
        m5161a(view.getContext(), VerizonNativeComponent.TAP_EVENT, (Map<String, Object>) null);
    }

    /* renamed from: j */
    private Map<String, String> m5114j() {
        HashMap hashMap = new HashMap();
        hashMap.put("V_SKIP_AVAIL", "0");
        hashMap.put("V_AUTOPLAYED", this.f61963v ? "1" : "0");
        hashMap.put("V_EXPANDED", "0");
        hashMap.put("V_VIEW_INFO", m5112l() ? "1" : "2");
        boolean z = "2";
        if (m5113k()) {
            z = "1";
        }
        hashMap.put("V_AUD_INFO", z);
        View m5111m = m5111m();
        if (m5111m != null) {
            hashMap.put("V_PLAYER_HEIGHT", String.valueOf(m5111m.getHeight()));
            hashMap.put("V_PLAYER_WIDTH", String.valueOf(m5111m.getWidth()));
        }
        hashMap.put("V_AUD_TIME_INVIEW_100", String.valueOf(this.f61947f.f61966c));
        hashMap.put("V_TIME_INVIEW_50", String.valueOf(this.f61947f.f61967d));
        hashMap.put("V_TIME_INVIEW_50_MAX_CONTINUOUS", String.valueOf(this.f61947f.f61970g));
        boolean z2 = "0";
        if (this.f61947f.f61968e > Math.min(this.f61956o / 2, 15000)) {
            z2 = "1";
        }
        hashMap.put("V_IS_INVIEW_100_HALFTIME", z2);
        return hashMap;
    }

    /* renamed from: k */
    private boolean m5113k() {
        return this.f61962u > BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: l */
    private boolean m5112l() {
        ViewabilityWatcher viewabilityWatcher = this.f61953l;
        return viewabilityWatcher != null && viewabilityWatcher.exposedPercentage >= 50.0f;
    }

    /* renamed from: m */
    private View m5111m() {
        WeakReference<View> weakReference = this.f61950i;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: n */
    public /* synthetic */ void m5110n() {
        m5123b(VIDEO_THIRD_QUARTILE_EVENT);
        m5127a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$Sr_2dE8lttak0GBn1wyKc_qJwB4
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5116h();
            }
        });
    }

    /* renamed from: o */
    public /* synthetic */ void m5109o() {
        m5123b(VIDEO_MIDPOINT_EVENT);
        m5127a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$KfllJ7WY4PoSd19Q0_AUCSYKQcU
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5117g();
            }
        });
    }

    /* renamed from: p */
    public /* synthetic */ void m5108p() {
        m5123b(VIDEO_FIRST_QUARTILE_EVENT);
        m5127a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$ehvkHeDaqOEP0vRIfKmBfnBqeTA
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5118f();
            }
        });
    }

    /* renamed from: q */
    public /* synthetic */ void m5107q() {
        for (Runnable runnable : this.f61949h) {
            runnable.run();
        }
        this.f61949h.clear();
    }

    /* renamed from: r */
    public /* synthetic */ void m5106r() {
        m5123b(VIDEO_COMPLETE_EVENT);
        m5127a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$RYtKTDKv2fMls7agMmBrlFM996I
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5120e();
            }
        });
        this.f61961t = true;
        this.f61946e = 0;
    }

    /* renamed from: s */
    public /* synthetic */ void m5105s() {
        this.f61945c = true;
        VideoViewability videoViewability = this.f61947f;
        VideoViewability.f61964a.m5567d("Pausing video viewability tracking");
        videoViewability.f61969f = 0;
        m5127a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$shSbEoRskbt1Kud_OXZQWMctq1w
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5121d();
            }
        });
    }

    /* renamed from: t */
    public /* synthetic */ void m5104t() {
        if (!this.f61944b || this.f61961t) {
            VideoViewability videoViewability = this.f61947f;
            VideoViewability.f61964a.m5567d("Resetting video viewability tracking");
            videoViewability.f61965b = 0;
            videoViewability.f61966c = 0;
            videoViewability.f61967d = 0;
            videoViewability.f61968e = 0;
            videoViewability.f61969f = 0;
            videoViewability.f61970g = 0;
            m5123b(VIDEO_START_EVENT);
            this.f61946e = 0;
        }
        this.f61944b = true;
        this.f61961t = false;
        if (!this.f61945c) {
            m5127a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$x3A2TfrN1JZz96Vlo0UScalXhCs
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.m5122c();
                }
            });
            return;
        }
        m5127a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$Z7xG4GUtOmlexiI6dXCAUJb2zK8
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5125b();
            }
        });
        this.f61945c = false;
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent
    /* renamed from: a */
    public final Map<String, String> mo5126a(Map<String, Object> map) {
        Map<String, String> m5114j = m5114j();
        Map<String, String> mo5126a = super.mo5126a(map);
        if (mo5126a != null) {
            m5114j.putAll(mo5126a);
        }
        return m5114j;
    }

    /* renamed from: a */
    public void m5131a() {
        if (this.f61955n != null) {
            try {
                this.f61955n.m7174a(C16482c.m7159a(BitmapDescriptorFactory.HUE_RED, false, EnumC16481b.STANDALONE));
                f61943a.m5567d("Fired OMSDK loaded event.");
            } catch (Throwable th) {
                f61943a.m5564e("Error recording load event with OMSDK.", th);
            }
        }
    }

    /* renamed from: b */
    public void m5125b() {
        C16480a c16480a = this.f61954m;
        if (c16480a != null) {
            try {
                c16480a.m7162f();
                f61943a.m5567d("Fired OMSDK resume event.");
            } catch (Throwable th) {
                f61943a.m5564e("Error occurred firing OMSDK resume event.", th);
            }
        }
    }

    /* renamed from: c */
    public void m5122c() {
        VideoPlayer videoPlayer;
        C16480a c16480a = this.f61954m;
        if (c16480a == null || (videoPlayer = this.f61952k) == null) {
            return;
        }
        try {
            c16480a.m7169a(videoPlayer.getDuration(), this.f61962u);
            f61943a.m5567d("Fired OMSDK start event.");
        } catch (Throwable th) {
            f61943a.m5564e("Error occurred firing OMSDK start event.", th);
        }
    }

    /* renamed from: d */
    public void m5121d() {
        C16480a c16480a = this.f61954m;
        if (c16480a != null) {
            try {
                c16480a.m7163e();
                f61943a.m5567d("Fired OMSDK pause event.");
            } catch (Throwable th) {
                f61943a.m5564e("Error occurred firing OMSDK pause event.", th);
            }
        }
    }

    /* renamed from: e */
    public void m5120e() {
        C16480a c16480a = this.f61954m;
        if (c16480a != null) {
            try {
                c16480a.m7164d();
                f61943a.m5567d("Fired OMSDK complete event.");
            } catch (Throwable th) {
                f61943a.m5564e("Error occurred firing OMSDK complete event.", th);
            }
        }
    }

    /* renamed from: f */
    public void m5118f() {
        C16480a c16480a = this.f61954m;
        if (c16480a != null) {
            try {
                c16480a.m7171a();
                f61943a.m5567d("Fired OMSDK firstQuartile event.");
            } catch (Throwable th) {
                f61943a.m5564e("Error occurred firing OMSDK firstQuartile event.", th);
            }
        }
    }

    /* renamed from: g */
    public void m5117g() {
        C16480a c16480a = this.f61954m;
        if (c16480a != null) {
            try {
                c16480a.m7167b();
                f61943a.m5567d("Fired OMSDK midpoint event.");
            } catch (Throwable th) {
                f61943a.m5564e("Error occurred firing OMSDK midpoint event.", th);
            }
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeMediaComponent
    public int getHeight() {
        int i = this.f61958q;
        int i2 = i;
        if (i == -1) {
            VideoPlayer videoPlayer = this.f61952k;
            i2 = i;
            if (videoPlayer != null) {
                i2 = videoPlayer.getVideoHeight();
            }
        }
        return i2;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeVideoComponent
    public VideoPlayer getVideoPlayer(Context context) {
        if (this.f61952k == null) {
            Component component = ComponentRegistry.getComponent("video/player-v2", context, null, new Object[0]);
            if (component instanceof VideoPlayer) {
                this.f61952k = (VideoPlayer) component;
            }
        }
        return this.f61952k;
    }

    @Override // com.verizon.ads.ViewComponent
    public View getView(Context context) {
        View view;
        if (!ThreadUtils.isUiThread()) {
            f61943a.m5565e("Must be on the UI thread to get the view");
            return null;
        }
        WeakReference<View> weakReference = this.f61951j;
        if (weakReference != null && (view = weakReference.get()) != null) {
            return view;
        }
        if (context == null) {
            f61943a.m5565e("Context is null");
            return null;
        }
        VideoPlayerView videoPlayerView = new VideoPlayerView(context);
        videoPlayerView.setReplayButtonEnabled(true);
        videoPlayerView.setMuteToggleEnabled(true);
        videoPlayerView.setPlayButtonEnabled(true ^ this.f61963v);
        ErrorInfo prepareView = prepareView(videoPlayerView);
        if (prepareView == null) {
            return videoPlayerView;
        }
        f61943a.m5565e(prepareView.toString());
        return null;
    }

    public float getVolume() {
        VideoPlayer videoPlayer = this.f61952k;
        if (videoPlayer != null) {
            return videoPlayer.getVolume();
        }
        return -1.0f;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeMediaComponent
    public int getWidth() {
        int i = this.f61957p;
        int i2 = i;
        if (i == -1) {
            VideoPlayer videoPlayer = this.f61952k;
            i2 = i;
            if (videoPlayer != null) {
                i2 = videoPlayer.getVideoWidth();
            }
        }
        return i2;
    }

    /* renamed from: h */
    public void m5116h() {
        C16480a c16480a = this.f61954m;
        if (c16480a != null) {
            try {
                c16480a.m7165c();
                f61943a.m5567d("Fired OMSDK thirdQuartile event.");
            } catch (Throwable th) {
                f61943a.m5564e("Error occurred firing OMSDK thirdQuartile event.", th);
            }
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeViewComponent
    public boolean isDescendantOf(ViewGroup viewGroup) {
        return m5157a(viewGroup, m5111m());
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onClick(VideoPlayer videoPlayer) {
        final View m5111m = m5111m();
        if (m5111m != null) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$uCK8KBN_HRKd2rl5F_uV9Mgk83g
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.m5119e(m5111m);
                }
            });
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onComplete(VideoPlayer videoPlayer) {
        f61943a.m5567d("video playback completed.");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$EpFsdZXi_hnH9j0fSX3hOXZh6vM
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5106r();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onError(VideoPlayer videoPlayer) {
        f61943a.m5565e("video playback error.");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onLoaded(final VideoPlayer videoPlayer) {
        f61943a.m5567d("video asset loaded.");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$pGGsNWF2jLy66yBtix0y_ekgDvM
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5128a(videoPlayer);
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPaused(VideoPlayer videoPlayer) {
        f61943a.m5567d("video is paused.");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$DeYyOnpn_oUnM_ctgmhLiLlIUkE
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5105s();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPlay(VideoPlayer videoPlayer) {
        f61943a.m5567d("video is playing.");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$L5u5VHgxrwhWeyks1XjOG0eyJGM
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5104t();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onProgress(VideoPlayer videoPlayer, int i) {
        if (this.f61961t) {
            return;
        }
        VideoViewability videoViewability = this.f61947f;
        float f = this.f61953l.exposedPercentage;
        boolean m5113k = m5113k();
        if (i > videoViewability.f61965b) {
            int i2 = i - videoViewability.f61965b;
            videoViewability.f61965b = i;
            if (f >= 50.0f) {
                videoViewability.f61967d += i2;
                videoViewability.f61969f += i2;
                videoViewability.f61970g = Math.max(videoViewability.f61970g, videoViewability.f61969f);
                if (f >= 100.0f) {
                    videoViewability.f61968e += i2;
                    if (m5113k) {
                        videoViewability.f61966c += i2;
                    }
                }
            } else {
                videoViewability.f61969f = 0;
            }
        }
        final int i3 = (int) (i / (this.f61956o / 4.0f));
        if (i3 <= this.f61946e) {
            return;
        }
        this.f61946e = i3;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$_LXSDepRk3k2oRULVSU7E6drUoE
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5129a(i3);
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onReady(VideoPlayer videoPlayer) {
        f61943a.m5567d("video is ready for playback.");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onSeekCompleted(VideoPlayer videoPlayer) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onUnloaded(VideoPlayer videoPlayer) {
        f61943a.m5567d("video asset unloaded.");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVideoSizeChanged(int i, int i2) {
        f61943a.m5567d(String.format("video size changed new width = %d, new height = %d", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
    public void onViewableChanged(boolean z) {
        if (!this.f61961t && this.f61952k != null) {
            if (!z || (!this.f61963v && !this.f61944b)) {
                this.f61952k.pause();
            } else {
                this.f61952k.play();
            }
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVolumeChanged(VideoPlayer videoPlayer, final float f) {
        if (Logger.isLogLevelEnabled(3)) {
            f61943a.m5567d(String.format("video player volume changed to <%f>", Float.valueOf(f)));
        }
        this.f61962u = f;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$WlS6iOUi96QLvGyQ3U5tOLAJZwY
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.m5130a(f);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0182  */
    @Override // com.verizon.ads.verizonnativecontroller.NativeViewComponent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.verizon.ads.ErrorInfo prepareView(android.view.View r8) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonnativecontroller.VerizonNativeVideoComponent.prepareView(android.view.View):com.verizon.ads.ErrorInfo");
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void queueFilesForDownload(FileStorageCache fileStorageCache) {
        this.f61959r = fileStorageCache;
        fileStorageCache.queueFileForDownload(this.f61948g);
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent, com.verizon.ads.Component
    public void release() {
        f61943a.m5567d("Releasing video component");
        ViewabilityWatcher viewabilityWatcher = this.f61953l;
        if (viewabilityWatcher != null) {
            viewabilityWatcher.stopWatching();
        }
        VideoPlayer videoPlayer = this.f61952k;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.f61952k.unload();
        }
        super.release();
    }

    public void setAdEvents(C16479a c16479a) {
        f61943a.m5567d("Setting ad events for component");
        this.f61955n = c16479a;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeVideoComponent
    public void setAutoPlay(boolean z) {
        if (Logger.isLogLevelEnabled(3)) {
            f61943a.m5567d(String.format("Setting autoPlay to %s", Boolean.valueOf(z)));
        }
        this.f61963v = z;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeVideoComponent
    public void setAutoplayThresholdPercentage(int i) {
        if (Logger.isLogLevelEnabled(3)) {
            f61943a.m5567d(String.format("Setting autoPlay threshold to %d", Integer.valueOf(i)));
        }
        this.f61960s = i;
        ViewabilityWatcher viewabilityWatcher = this.f61953l;
        if (viewabilityWatcher != null) {
            viewabilityWatcher.setMinViewabilityPercent(i);
        }
    }

    public void setVideoEvents(C16480a c16480a) {
        Logger logger = f61943a;
        logger.m5567d("Setting video events for component");
        this.f61954m = c16480a;
        if (c16480a != null) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$WJB7r9JdvMFBFhZZIVtjyw3zo40
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.m5107q();
                }
            });
        } else {
            logger.m5563i("VideoEvents is null; OMSDK video events tracking is suspended");
        }
    }
}
