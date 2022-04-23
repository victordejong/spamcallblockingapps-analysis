package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.verizonmedia.adsession.a.a;
import com.iab.omid.library.verizonmedia.adsession.a.b;
import com.iab.omid.library.verizonmedia.adsession.a.c;
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
    private final String g;
    private WeakReference<View> i;
    private WeakReference<View> j;
    private VideoPlayer k;
    private ViewabilityWatcher l;
    private a m;
    private com.iab.omid.library.verizonmedia.adsession.a n;
    private int o;
    private int p;
    private int q;
    private FileStorageCache r;
    private boolean t;
    private boolean v;

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35755a = Logger.getInstance(VerizonNativeVideoComponent.class);
    public static final String WHO = VerizonNativeVideoComponent.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f35756b = false;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f35757c = false;
    private volatile int e = 0;
    private final VideoViewability f = new VideoViewability();
    private final List<Runnable> h = new ArrayList();
    private float u = BitmapDescriptorFactory.HUE_RED;
    private int s = Configuration.getInt("com.verizon.ads.verizonnativecontroller.video", "autoplayThresholdPercentage", 10);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent$Factory.class */
    static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (jSONObject == null) {
                VerizonNativeVideoComponent.f35755a.e("componentInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof AdSession) || !(objArr[1] instanceof String)) {
                VerizonNativeVideoComponent.f35755a.e("Call to newInstance requires AdSession, component ID and SurfaceView");
                return null;
            } else {
                AdSession adSession = (AdSession) objArr[0];
                String str = (String) objArr[1];
                try {
                    String string = jSONObject.getString("contentType");
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    return new VerizonNativeVideoComponent(adSession, str, string, jSONObject, jSONObject2.getString("url"), jSONObject2.getInt("width"), jSONObject2.getInt("height"), jSONObject2.optBoolean("autoplay", true));
                } catch (JSONException e) {
                    VerizonNativeVideoComponent.f35755a.e("Error occurred parsing json for width, height and asset", e);
                    return null;
                }
            }
        }
    }

    VerizonNativeVideoComponent(AdSession adSession, String str, String str2, JSONObject jSONObject, String str3, int i, int i2, boolean z) {
        super(adSession, str, str2, jSONObject);
        this.g = str3;
        this.p = i;
        this.q = i2;
        this.v = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final float f) {
        a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$9Sp3T7pB9KFK8z9Yow1ODiAJMng
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.b(f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        this.u = getVolume();
        if (i == 1) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$3ldp_j9TnSLBKa_4DGhsq3iDiCQ
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.p();
                }
            });
        } else if (i == 2) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$_trJa8FVMU4dRn8tCE70usv6vIs
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.o();
                }
            });
        } else if (i == 3) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$9IZlep_Q_Z4Oob7BX7RTlr8y544
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.n();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(VideoPlayer videoPlayer) {
        this.o = videoPlayer.getDuration();
        a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$vnW_V8C_tu93t8twFjldZqDaP4s
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.a();
            }
        });
    }

    private void a(Runnable runnable) {
        if (this.m != null) {
            runnable.run();
        } else {
            this.h.add(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(float f) {
        a aVar = this.m;
        if (aVar != null) {
            try {
                aVar.a(f);
                f35755a.d("Fired OMSDK volume change event.");
            } catch (Throwable th) {
                f35755a.e("Error occurred firing OMSDK volume change event.", th);
            }
        }
    }

    private void b(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(VerizonNativeComponent.MACROS_KEY, j());
        if (Logger.isLogLevelEnabled(3)) {
            f35755a.d(String.format("Firing video viewability event '%s' with args %s", str, hashMap));
        }
        View m = m();
        if (m != null) {
            a(m.getContext(), str, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        a(view.getContext(), VerizonNativeComponent.TAP_EVENT, (Map<String, Object>) null);
    }

    private Map<String, String> j() {
        HashMap hashMap = new HashMap();
        String str = "0";
        hashMap.put("V_SKIP_AVAIL", "0");
        hashMap.put("V_AUTOPLAYED", this.v ? "1" : "0");
        hashMap.put("V_EXPANDED", "0");
        String str2 = "2";
        hashMap.put("V_VIEW_INFO", l() ? "1" : "2");
        if (k()) {
            str2 = "1";
        }
        hashMap.put("V_AUD_INFO", str2);
        View m = m();
        if (m != null) {
            hashMap.put("V_PLAYER_HEIGHT", String.valueOf(m.getHeight()));
            hashMap.put("V_PLAYER_WIDTH", String.valueOf(m.getWidth()));
        }
        hashMap.put("V_AUD_TIME_INVIEW_100", String.valueOf(this.f.f35760c));
        hashMap.put("V_TIME_INVIEW_50", String.valueOf(this.f.f35761d));
        hashMap.put("V_TIME_INVIEW_50_MAX_CONTINUOUS", String.valueOf(this.f.g));
        if (this.f.e > Math.min(this.o / 2, 15000)) {
            str = "1";
        }
        hashMap.put("V_IS_INVIEW_100_HALFTIME", str);
        return hashMap;
    }

    private boolean k() {
        return this.u > BitmapDescriptorFactory.HUE_RED;
    }

    private boolean l() {
        ViewabilityWatcher viewabilityWatcher = this.l;
        return viewabilityWatcher != null && viewabilityWatcher.exposedPercentage >= 50.0f;
    }

    private View m() {
        WeakReference<View> weakReference = this.i;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        b(VIDEO_THIRD_QUARTILE_EVENT);
        a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$Sr_2dE8lttak0GBn1wyKc_qJwB4
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.h();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        b(VIDEO_MIDPOINT_EVENT);
        a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$KfllJ7WY4PoSd19Q0_AUCSYKQcU
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.g();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        b(VIDEO_FIRST_QUARTILE_EVENT);
        a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$ehvkHeDaqOEP0vRIfKmBfnBqeTA
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        for (Runnable runnable : this.h) {
            runnable.run();
        }
        this.h.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        b(VIDEO_COMPLETE_EVENT);
        a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$RYtKTDKv2fMls7agMmBrlFM996I
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.e();
            }
        });
        this.t = true;
        this.e = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        this.f35757c = true;
        VideoViewability videoViewability = this.f;
        VideoViewability.f35758a.d("Pausing video viewability tracking");
        videoViewability.f = 0;
        a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$shSbEoRskbt1Kud_OXZQWMctq1w
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        if (!this.f35756b || this.t) {
            VideoViewability videoViewability = this.f;
            VideoViewability.f35758a.d("Resetting video viewability tracking");
            videoViewability.f35759b = 0;
            videoViewability.f35760c = 0;
            videoViewability.f35761d = 0;
            videoViewability.e = 0;
            videoViewability.f = 0;
            videoViewability.g = 0;
            b(VIDEO_START_EVENT);
            this.e = 0;
        }
        this.f35756b = true;
        this.t = false;
        if (this.f35757c) {
            a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$Z7xG4GUtOmlexiI6dXCAUJb2zK8
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.b();
                }
            });
            this.f35757c = false;
            return;
        }
        a(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$x3A2TfrN1JZz96Vlo0UScalXhCs
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent
    public final Map<String, String> a(Map<String, Object> map) {
        Map<String, String> j = j();
        Map<String, String> a2 = super.a(map);
        if (a2 != null) {
            j.putAll(a2);
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.n != null) {
            try {
                this.n.a(c.a(BitmapDescriptorFactory.HUE_RED, false, b.STANDALONE));
                f35755a.d("Fired OMSDK loaded event.");
            } catch (Throwable th) {
                f35755a.e("Error recording load event with OMSDK.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a aVar = this.m;
        if (aVar != null) {
            try {
                aVar.f();
                f35755a.d("Fired OMSDK resume event.");
            } catch (Throwable th) {
                f35755a.e("Error occurred firing OMSDK resume event.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        VideoPlayer videoPlayer;
        a aVar = this.m;
        if (aVar != null && (videoPlayer = this.k) != null) {
            try {
                aVar.a(videoPlayer.getDuration(), this.u);
                f35755a.d("Fired OMSDK start event.");
            } catch (Throwable th) {
                f35755a.e("Error occurred firing OMSDK start event.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        a aVar = this.m;
        if (aVar != null) {
            try {
                aVar.e();
                f35755a.d("Fired OMSDK pause event.");
            } catch (Throwable th) {
                f35755a.e("Error occurred firing OMSDK pause event.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        a aVar = this.m;
        if (aVar != null) {
            try {
                aVar.d();
                f35755a.d("Fired OMSDK complete event.");
            } catch (Throwable th) {
                f35755a.e("Error occurred firing OMSDK complete event.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        a aVar = this.m;
        if (aVar != null) {
            try {
                aVar.a();
                f35755a.d("Fired OMSDK firstQuartile event.");
            } catch (Throwable th) {
                f35755a.e("Error occurred firing OMSDK firstQuartile event.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        a aVar = this.m;
        if (aVar != null) {
            try {
                aVar.b();
                f35755a.d("Fired OMSDK midpoint event.");
            } catch (Throwable th) {
                f35755a.e("Error occurred firing OMSDK midpoint event.", th);
            }
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeMediaComponent
    public int getHeight() {
        int i = this.q;
        int i2 = i;
        if (i == -1) {
            VideoPlayer videoPlayer = this.k;
            i2 = i;
            if (videoPlayer != null) {
                i2 = videoPlayer.getVideoHeight();
            }
        }
        return i2;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeVideoComponent
    public VideoPlayer getVideoPlayer(Context context) {
        if (this.k == null) {
            Component component = ComponentRegistry.getComponent("video/player-v2", context, null, new Object[0]);
            if (component instanceof VideoPlayer) {
                this.k = (VideoPlayer) component;
            }
        }
        return this.k;
    }

    @Override // com.verizon.ads.ViewComponent
    public View getView(Context context) {
        View view;
        if (!ThreadUtils.isUiThread()) {
            f35755a.e("Must be on the UI thread to get the view");
            return null;
        }
        WeakReference<View> weakReference = this.j;
        if (weakReference != null && (view = weakReference.get()) != null) {
            return view;
        }
        if (context == null) {
            f35755a.e("Context is null");
            return null;
        }
        VideoPlayerView videoPlayerView = new VideoPlayerView(context);
        videoPlayerView.setReplayButtonEnabled(true);
        videoPlayerView.setMuteToggleEnabled(true);
        videoPlayerView.setPlayButtonEnabled(true ^ this.v);
        ErrorInfo prepareView = prepareView(videoPlayerView);
        if (prepareView == null) {
            return videoPlayerView;
        }
        f35755a.e(prepareView.toString());
        return null;
    }

    public float getVolume() {
        VideoPlayer videoPlayer = this.k;
        if (videoPlayer != null) {
            return videoPlayer.getVolume();
        }
        return -1.0f;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeMediaComponent
    public int getWidth() {
        int i = this.p;
        int i2 = i;
        if (i == -1) {
            VideoPlayer videoPlayer = this.k;
            i2 = i;
            if (videoPlayer != null) {
                i2 = videoPlayer.getVideoWidth();
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        a aVar = this.m;
        if (aVar != null) {
            try {
                aVar.c();
                f35755a.d("Fired OMSDK thirdQuartile event.");
            } catch (Throwable th) {
                f35755a.e("Error occurred firing OMSDK thirdQuartile event.", th);
            }
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeViewComponent
    public boolean isDescendantOf(ViewGroup viewGroup) {
        return a(viewGroup, m());
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onClick(VideoPlayer videoPlayer) {
        final View m = m();
        if (m != null) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$uCK8KBN_HRKd2rl5F_uV9Mgk83g
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.e(m);
                }
            });
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onComplete(VideoPlayer videoPlayer) {
        f35755a.d("video playback completed.");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$EpFsdZXi_hnH9j0fSX3hOXZh6vM
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.r();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onError(VideoPlayer videoPlayer) {
        f35755a.e("video playback error.");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onLoaded(final VideoPlayer videoPlayer) {
        f35755a.d("video asset loaded.");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$pGGsNWF2jLy66yBtix0y_ekgDvM
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.a(videoPlayer);
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPaused(VideoPlayer videoPlayer) {
        f35755a.d("video is paused.");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$DeYyOnpn_oUnM_ctgmhLiLlIUkE
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.s();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPlay(VideoPlayer videoPlayer) {
        f35755a.d("video is playing.");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$L5u5VHgxrwhWeyks1XjOG0eyJGM
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.t();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onProgress(VideoPlayer videoPlayer, int i) {
        if (!this.t) {
            VideoViewability videoViewability = this.f;
            float f = this.l.exposedPercentage;
            boolean k = k();
            if (i > videoViewability.f35759b) {
                int i2 = i - videoViewability.f35759b;
                videoViewability.f35759b = i;
                if (f >= 50.0f) {
                    videoViewability.f35761d += i2;
                    videoViewability.f += i2;
                    videoViewability.g = Math.max(videoViewability.g, videoViewability.f);
                    if (f >= 100.0f) {
                        videoViewability.e += i2;
                        if (k) {
                            videoViewability.f35760c += i2;
                        }
                    }
                } else {
                    videoViewability.f = 0;
                }
            }
            final int i3 = (int) (i / (this.o / 4.0f));
            if (i3 > this.e) {
                this.e = i3;
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$_LXSDepRk3k2oRULVSU7E6drUoE
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonNativeVideoComponent.this.a(i3);
                    }
                });
            }
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onReady(VideoPlayer videoPlayer) {
        f35755a.d("video is ready for playback.");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onSeekCompleted(VideoPlayer videoPlayer) {
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onUnloaded(VideoPlayer videoPlayer) {
        f35755a.d("video asset unloaded.");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVideoSizeChanged(int i, int i2) {
        f35755a.d(String.format("video size changed new width = %d, new height = %d", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
    public void onViewableChanged(boolean z) {
        if (this.t || this.k == null) {
            return;
        }
        if (!z || (!this.v && !this.f35756b)) {
            this.k.pause();
        } else {
            this.k.play();
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVolumeChanged(VideoPlayer videoPlayer, final float f) {
        if (Logger.isLogLevelEnabled(3)) {
            f35755a.d(String.format("video player volume changed to <%f>", Float.valueOf(f)));
        }
        this.u = f;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$WlS6iOUi96QLvGyQ3U5tOLAJZwY
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeVideoComponent.this.a(f);
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
        this.r = fileStorageCache;
        fileStorageCache.queueFileForDownload(this.g);
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent, com.verizon.ads.Component
    public void release() {
        f35755a.d("Releasing video component");
        ViewabilityWatcher viewabilityWatcher = this.l;
        if (viewabilityWatcher != null) {
            viewabilityWatcher.stopWatching();
        }
        VideoPlayer videoPlayer = this.k;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.k.unload();
        }
        super.release();
    }

    public void setAdEvents(com.iab.omid.library.verizonmedia.adsession.a aVar) {
        f35755a.d("Setting ad events for component");
        this.n = aVar;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeVideoComponent
    public void setAutoPlay(boolean z) {
        if (Logger.isLogLevelEnabled(3)) {
            f35755a.d(String.format("Setting autoPlay to %s", Boolean.valueOf(z)));
        }
        this.v = z;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeVideoComponent
    public void setAutoplayThresholdPercentage(int i) {
        if (Logger.isLogLevelEnabled(3)) {
            f35755a.d(String.format("Setting autoPlay threshold to %d", Integer.valueOf(i)));
        }
        this.s = i;
        ViewabilityWatcher viewabilityWatcher = this.l;
        if (viewabilityWatcher != null) {
            viewabilityWatcher.setMinViewabilityPercent(i);
        }
    }

    public void setVideoEvents(a aVar) {
        Logger logger = f35755a;
        logger.d("Setting video events for component");
        this.m = aVar;
        if (aVar != null) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeVideoComponent$WJB7r9JdvMFBFhZZIVtjyw3zo40
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeVideoComponent.this.q();
                }
            });
        } else {
            logger.i("VideoEvents is null; OMSDK video events tracking is suspended");
        }
    }
}
