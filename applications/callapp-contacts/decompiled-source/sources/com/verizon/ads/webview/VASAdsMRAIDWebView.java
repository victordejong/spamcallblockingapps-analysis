package com.verizon.ads.webview;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.database.ContentObserver;
import android.graphics.PointF;
import android.graphics.Rect;
import android.location.Location;
import android.media.AudioManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.AdType;
import com.verizon.ads.EnvironmentInfo;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.VASAds;
import com.verizon.ads.support.TimedMemoryCache;
import com.verizon.ads.support.VASActivity;
import com.verizon.ads.support.utils.ActivityUtils;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.support.utils.ViewabilityWatcher;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import com.verizon.ads.webview.MediaUtils;
import com.verizon.ads.webview.VASAdsWebView;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView.class */
public class VASAdsMRAIDWebView extends VASAdsWebView {
    public static final String MRAID_RESIZE_CLOSE_INDICATOR = "MRAID_RESIZE_CLOSE_INDICATOR";
    private final VolumeChangeContentObserver i;
    private boolean k;
    private JSBridgeMRAID m;
    private ViewabilityWatcher n;
    private float p;
    private Rect q;
    private View r;
    private UpdateLocationTask s;
    private ViewGroup t;
    private ViewGroup.LayoutParams u;
    private Rect v;
    private PointF w;

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35850a = Logger.getInstance(VASAdsMRAIDWebView.class);
    private static final Pattern h = Pattern.compile("<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\'])mraid\\.js\\1[^>]*>\\s*</script\\s*>", 2);
    private static TimedMemoryCache<VASAdsMRAIDWebView> g = new TimedMemoryCache<>();
    private boolean j = true;
    private boolean o = false;
    private int l = getContext().getResources().getConfiguration().orientation;

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams.class */
    static class ExpandParams {

        /* renamed from: a  reason: collision with root package name */
        int f35855a;

        /* renamed from: b  reason: collision with root package name */
        int f35856b;

        /* renamed from: c  reason: collision with root package name */
        int f35857c;

        /* renamed from: d  reason: collision with root package name */
        String f35858d;

        private ExpandParams() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID.class */
    public class JSBridgeMRAID implements ViewTreeObserver.OnScrollChangedListener, ViewabilityWatcher.ViewabilityListener, VolumeChangeListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f35859a;

        /* renamed from: b  reason: collision with root package name */
        Location f35860b;
        volatile boolean e;
        volatile boolean f;
        volatile boolean g;
        volatile boolean h;
        volatile boolean i;
        HandlerThread m;

        /* renamed from: c  reason: collision with root package name */
        String f35861c = "loading";

        /* renamed from: d  reason: collision with root package name */
        int f35862d = -1;
        int[] j = new int[2];
        int[] k = new int[2];
        Handler l = new ScrollHandler(this);

        JSBridgeMRAID() {
            HandlerThread handlerThread = new HandlerThread(getClass().getSimpleName() + "[" + this + "]: ScrollHandler");
            this.m = handlerThread;
            handlerThread.start();
        }

        static /* synthetic */ void a(JSBridgeMRAID jSBridgeMRAID) {
            WindowManager windowManager = (WindowManager) VASAdsMRAIDWebView.this.getContext().getSystemService("window");
            if (windowManager != null) {
                windowManager.removeView((View) VASAdsMRAIDWebView.this.getParent());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Rect b(WindowManager windowManager) {
            Rect rect = new Rect();
            windowManager.getDefaultDisplay().getRectSize(rect);
            return rect;
        }

        final void a() {
            Activity activityForView;
            if (VASAdsMRAIDWebView.this.e.isEmpty() && (activityForView = ViewUtils.getActivityForView(VASAdsMRAIDWebView.this)) != null) {
                EnvironmentInfo environmentInfo = new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext());
                EnvironmentInfo.ScreenInfo screenInfo = environmentInfo.getDeviceInfo().getScreenInfo();
                float density = screenInfo.getDensity();
                int width = (int) (screenInfo.getWidth() / density);
                int height = (int) (screenInfo.getHeight() / density);
                WindowManager windowManager = activityForView.getWindowManager();
                if (windowManager != null) {
                    Rect b2 = b(windowManager);
                    try {
                        JSONObject b3 = b();
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("width", width);
                        jSONObject.put("height", height);
                        JSONObject jSONObject2 = new JSONObject();
                        ViewUtils.convertPixelsToDips(VASAdsMRAIDWebView.this.getContext(), b2);
                        jSONObject2.put("width", b2.width());
                        jSONObject2.put("height", b2.height());
                        int requestedOrientation = activityForView.getRequestedOrientation();
                        boolean z = (requestedOrientation == -1 || requestedOrientation == 4 || requestedOrientation == 10 || requestedOrientation == 6 || requestedOrientation == 7) ? false : true;
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("currentPosition", b3);
                        jSONObject3.put("screenSize", jSONObject);
                        jSONObject3.put("maxSize", jSONObject2);
                        jSONObject3.put("currentAppOrientation", environmentInfo.getDeviceInfo().getConfigurationOrientation());
                        jSONObject3.put("orientationLocked", z);
                        VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setPositions", jSONObject3);
                    } catch (JSONException e) {
                        VASAdsMRAIDWebView.f35850a.e("Error creating json object in setCurrentPosition", e);
                    }
                }
            }
        }

        final void a(float f, Rect rect) {
            JSONObject jSONObject = null;
            if (rect != null) {
                try {
                    jSONObject = new JSONObject();
                    jSONObject.put("x", rect.left);
                    jSONObject.put("y", rect.top);
                    jSONObject.put("width", rect.width());
                    jSONObject.put("height", rect.height());
                } catch (JSONException e) {
                    VASAdsMRAIDWebView.f35850a.e("Error creating minimumBoundingRectangle object for exposure change.", e);
                    return;
                }
            }
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("Sending exposure change percentage: %f, minimumBoundingRectangle: %s", Float.valueOf(f), rect));
            }
            VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setExposureChange", Float.valueOf(f), jSONObject);
        }

        final void a(Location location) {
            if (location == null || !VASAds.isLocationEnabled()) {
                VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setLocation", -1);
                return;
            }
            this.f35860b = location;
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("lat", location.getLatitude());
                jSONObject.put("lon", location.getLongitude());
                jSONObject.put("type", 1);
                if (location.hasAccuracy()) {
                    jSONObject.putOpt("accuracy", Float.valueOf(location.getAccuracy()));
                }
                jSONObject.put("lastfix", location.getTime() / 1000);
                VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setLocation", jSONObject);
            } catch (JSONException e) {
                VASAdsMRAIDWebView.f35850a.e("Error converting location to json.", e);
            }
        }

        final void a(final String str) {
            synchronized (this) {
                if (this.e) {
                    this.h = false;
                    if (!TextUtils.equals(str, this.f35861c) || TextUtils.equals(str, "resized")) {
                        this.f35861c = str;
                        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.8
                            @Override // java.lang.Runnable
                            public void run() {
                                VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setState", str, JSBridgeMRAID.this.b());
                            }
                        });
                    }
                }
            }
        }

        final void a(String str, String str2) {
            VASAdsMRAIDWebView.f35850a.e(String.format("MRAID error - action: %s message: %s", str2, str));
            VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.throwMraidError", str, str2);
        }

        final JSONObject b() {
            Rect g = g();
            ViewUtils.convertPixelsToDips(VASAdsMRAIDWebView.this.getContext(), g);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("x", g.left);
                jSONObject.put("y", g.top);
                jSONObject.put("width", g.width());
                jSONObject.put("height", g.height());
            } catch (JSONException e) {
                VASAdsMRAIDWebView.f35850a.e("Error creating json object", e);
            }
            return jSONObject;
        }

        final void c() {
            if (!this.e && this.g && this.f && this.i) {
                this.e = true;
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.7
                    @Override // java.lang.Runnable
                    public void run() {
                        VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setPlacementType", VASAdsMRAIDWebView.this.k ? AdType.INTERSTITIAL : "inline");
                        VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setSupports", JSBridgeMRAID.this.d());
                        JSBridgeMRAID.this.a();
                        VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setViewable", Boolean.valueOf(JSBridgeMRAID.this.f));
                        VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setVolume", VASAdsMRAIDWebView.getCurrentVolume(VASAdsMRAIDWebView.this.getContext()));
                        JSBridgeMRAID jSBridgeMRAID = JSBridgeMRAID.this;
                        jSBridgeMRAID.a(VASAdsMRAIDWebView.this.n.exposedPercentage, VASAdsMRAIDWebView.this.n.mbr);
                        JSBridgeMRAID.this.a(new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext()).getLocation());
                        JSBridgeMRAID jSBridgeMRAID2 = JSBridgeMRAID.this;
                        jSBridgeMRAID2.a(VASAdsMRAIDWebView.this.c());
                    }
                });
            }
        }

        @JavascriptInterface
        public void close(String str) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("MRAID: close(%s)", str));
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!TextUtils.equals("loading", VASAdsMRAIDWebView.this.m.f35861c)) {
                        if (VASAdsMRAIDWebView.this.k) {
                            VASAdsMRAIDWebView.this.m.a("hidden");
                        } else if (TextUtils.equals("expanded", VASAdsMRAIDWebView.this.m.f35861c) || TextUtils.equals("resized", VASAdsMRAIDWebView.this.m.f35861c)) {
                            if (TextUtils.equals("expanded", VASAdsMRAIDWebView.this.m.f35861c)) {
                                Activity activityForView = ViewUtils.getActivityForView(VASAdsMRAIDWebView.this);
                                if (activityForView instanceof MRAIDExpandedActivity) {
                                    activityForView.finish();
                                }
                                if (VASAdsMRAIDWebView.this instanceof TwoPartExpandWebView) {
                                    ((TwoPartExpandWebView) VASAdsMRAIDWebView.this).f35881a.f();
                                }
                            }
                            if (VASAdsMRAIDWebView.this.t != null) {
                                if (TextUtils.equals("resized", VASAdsMRAIDWebView.this.m.f35861c)) {
                                    JSBridgeMRAID.a(JSBridgeMRAID.this);
                                }
                                ViewUtils.removeFromParent(VASAdsMRAIDWebView.this);
                                Activity activityForView2 = ViewUtils.getActivityForView(VASAdsMRAIDWebView.this.t);
                                if (activityForView2 != null) {
                                    ((MutableContextWrapper) VASAdsMRAIDWebView.this.getContext()).setBaseContext(activityForView2);
                                    if (VASAdsMRAIDWebView.this.w != null) {
                                        VASAdsMRAIDWebView.this.setTranslationX(VASAdsMRAIDWebView.this.w.x);
                                        VASAdsMRAIDWebView.this.setTranslationY(VASAdsMRAIDWebView.this.w.y);
                                    }
                                    VASAdsMRAIDWebView.this.t.addView(VASAdsMRAIDWebView.this, VASAdsMRAIDWebView.this.u);
                                }
                                VASAdsMRAIDWebView.this.t = null;
                                VASAdsMRAIDWebView.this.v = null;
                                VASAdsMRAIDWebView.this.u = null;
                                VASAdsMRAIDWebView.this.w = null;
                            }
                            VASAdsMRAIDWebView.this.m.a("default");
                        }
                        VASAdsMRAIDWebView.this.r.setVisibility(8);
                        if (!(VASAdsMRAIDWebView.this instanceof TwoPartExpandWebView)) {
                            VASAdsMRAIDWebView.this.d().close();
                        }
                    }
                }
            });
        }

        @JavascriptInterface
        public void createCalendarEvent(String str) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("MRAID: createCalendarEvent(%s)", str));
            }
            a("Not supported", "createCalendarEvent");
        }

        final JSONObject d() {
            JSONObject jSONObject = new JSONObject();
            try {
                boolean hasSystemFeature = VASAdsMRAIDWebView.this.getContext().getPackageManager().hasSystemFeature("android.hardware.telephony");
                jSONObject.put(MRAIDNativeFeature.SMS, hasSystemFeature);
                jSONObject.put(MRAIDNativeFeature.TEL, hasSystemFeature);
                jSONObject.put(MRAIDNativeFeature.CALENDAR, false);
                jSONObject.put(MRAIDNativeFeature.STORE_PICTURE, false);
                jSONObject.put(MRAIDNativeFeature.INLINE_VIDEO, true);
                jSONObject.put("vpaid", false);
                jSONObject.put("location", f());
            } catch (JSONException e) {
                VASAdsMRAIDWebView.f35850a.e("Error creating supports dictionary", e);
            }
            return jSONObject;
        }

        final void e() {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.9
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject b2 = JSBridgeMRAID.this.b();
                    if (!JSBridgeMRAID.this.e) {
                        int optInt = b2.optInt("width", 0);
                        int optInt2 = b2.optInt("height", 0);
                        if (optInt > 0 && optInt2 > 0) {
                            JSBridgeMRAID.this.g = true;
                            JSBridgeMRAID.this.c();
                        }
                    } else if (!JSBridgeMRAID.this.h) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("currentPosition", b2);
                            VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setPositions", jSONObject);
                        } catch (JSONException e) {
                            VASAdsMRAIDWebView.f35850a.e("Error creating json object in setCurrentPosition");
                        }
                    }
                }
            });
        }

        @JavascriptInterface
        public void expand(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("MRAID: expand(%s)", str));
            }
            if (VASAdsMRAIDWebView.this.i()) {
                a("Ad has not been clicked", "expand");
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (VASAdsMRAIDWebView.this.k) {
                a("Cannot expand interstitial", "expand");
                return;
            }
            DisplayMetrics displayMetrics = VASAdsMRAIDWebView.this.getContext().getResources().getDisplayMetrics();
            EnvironmentInfo.ScreenInfo screenInfo = new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext()).getDeviceInfo().getScreenInfo();
            final ExpandParams expandParams = new ExpandParams();
            if (jSONObject.has("width")) {
                expandParams.f35855a = Math.min((int) TypedValue.applyDimension(1, jSONObject.getInt("width"), displayMetrics), screenInfo.getWidth());
            } else {
                expandParams.f35855a = -1;
            }
            if (jSONObject.has("height")) {
                expandParams.f35856b = Math.min((int) TypedValue.applyDimension(1, jSONObject.getInt("height"), displayMetrics), screenInfo.getHeight());
            } else {
                expandParams.f35856b = -1;
            }
            expandParams.f35857c = this.f35862d;
            expandParams.f35858d = jSONObject.optString("url", null);
            VASAdsMRAIDWebView.this.post(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.3
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.equals(JSBridgeMRAID.this.f35861c, "expanded") || TextUtils.equals(JSBridgeMRAID.this.f35861c, "hidden") || TextUtils.equals(JSBridgeMRAID.this.f35861c, "loading")) {
                        JSBridgeMRAID jSBridgeMRAID = JSBridgeMRAID.this;
                        jSBridgeMRAID.a(String.format("Cannot expand in current state<%s>", jSBridgeMRAID.f35861c), "expand");
                        return;
                    }
                    Intent intent = new Intent(VASAdsMRAIDWebView.this.getContext(), MRAIDExpandedActivity.class);
                    intent.putExtra("webview_cached_id", VASAdsMRAIDWebView.g.add(VASAdsMRAIDWebView.this, 5000L));
                    intent.putExtra("expand_width", expandParams.f35855a);
                    intent.putExtra("expand_height", expandParams.f35856b);
                    intent.putExtra("orientation", expandParams.f35857c);
                    intent.putExtra("immersive", VASAdsMRAIDWebView.this.j);
                    if (!TextUtils.isEmpty(expandParams.f35858d)) {
                        intent.putExtra("url", expandParams.f35858d);
                    } else if (TextUtils.equals(JSBridgeMRAID.this.f35861c, "resized")) {
                        JSBridgeMRAID.a(JSBridgeMRAID.this);
                        ViewUtils.removeFromParent(VASAdsMRAIDWebView.this);
                        VASAdsMRAIDWebView.this.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        VASAdsMRAIDWebView.this.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    } else {
                        ViewParent parent = VASAdsMRAIDWebView.this.getParent();
                        if (parent instanceof ViewGroup) {
                            VASAdsMRAIDWebView.this.t = (ViewGroup) parent;
                            VASAdsMRAIDWebView.this.u = VASAdsMRAIDWebView.this.getLayoutParams();
                            ViewUtils.removeFromParent(VASAdsMRAIDWebView.this);
                        } else {
                            VASAdsMRAIDWebView.f35850a.e("WebView parent is not a ViewGroup. Expansion cannot proceed.");
                            JSBridgeMRAID.this.a("Unable to expand", "expand");
                            return;
                        }
                    }
                    VASAdsMRAIDWebView.this.getContext().startActivity(intent);
                }
            });
        }

        final boolean f() {
            return b.a(VASAdsMRAIDWebView.this.getContext(), "android.permission.ACCESS_FINE_LOCATION") == 0 && VASAds.isLocationEnabled();
        }

        final Rect g() {
            if ("resized".equalsIgnoreCase(this.f35861c)) {
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) ((FrameLayout) VASAdsMRAIDWebView.this.getParent()).getLayoutParams();
                return new Rect(layoutParams.x, layoutParams.y, layoutParams.x + layoutParams.width, layoutParams.y + layoutParams.height);
            }
            int[] iArr = new int[2];
            VASAdsMRAIDWebView.this.getLocationInWindow(iArr);
            return new Rect(iArr[0], iArr[1], iArr[0] + VASAdsMRAIDWebView.this.getWidth(), iArr[1] + VASAdsMRAIDWebView.this.getHeight());
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            VASAdsMRAIDWebView.this.getLocationOnScreen(this.j);
            int[] iArr = this.j;
            int i = iArr[0];
            int[] iArr2 = this.k;
            if (i != iArr2[0] || iArr[1] != iArr2[1]) {
                iArr2[0] = iArr[0];
                iArr2[1] = iArr[1];
                this.l.sendEmptyMessage(1);
            }
        }

        @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
        public void onViewableChanged(boolean z) {
            if (this.e) {
                if (z) {
                    VASAdsMRAIDWebView.this.onResume();
                } else {
                    VASAdsMRAIDWebView.this.onPause();
                }
            }
            if (z != this.f) {
                this.f = z;
                if (this.e) {
                    VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setViewable", Boolean.valueOf(z));
                } else {
                    c();
                }
            }
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VolumeChangeListener
        public void onVolumeChange(int i, int i2, int i3) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("onVolumeChange old = %d, new = %d, max = %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setVolume", Float.valueOf((i2 / i3) * 100.0f));
        }

        @JavascriptInterface
        public void open(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("MRAID: open(%s)", str));
            }
            if (VASAdsMRAIDWebView.this.i()) {
                a("Ad has not been clicked", "open");
                return;
            }
            String string = new JSONObject(str).getString("url");
            if (new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext()).isCustomTabsSupported() && ActivityUtils.startCustomTabActivityFromUrl(ViewUtils.getActivityForView(VASAdsMRAIDWebView.this), string)) {
                VASAdsMRAIDWebView.f35850a.d("Custom tabs are supported; opening URL in custom tab.");
            } else if (ActivityUtils.startActivityFromUrl(VASAdsMRAIDWebView.this.getContext(), string)) {
                VASAdsMRAIDWebView.this.d().onAdLeftApplication(VASAdsMRAIDWebView.this);
            } else {
                a(String.format("Unable to open url <%s>", string), "open");
            }
        }

        @JavascriptInterface
        public void playVideo(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("MRAID: playVideo(%s)", str));
            }
            if (VASAdsMRAIDWebView.this.i()) {
                a("Ad has not been clicked", "playVideo");
                return;
            }
            String optString = new JSONObject(str).optString("url", null);
            if (TextUtils.isEmpty(optString)) {
                a("No path specified for video", "playVideo");
            } else {
                MediaUtils.startVideoPlayer(VASAdsMRAIDWebView.this.getContext(), optString, new MediaUtils.PlayVideoListener() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.6
                    @Override // com.verizon.ads.webview.MediaUtils.PlayVideoListener
                    public void onError(String str2) {
                        JSBridgeMRAID.this.a(str2, "playVideo");
                    }

                    @Override // com.verizon.ads.webview.MediaUtils.PlayVideoListener
                    public void onVideoStarted(Uri uri) {
                        if (Logger.isLogLevelEnabled(3)) {
                            VASAdsMRAIDWebView.f35850a.d(String.format("Video activity started for <%s>", uri.toString()));
                        }
                    }
                });
            }
        }

        @JavascriptInterface
        public void resize(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("MRAID: resize(%s)", str));
            }
            if (VASAdsMRAIDWebView.this.i()) {
                a("Ad has not been clicked", "resize");
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (VASAdsMRAIDWebView.this.k) {
                a("Cannot resize interstitial", "resize");
                return;
            }
            DisplayMetrics displayMetrics = VASAdsMRAIDWebView.this.getContext().getResources().getDisplayMetrics();
            final ResizeParams resizeParams = new ResizeParams();
            resizeParams.f35878c = (int) TypedValue.applyDimension(1, jSONObject.getInt("width"), displayMetrics);
            resizeParams.f35879d = (int) TypedValue.applyDimension(1, jSONObject.getInt("height"), displayMetrics);
            resizeParams.f35876a = (int) TypedValue.applyDimension(1, jSONObject.optInt("offsetX", 0), displayMetrics);
            resizeParams.f35877b = (int) TypedValue.applyDimension(1, jSONObject.optInt("offsetY", 0), displayMetrics);
            resizeParams.e = jSONObject.optBoolean("allowOffscreen", true);
            VASAdsMRAIDWebView.this.post(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.4
                @Override // java.lang.Runnable
                public void run() {
                    int i;
                    int i2;
                    if (TextUtils.equals(JSBridgeMRAID.this.f35861c, "expanded") || TextUtils.equals(JSBridgeMRAID.this.f35861c, "hidden") || TextUtils.equals(JSBridgeMRAID.this.f35861c, "loading")) {
                        JSBridgeMRAID jSBridgeMRAID = JSBridgeMRAID.this;
                        jSBridgeMRAID.a(String.format("Cannot resize in current state<%s>", jSBridgeMRAID.f35861c), "resize");
                        return;
                    }
                    WindowManager windowManager = (WindowManager) VASAdsMRAIDWebView.this.getContext().getSystemService("window");
                    if (windowManager == null) {
                        JSBridgeMRAID.this.a("Unable to resize", "resize");
                        return;
                    }
                    Rect b2 = JSBridgeMRAID.b(windowManager);
                    if (VASAdsMRAIDWebView.this.t == null) {
                        ViewParent parent = VASAdsMRAIDWebView.this.getParent();
                        if (parent instanceof ViewGroup) {
                            VASAdsMRAIDWebView.this.t = (ViewGroup) parent;
                            VASAdsMRAIDWebView.this.u = VASAdsMRAIDWebView.this.getLayoutParams();
                            VASAdsMRAIDWebView.this.v = JSBridgeMRAID.this.g();
                            VASAdsMRAIDWebView.this.w = new PointF();
                            VASAdsMRAIDWebView.this.w.x = VASAdsMRAIDWebView.this.getTranslationX();
                            VASAdsMRAIDWebView.this.w.y = VASAdsMRAIDWebView.this.getTranslationY();
                        } else {
                            VASAdsMRAIDWebView.f35850a.e("WebView parent is not a ViewGroup. Resize cannot proceed.");
                            JSBridgeMRAID.this.a("Unable to resize", "resize");
                            return;
                        }
                    }
                    int i3 = VASAdsMRAIDWebView.this.v.left + resizeParams.f35876a;
                    int i4 = VASAdsMRAIDWebView.this.v.top + resizeParams.f35877b;
                    Rect rect = new Rect(i3, i4, resizeParams.f35878c + i3, resizeParams.f35879d + i4);
                    if (!resizeParams.e && !b2.contains(rect)) {
                        if (rect.right > b2.right) {
                            int i5 = rect.left - (rect.right - b2.right);
                            if (i5 >= b2.left) {
                                rect.left = i5;
                                rect.right = b2.right;
                            }
                        } else if (rect.left < b2.left && (i2 = rect.right + (b2.left - rect.left)) <= b2.right) {
                            rect.right = i2;
                            rect.left = b2.left;
                        }
                        if (rect.bottom > b2.bottom) {
                            int i6 = rect.top - (rect.bottom - b2.bottom);
                            if (i6 >= b2.top) {
                                rect.top = i6;
                                rect.bottom = b2.bottom;
                            }
                        } else if (rect.top < b2.top && (i = rect.bottom + (b2.top - rect.top)) <= b2.bottom) {
                            rect.bottom = i;
                            rect.top = b2.top;
                        }
                        if (!b2.contains(rect)) {
                            VASAdsMRAIDWebView.f35850a.e("Resize dimensions will place ad offscreen and allow offscreen is not permitted.");
                            VASAdsMRAIDWebView.this.a("Unable to resize", "resize");
                            return;
                        }
                    }
                    int dimension = (int) VASAdsMRAIDWebView.this.getResources().getDimension(R.dimen.close_region_width);
                    int dimension2 = (int) VASAdsMRAIDWebView.this.getResources().getDimension(R.dimen.close_region_height);
                    if (rect.right > b2.right || rect.top < b2.top || rect.top + dimension2 > b2.bottom || rect.right - dimension < b2.left) {
                        VASAdsMRAIDWebView.f35850a.e("Resize dimensions will clip the close region which is not permitted.");
                        VASAdsMRAIDWebView.this.a("Unable to resize", "resize");
                        return;
                    }
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(rect.right - rect.left, rect.bottom - rect.top, 1000, 544, -3);
                    layoutParams.gravity = 51;
                    layoutParams.x = rect.left;
                    layoutParams.y = rect.top;
                    VASAdsMRAIDWebView.this.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    VASAdsMRAIDWebView.this.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    if (TextUtils.equals(JSBridgeMRAID.this.f35861c, "resized")) {
                        windowManager.updateViewLayout((FrameLayout) VASAdsMRAIDWebView.this.getParent(), layoutParams);
                    } else {
                        ViewUtils.removeFromParent(VASAdsMRAIDWebView.this);
                        FrameLayout frameLayout = new FrameLayout(VASAdsMRAIDWebView.this.getContext());
                        frameLayout.addView(VASAdsMRAIDWebView.this, new FrameLayout.LayoutParams(-1, -1));
                        windowManager.addView(frameLayout, layoutParams);
                    }
                    VASAdsMRAIDWebView.this.r.setVisibility(0);
                    VASAdsMRAIDWebView.this.m.a("resized");
                    VASAdsMRAIDWebView.this.d().resize();
                }
            });
        }

        @JavascriptInterface
        public void setOrientationProperties(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("MRAID: setOrientationProperties(%s)", str));
            }
            JSONObject jSONObject = new JSONObject(str);
            boolean optBoolean = jSONObject.optBoolean("allowOrientationChange", true);
            String optString = jSONObject.optString("forceOrientation", "none");
            if ("none".equals(optString)) {
                int i = VASAdsMRAIDWebView.this.getContext().getResources().getConfiguration().orientation;
                if (optBoolean) {
                    this.f35862d = -1;
                } else if (i == 2) {
                    this.f35862d = 6;
                } else {
                    this.f35862d = 7;
                }
            } else if (EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT.equals(optString)) {
                this.f35862d = 7;
            } else if (EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE.equals(optString)) {
                this.f35862d = 6;
            } else {
                a(String.format("Invalid orientation specified <%s>", optString), "setOrientationProperties");
                return;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.5
                @Override // java.lang.Runnable
                public void run() {
                    if (VASAdsMRAIDWebView.this.k || JSBridgeMRAID.this.f35861c.equals("expanded")) {
                        Activity activityForView = ViewUtils.getActivityForView(VASAdsMRAIDWebView.this);
                        if (activityForView instanceof VASActivity) {
                            ((VASActivity) activityForView).setOrientation(JSBridgeMRAID.this.f35862d);
                        } else {
                            JSBridgeMRAID.this.a("Cannot apply requested orientation.", "setOrientationProperties");
                        }
                    }
                }
            });
        }

        @JavascriptInterface
        public void storePicture(String str) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("MRAID: storePicture(%s)", str));
            }
            a("Not supported", MRAIDNativeFeature.STORE_PICTURE);
        }

        @JavascriptInterface
        public void unload(String str) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("MRAID: unload(%s)", str));
            }
            VASAdsMRAIDWebView vASAdsMRAIDWebView = VASAdsMRAIDWebView.this;
            if (vASAdsMRAIDWebView instanceof TwoPartExpandWebView) {
                ((TwoPartExpandWebView) vASAdsMRAIDWebView).f35881a.m.unload(null);
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.2
                @Override // java.lang.Runnable
                public void run() {
                    ViewUtils.removeFromParent(VASAdsMRAIDWebView.this);
                    Activity activityForView = ViewUtils.getActivityForView(VASAdsMRAIDWebView.this);
                    if (activityForView instanceof MRAIDExpandedActivity) {
                        activityForView.finish();
                    }
                    if (!(VASAdsMRAIDWebView.this instanceof TwoPartExpandWebView)) {
                        VASAdsMRAIDWebView.this.d().unload();
                    }
                }
            });
        }

        @JavascriptInterface
        public void useCustomClose(String str) {
            VASAdsMRAIDWebView.f35850a.w("MRAID: useCustomClose is deprecated. Ignoring per spec.");
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams.class */
    static class ResizeParams {

        /* renamed from: a  reason: collision with root package name */
        int f35876a;

        /* renamed from: b  reason: collision with root package name */
        int f35877b;

        /* renamed from: c  reason: collision with root package name */
        int f35878c;

        /* renamed from: d  reason: collision with root package name */
        int f35879d;
        boolean e;

        private ResizeParams() {
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$ScrollHandler.class */
    static class ScrollHandler extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private JSBridgeMRAID f35880a;

        ScrollHandler(JSBridgeMRAID jSBridgeMRAID) {
            this.f35880a = jSBridgeMRAID;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message != null) {
                int i = message.what;
                if (i != 1) {
                    if (i != 2) {
                        VASAdsMRAIDWebView.f35850a.e(String.format("Unexpected msg.what = %d", Integer.valueOf(message.what)));
                    } else {
                        this.f35880a.e();
                    }
                } else if (!hasMessages(2)) {
                    sendEmptyMessageDelayed(2, 100L);
                }
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView.class */
    static class TwoPartExpandWebView extends VASAdsMRAIDWebView {

        /* renamed from: a  reason: collision with root package name */
        VASAdsMRAIDWebView f35881a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public TwoPartExpandWebView(Context context, VASAdsMRAIDWebView vASAdsMRAIDWebView, VASAdsMRAIDWebViewListener vASAdsMRAIDWebViewListener) {
            super(context, false, vASAdsMRAIDWebViewListener);
            this.f35881a = vASAdsMRAIDWebView;
            setWebViewClient(new WebViewClient());
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView
        protected final String c() {
            return "expanded";
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask.class */
    static class UpdateLocationTask extends AsyncTask<Void, Void, Location> {

        /* renamed from: a  reason: collision with root package name */
        private static final Logger f35882a = Logger.getInstance(UpdateLocationTask.class);

        /* renamed from: b  reason: collision with root package name */
        private EnvironmentInfo f35883b;

        /* renamed from: c  reason: collision with root package name */
        private WeakReference<JSBridgeMRAID> f35884c;

        UpdateLocationTask(Context context, JSBridgeMRAID jSBridgeMRAID) {
            this.f35884c = new WeakReference<>(jSBridgeMRAID);
            this.f35883b = new EnvironmentInfo(context);
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ Location doInBackground(Void[] voidArr) {
            return this.f35883b.getLocation();
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onPostExecute(Location location) {
            Location location2 = location;
            final JSBridgeMRAID jSBridgeMRAID = this.f35884c.get();
            if (jSBridgeMRAID == null) {
                f35882a.d("MRAID JS Bridge is gone.");
            } else if (!jSBridgeMRAID.f()) {
                jSBridgeMRAID.a((Location) null);
            } else {
                if (location2 != null && (jSBridgeMRAID.f35860b == null || jSBridgeMRAID.f35860b.distanceTo(location2) > 10.0f)) {
                    jSBridgeMRAID.a(location2);
                }
                if (!isCancelled()) {
                    VASAdsMRAIDWebView.this.postDelayed(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.10
                        @Override // java.lang.Runnable
                        public void run() {
                            if (JSBridgeMRAID.this.f35859a) {
                                VASAdsMRAIDWebView.this.s = new UpdateLocationTask(VASAdsMRAIDWebView.this.getContext(), JSBridgeMRAID.this);
                                VASAdsMRAIDWebView.this.s.execute(new Void[0]);
                            }
                        }
                    }, 5000L);
                } else {
                    f35882a.d("Shutting down update location task.");
                }
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener.class */
    public interface VASAdsMRAIDWebViewListener extends VASAdsWebView.VASAdsWebViewListener {
        void close();

        void expand();

        void resize();

        void unload();
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver.class */
    static class VolumeChangeContentObserver extends ContentObserver {

        /* renamed from: a  reason: collision with root package name */
        HandlerThread f35885a;

        /* renamed from: b  reason: collision with root package name */
        private Handler f35886b;

        /* renamed from: c  reason: collision with root package name */
        private Context f35887c;

        /* renamed from: d  reason: collision with root package name */
        private int f35888d;
        private int e;
        private VolumeChangeListener f;

        VolumeChangeContentObserver(Context context, VolumeChangeListener volumeChangeListener) {
            super(null);
            this.f = volumeChangeListener;
            this.f35887c = context;
            HandlerThread handlerThread = new HandlerThread("VolumeChangeDispatcher");
            this.f35885a = handlerThread;
            handlerThread.start();
            this.f35886b = new Handler(this.f35885a.getLooper());
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager != null) {
                this.f35888d = audioManager.getStreamVolume(3);
                this.e = audioManager.getStreamMaxVolume(3);
            } else {
                VASAdsMRAIDWebView.f35850a.w("Unable to get a reference to the AudioManager.");
            }
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f35850a.d(String.format("VolumeChangeContentObserver created with initial vol = %d, max vol = %d", Integer.valueOf(this.f35888d), Integer.valueOf(this.e)));
            }
            context.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (uri != null) {
                if (Logger.isLogLevelEnabled(3)) {
                    VASAdsMRAIDWebView.f35850a.d(String.format("Setting changed for URI = %s", uri));
                }
                if (uri.toString().startsWith("content://settings/system/volume_music_")) {
                    AudioManager audioManager = (AudioManager) this.f35887c.getSystemService("audio");
                    if (audioManager == null) {
                        VASAdsMRAIDWebView.f35850a.w("Unable to obtain a reference to the AudioManager.");
                        return;
                    }
                    final int streamVolume = audioManager.getStreamVolume(3);
                    if (Logger.isLogLevelEnabled(3)) {
                        VASAdsMRAIDWebView.f35850a.d(String.format("Current volume vol = %d, last vol = %d", Integer.valueOf(streamVolume), Integer.valueOf(this.f35888d)));
                    }
                    final int i = this.f35888d;
                    if (streamVolume != i) {
                        this.f35888d = streamVolume;
                        if (Logger.isLogLevelEnabled(3)) {
                            VASAdsMRAIDWebView.f35850a.d(String.format("Dispatching volume change old vol = %d, new vol = %d", Integer.valueOf(i), Integer.valueOf(streamVolume)));
                        }
                        this.f35886b.post(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.VolumeChangeContentObserver.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (VolumeChangeContentObserver.this.f != null) {
                                    VolumeChangeContentObserver.this.f.onVolumeChange(i, streamVolume, VolumeChangeContentObserver.this.e);
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener.class */
    interface VolumeChangeListener {
        void onVolumeChange(int i, int i2, int i3);
    }

    public VASAdsMRAIDWebView(Context context, boolean z, VASAdsMRAIDWebViewListener vASAdsMRAIDWebViewListener) {
        super(context, vASAdsMRAIDWebViewListener);
        this.k = z;
        JSBridgeMRAID jSBridgeMRAID = new JSBridgeMRAID();
        this.m = jSBridgeMRAID;
        addJavascriptInterface(jSBridgeMRAID, "MmInjectedFunctionsMraid");
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int i9;
                if ((view instanceof VASAdsMRAIDWebView) && VASAdsMRAIDWebView.this.l != (i9 = VASAdsMRAIDWebView.this.getContext().getResources().getConfiguration().orientation)) {
                    if (Logger.isLogLevelEnabled(3)) {
                        VASAdsMRAIDWebView.f35850a.d(String.format("Detected change in orientation to %s", new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext()).getDeviceInfo().getConfigurationOrientation()));
                    }
                    VASAdsMRAIDWebView.this.l = i9;
                    VASAdsMRAIDWebView.this.m.a();
                }
            }
        });
        ViewabilityWatcher viewabilityWatcher = new ViewabilityWatcher(this, this.m);
        this.n = viewabilityWatcher;
        viewabilityWatcher.startWatching();
        this.i = new VolumeChangeContentObserver(context, this.m);
        if (z) {
            ImageView imageView = new ImageView(getContext());
            this.r = imageView;
            imageView.setImageResource(R.drawable.mraid_close);
        } else {
            View view = new View(getContext());
            this.r = view;
            view.setVisibility(8);
        }
        this.r.setTag(MRAID_RESIZE_CLOSE_INDICATOR);
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                VASAdsMRAIDWebView.this.f();
            }
        });
        addView(this.r, new AbsoluteLayout.LayoutParams((int) getResources().getDimension(R.dimen.close_region_width), (int) getResources().getDimension(R.dimen.close_region_height), 0, 0));
    }

    static /* synthetic */ boolean a(Rect rect, Rect rect2) {
        return rect == null ? rect2 == null : rect.equals(rect2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static VASAdsMRAIDWebView b(String str) {
        return g.get(str);
    }

    public static Float getCurrentVolume(Context context) {
        if (context == null) {
            return null;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            f35850a.w("Unable to get a reference to the AudioManager.");
            return null;
        }
        return Float.valueOf((audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3)) * 100.0f);
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    protected final String a(String str) {
        Matcher matcher = h.matcher(str);
        if (matcher.find(0)) {
            str = matcher.replaceAll("");
        }
        return str;
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    protected final String a(Collection<String> collection) {
        EnvironmentInfo.AdvertisingIdInfo advertisingIdInfo;
        StringBuilder sb = new StringBuilder(40);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("version", "3.0");
            jSONObject.put("sdk", "Verizon Ads MRAID WebView");
            jSONObject.put("sdkVersion", "1.0");
            if (VASAds.isShareApplicationIdEnabled()) {
                jSONObject.put("appId", getContext().getPackageName());
            }
            if (VASAds.isShareAdvertiserIdEnabled() && (advertisingIdInfo = new EnvironmentInfo(getContext()).getAdvertisingIdInfo()) != null) {
                jSONObject.put("ifa", advertisingIdInfo.getId());
                jSONObject.put("limitAdTracking", advertisingIdInfo.isLimitAdTrackingEnabled());
            }
            jSONObject.put(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, VASAds.getCoppa() != null && VASAds.getCoppa().booleanValue());
            sb.append("<script>\nwindow.MRAID_ENV = ");
            sb.append(jSONObject.toString(4));
            sb.append("\n</script>");
        } catch (JSONException e) {
            f35850a.e("MRAID_ENV could not be configured.", e);
        }
        sb.append(super.a(collection));
        return sb.toString();
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    protected final List<String> a() {
        return Collections.singletonList("vas/mraid.js");
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    protected final void a(ErrorInfo errorInfo) {
        this.m.i = true;
        this.m.c();
        super.a((ErrorInfo) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2) {
        this.m.a(str, str2);
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    protected final VASAdsWebView.VASAdsWebViewListener b() {
        return new VASAdsMRAIDWebViewListener() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.3
            @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
            public void close() {
            }

            @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
            public void expand() {
            }

            @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
            public void onAdLeftApplication(VASAdsWebView vASAdsWebView) {
            }

            @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
            public void onClicked(VASAdsWebView vASAdsWebView) {
            }

            @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
            public void onError(ErrorInfo errorInfo) {
            }

            @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
            public void resize() {
            }

            @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
            public void unload() {
            }
        };
    }

    protected String c() {
        return "default";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final VASAdsMRAIDWebViewListener d() {
        return (VASAdsMRAIDWebViewListener) this.f35894b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        this.m.a("expanded");
        ((VASAdsMRAIDWebViewListener) this.f35894b).expand();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        this.m.close(null);
    }

    public boolean isImmersive() {
        return this.j;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getLocationOnScreen(this.m.k);
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnScrollChangedListener(this.m);
        }
        this.o = true;
        post(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.4
            @Override // java.lang.Runnable
            public void run() {
                if (VASAdsMRAIDWebView.this.n != null && (!VASAdsMRAIDWebView.a(VASAdsMRAIDWebView.this.n.mbr, VASAdsMRAIDWebView.this.q) || VASAdsMRAIDWebView.this.p != VASAdsMRAIDWebView.this.n.exposedPercentage)) {
                    VASAdsMRAIDWebView vASAdsMRAIDWebView = VASAdsMRAIDWebView.this;
                    vASAdsMRAIDWebView.p = vASAdsMRAIDWebView.n.exposedPercentage;
                    VASAdsMRAIDWebView vASAdsMRAIDWebView2 = VASAdsMRAIDWebView.this;
                    vASAdsMRAIDWebView2.q = vASAdsMRAIDWebView2.n.mbr;
                    VASAdsMRAIDWebView.this.m.a(VASAdsMRAIDWebView.this.p, VASAdsMRAIDWebView.this.q);
                }
                if (VASAdsMRAIDWebView.this.o) {
                    VASAdsMRAIDWebView.this.postDelayed(this, 200L);
                } else {
                    VASAdsMRAIDWebView.f35850a.d("Stopping exposureChange notifications.");
                }
            }
        });
        JSBridgeMRAID jSBridgeMRAID = this.m;
        Logger logger = f35850a;
        logger.d("Starting location updates for mraid.");
        if (VASAdsMRAIDWebView.this.s != null) {
            VASAdsMRAIDWebView.this.s.cancel(true);
        }
        if (!jSBridgeMRAID.f()) {
            logger.d("Location access is disabled. Not starting location updates.");
            return;
        }
        jSBridgeMRAID.f35859a = true;
        VASAdsMRAIDWebView.this.s = new UpdateLocationTask(VASAdsMRAIDWebView.this.getContext(), jSBridgeMRAID);
        VASAdsMRAIDWebView.this.s.execute(new Void[0]);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.m);
        }
        this.o = false;
        JSBridgeMRAID jSBridgeMRAID = this.m;
        jSBridgeMRAID.f35859a = false;
        if (VASAdsMRAIDWebView.this.s != null) {
            VASAdsMRAIDWebView.this.s.cancel(true);
            VASAdsMRAIDWebView.this.s = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.AbsoluteLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            ((AbsoluteLayout.LayoutParams) this.r.getLayoutParams()).x = (i3 - i) - ((int) getResources().getDimension(R.dimen.close_region_width));
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.m.e();
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    public void release() {
        ContentResolver contentResolver;
        JSBridgeMRAID jSBridgeMRAID = this.m;
        if (!(jSBridgeMRAID == null || jSBridgeMRAID.m == null)) {
            this.m.m.quit();
        }
        VolumeChangeContentObserver volumeChangeContentObserver = this.i;
        if (volumeChangeContentObserver != null) {
            if (volumeChangeContentObserver.f35885a != null) {
                volumeChangeContentObserver.f35885a.quit();
                volumeChangeContentObserver.f35885a = null;
            }
            Context context = getContext();
            if (!(context == null || (contentResolver = context.getContentResolver()) == null)) {
                contentResolver.unregisterContentObserver(this.i);
            }
        }
        f();
        super.release();
    }

    public void setImmersive(boolean z) {
        this.j = z;
    }
}
