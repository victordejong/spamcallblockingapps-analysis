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
import androidx.core.content.C0790b;
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

    /* renamed from: i */
    private final VolumeChangeContentObserver f62118i;

    /* renamed from: k */
    private boolean f62120k;

    /* renamed from: m */
    private JSBridgeMRAID f62122m;

    /* renamed from: n */
    private ViewabilityWatcher f62123n;

    /* renamed from: p */
    private float f62125p;

    /* renamed from: q */
    private Rect f62126q;

    /* renamed from: r */
    private View f62127r;

    /* renamed from: s */
    private UpdateLocationTask f62128s;

    /* renamed from: t */
    private ViewGroup f62129t;

    /* renamed from: u */
    private ViewGroup.LayoutParams f62130u;

    /* renamed from: v */
    private Rect f62131v;

    /* renamed from: w */
    private PointF f62132w;

    /* renamed from: a */
    private static final Logger f62115a = Logger.getInstance(VASAdsMRAIDWebView.class);

    /* renamed from: h */
    private static final Pattern f62117h = Pattern.compile("<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\'])mraid\\.js\\1[^>]*>\\s*</script\\s*>", 2);

    /* renamed from: g */
    private static TimedMemoryCache<VASAdsMRAIDWebView> f62116g = new TimedMemoryCache<>();

    /* renamed from: j */
    private boolean f62119j = true;

    /* renamed from: o */
    private boolean f62124o = false;

    /* renamed from: l */
    private int f62121l = getContext().getResources().getConfiguration().orientation;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams.class */
    public static class ExpandParams {

        /* renamed from: a */
        int f62137a;

        /* renamed from: b */
        int f62138b;

        /* renamed from: c */
        int f62139c;

        /* renamed from: d */
        String f62140d;

        private ExpandParams() {
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID.class */
    public class JSBridgeMRAID implements ViewTreeObserver.OnScrollChangedListener, ViewabilityWatcher.ViewabilityListener, VolumeChangeListener {

        /* renamed from: a */
        boolean f62141a;

        /* renamed from: b */
        Location f62142b;

        /* renamed from: e */
        volatile boolean f62145e;

        /* renamed from: f */
        volatile boolean f62146f;

        /* renamed from: g */
        volatile boolean f62147g;

        /* renamed from: h */
        volatile boolean f62148h;

        /* renamed from: i */
        volatile boolean f62149i;

        /* renamed from: m */
        HandlerThread f62153m;

        /* renamed from: c */
        String f62143c = "loading";

        /* renamed from: d */
        int f62144d = -1;

        /* renamed from: j */
        int[] f62150j = new int[2];

        /* renamed from: k */
        int[] f62151k = new int[2];

        /* renamed from: l */
        Handler f62152l = new ScrollHandler(this);

        JSBridgeMRAID() {
            VASAdsMRAIDWebView.this = r6;
            HandlerThread handlerThread = new HandlerThread(getClass().getSimpleName() + "[" + this + "]: ScrollHandler");
            this.f62153m = handlerThread;
            handlerThread.start();
        }

        /* renamed from: a */
        static /* synthetic */ void m4954a(JSBridgeMRAID jSBridgeMRAID) {
            WindowManager windowManager = (WindowManager) VASAdsMRAIDWebView.this.getContext().getSystemService("window");
            if (windowManager != null) {
                windowManager.removeView((View) VASAdsMRAIDWebView.this.getParent());
            }
        }

        /* renamed from: b */
        public static Rect m4950b(WindowManager windowManager) {
            Rect rect = new Rect();
            windowManager.getDefaultDisplay().getRectSize(rect);
            return rect;
        }

        /* renamed from: a */
        final void m4958a() {
            Activity activityForView;
            if (VASAdsMRAIDWebView.this.f62198e.isEmpty() && (activityForView = ViewUtils.getActivityForView(VASAdsMRAIDWebView.this)) != null) {
                EnvironmentInfo environmentInfo = new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext());
                EnvironmentInfo.ScreenInfo screenInfo = environmentInfo.getDeviceInfo().getScreenInfo();
                float density = screenInfo.getDensity();
                int width = (int) (screenInfo.getWidth() / density);
                int height = (int) (screenInfo.getHeight() / density);
                WindowManager windowManager = activityForView.getWindowManager();
                if (windowManager == null) {
                    return;
                }
                Rect m4950b = m4950b(windowManager);
                try {
                    JSONObject m4951b = m4951b();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("width", width);
                    jSONObject.put("height", height);
                    JSONObject jSONObject2 = new JSONObject();
                    ViewUtils.convertPixelsToDips(VASAdsMRAIDWebView.this.getContext(), m4950b);
                    jSONObject2.put("width", m4950b.width());
                    jSONObject2.put("height", m4950b.height());
                    int requestedOrientation = activityForView.getRequestedOrientation();
                    boolean z = (requestedOrientation == -1 || requestedOrientation == 4 || requestedOrientation == 10 || requestedOrientation == 6 || requestedOrientation == 7) ? false : true;
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("currentPosition", m4951b);
                    jSONObject3.put("screenSize", jSONObject);
                    jSONObject3.put("maxSize", jSONObject2);
                    jSONObject3.put("currentAppOrientation", environmentInfo.getDeviceInfo().getConfigurationOrientation());
                    jSONObject3.put("orientationLocked", z);
                    VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setPositions", jSONObject3);
                } catch (JSONException e) {
                    VASAdsMRAIDWebView.f62115a.m5564e("Error creating json object in setCurrentPosition", e);
                }
            }
        }

        /* renamed from: a */
        final void m4957a(float f, Rect rect) {
            JSONObject jSONObject = null;
            if (rect != null) {
                try {
                    jSONObject = new JSONObject();
                    jSONObject.put("x", rect.left);
                    jSONObject.put("y", rect.top);
                    jSONObject.put("width", rect.width());
                    jSONObject.put("height", rect.height());
                } catch (JSONException e) {
                    VASAdsMRAIDWebView.f62115a.m5564e("Error creating minimumBoundingRectangle object for exposure change.", e);
                    return;
                }
            }
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("Sending exposure change percentage: %f, minimumBoundingRectangle: %s", Float.valueOf(f), rect));
            }
            VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setExposureChange", Float.valueOf(f), jSONObject);
        }

        /* renamed from: a */
        final void m4956a(Location location) {
            if (location == null || !VASAds.isLocationEnabled()) {
                VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setLocation", -1);
                return;
            }
            this.f62142b = location;
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
                VASAdsMRAIDWebView.f62115a.m5564e("Error converting location to json.", e);
            }
        }

        /* renamed from: a */
        final void m4953a(final String str) {
            synchronized (this) {
                if (!this.f62145e) {
                    return;
                }
                this.f62148h = false;
                if (!TextUtils.equals(str, this.f62143c) || TextUtils.equals(str, "resized")) {
                    this.f62143c = str;
                    ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.8
                        @Override // java.lang.Runnable
                        public void run() {
                            VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setState", str, JSBridgeMRAID.this.m4951b());
                        }
                    });
                }
            }
        }

        /* renamed from: a */
        final void m4952a(String str, String str2) {
            VASAdsMRAIDWebView.f62115a.m5565e(String.format("MRAID error - action: %s message: %s", str2, str));
            VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.throwMraidError", str, str2);
        }

        /* renamed from: b */
        final JSONObject m4951b() {
            Rect m4945g = m4945g();
            ViewUtils.convertPixelsToDips(VASAdsMRAIDWebView.this.getContext(), m4945g);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("x", m4945g.left);
                jSONObject.put("y", m4945g.top);
                jSONObject.put("width", m4945g.width());
                jSONObject.put("height", m4945g.height());
            } catch (JSONException e) {
                VASAdsMRAIDWebView.f62115a.m5564e("Error creating json object", e);
            }
            return jSONObject;
        }

        /* renamed from: c */
        final void m4949c() {
            if (!this.f62145e && this.f62147g && this.f62146f && this.f62149i) {
                this.f62145e = true;
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.7
                    @Override // java.lang.Runnable
                    public void run() {
                        VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setPlacementType", VASAdsMRAIDWebView.this.f62120k ? AdType.INTERSTITIAL : "inline");
                        VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setSupports", JSBridgeMRAID.this.m4948d());
                        JSBridgeMRAID.this.m4958a();
                        VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setViewable", Boolean.valueOf(JSBridgeMRAID.this.f62146f));
                        VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setVolume", VASAdsMRAIDWebView.getCurrentVolume(VASAdsMRAIDWebView.this.getContext()));
                        JSBridgeMRAID jSBridgeMRAID = JSBridgeMRAID.this;
                        jSBridgeMRAID.m4957a(VASAdsMRAIDWebView.this.f62123n.exposedPercentage, VASAdsMRAIDWebView.this.f62123n.mbr);
                        JSBridgeMRAID.this.m4956a(new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext()).getLocation());
                        JSBridgeMRAID jSBridgeMRAID2 = JSBridgeMRAID.this;
                        jSBridgeMRAID2.m4953a(VASAdsMRAIDWebView.this.mo4944c());
                    }
                });
            }
        }

        @JavascriptInterface
        public void close(String str) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("MRAID: close(%s)", str));
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.equals("loading", VASAdsMRAIDWebView.this.f62122m.f62143c)) {
                        return;
                    }
                    if (VASAdsMRAIDWebView.this.f62120k) {
                        VASAdsMRAIDWebView.this.f62122m.m4953a("hidden");
                    } else if (TextUtils.equals("expanded", VASAdsMRAIDWebView.this.f62122m.f62143c) || TextUtils.equals("resized", VASAdsMRAIDWebView.this.f62122m.f62143c)) {
                        if (TextUtils.equals("expanded", VASAdsMRAIDWebView.this.f62122m.f62143c)) {
                            Activity activityForView = ViewUtils.getActivityForView(VASAdsMRAIDWebView.this);
                            if (activityForView instanceof MRAIDExpandedActivity) {
                                activityForView.finish();
                            }
                            if (VASAdsMRAIDWebView.this instanceof TwoPartExpandWebView) {
                                ((TwoPartExpandWebView) VASAdsMRAIDWebView.this).f62174a.m4970f();
                            }
                        }
                        if (VASAdsMRAIDWebView.this.f62129t != null) {
                            if (TextUtils.equals("resized", VASAdsMRAIDWebView.this.f62122m.f62143c)) {
                                JSBridgeMRAID.m4954a(JSBridgeMRAID.this);
                            }
                            ViewUtils.removeFromParent(VASAdsMRAIDWebView.this);
                            Activity activityForView2 = ViewUtils.getActivityForView(VASAdsMRAIDWebView.this.f62129t);
                            if (activityForView2 != null) {
                                ((MutableContextWrapper) VASAdsMRAIDWebView.this.getContext()).setBaseContext(activityForView2);
                                if (VASAdsMRAIDWebView.this.f62132w != null) {
                                    VASAdsMRAIDWebView.this.setTranslationX(VASAdsMRAIDWebView.this.f62132w.x);
                                    VASAdsMRAIDWebView.this.setTranslationY(VASAdsMRAIDWebView.this.f62132w.y);
                                }
                                VASAdsMRAIDWebView.this.f62129t.addView(VASAdsMRAIDWebView.this, VASAdsMRAIDWebView.this.f62130u);
                            }
                            VASAdsMRAIDWebView.this.f62129t = null;
                            VASAdsMRAIDWebView.this.f62131v = null;
                            VASAdsMRAIDWebView.this.f62130u = null;
                            VASAdsMRAIDWebView.this.f62132w = null;
                        }
                        VASAdsMRAIDWebView.this.f62122m.m4953a("default");
                    }
                    VASAdsMRAIDWebView.this.f62127r.setVisibility(8);
                    if (VASAdsMRAIDWebView.this instanceof TwoPartExpandWebView) {
                        return;
                    }
                    VASAdsMRAIDWebView.this.m4974d().close();
                }
            });
        }

        @JavascriptInterface
        public void createCalendarEvent(String str) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("MRAID: createCalendarEvent(%s)", str));
            }
            m4952a("Not supported", "createCalendarEvent");
        }

        /* renamed from: d */
        final JSONObject m4948d() {
            JSONObject jSONObject = new JSONObject();
            try {
                boolean hasSystemFeature = VASAdsMRAIDWebView.this.getContext().getPackageManager().hasSystemFeature("android.hardware.telephony");
                jSONObject.put(MRAIDNativeFeature.SMS, hasSystemFeature);
                jSONObject.put(MRAIDNativeFeature.TEL, hasSystemFeature);
                jSONObject.put(MRAIDNativeFeature.CALENDAR, false);
                jSONObject.put(MRAIDNativeFeature.STORE_PICTURE, false);
                jSONObject.put(MRAIDNativeFeature.INLINE_VIDEO, true);
                jSONObject.put("vpaid", false);
                jSONObject.put("location", m4946f());
            } catch (JSONException e) {
                VASAdsMRAIDWebView.f62115a.m5564e("Error creating supports dictionary", e);
            }
            return jSONObject;
        }

        /* renamed from: e */
        final void m4947e() {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.9
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject m4951b = JSBridgeMRAID.this.m4951b();
                    if (JSBridgeMRAID.this.f62145e) {
                        if (JSBridgeMRAID.this.f62148h) {
                            return;
                        }
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("currentPosition", m4951b);
                            VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setPositions", jSONObject);
                            return;
                        } catch (JSONException e) {
                            VASAdsMRAIDWebView.f62115a.m5565e("Error creating json object in setCurrentPosition");
                            return;
                        }
                    }
                    int optInt = m4951b.optInt("width", 0);
                    int optInt2 = m4951b.optInt("height", 0);
                    if (optInt <= 0 || optInt2 <= 0) {
                        return;
                    }
                    JSBridgeMRAID.this.f62147g = true;
                    JSBridgeMRAID.this.m4949c();
                }
            });
        }

        @JavascriptInterface
        public void expand(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("MRAID: expand(%s)", str));
            }
            if (VASAdsMRAIDWebView.this.m4927i()) {
                m4952a("Ad has not been clicked", "expand");
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (VASAdsMRAIDWebView.this.f62120k) {
                m4952a("Cannot expand interstitial", "expand");
                return;
            }
            DisplayMetrics displayMetrics = VASAdsMRAIDWebView.this.getContext().getResources().getDisplayMetrics();
            EnvironmentInfo.ScreenInfo screenInfo = new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext()).getDeviceInfo().getScreenInfo();
            final ExpandParams expandParams = new ExpandParams();
            if (jSONObject.has("width")) {
                expandParams.f62137a = Math.min((int) TypedValue.applyDimension(1, jSONObject.getInt("width"), displayMetrics), screenInfo.getWidth());
            } else {
                expandParams.f62137a = -1;
            }
            if (jSONObject.has("height")) {
                expandParams.f62138b = Math.min((int) TypedValue.applyDimension(1, jSONObject.getInt("height"), displayMetrics), screenInfo.getHeight());
            } else {
                expandParams.f62138b = -1;
            }
            expandParams.f62139c = this.f62144d;
            expandParams.f62140d = jSONObject.optString("url", null);
            VASAdsMRAIDWebView.this.post(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.3
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.equals(JSBridgeMRAID.this.f62143c, "expanded") || TextUtils.equals(JSBridgeMRAID.this.f62143c, "hidden") || TextUtils.equals(JSBridgeMRAID.this.f62143c, "loading")) {
                        JSBridgeMRAID jSBridgeMRAID = JSBridgeMRAID.this;
                        jSBridgeMRAID.m4952a(String.format("Cannot expand in current state<%s>", jSBridgeMRAID.f62143c), "expand");
                        return;
                    }
                    Intent intent = new Intent(VASAdsMRAIDWebView.this.getContext(), MRAIDExpandedActivity.class);
                    intent.putExtra("webview_cached_id", VASAdsMRAIDWebView.f62116g.add(VASAdsMRAIDWebView.this, 5000L));
                    intent.putExtra("expand_width", expandParams.f62137a);
                    intent.putExtra("expand_height", expandParams.f62138b);
                    intent.putExtra("orientation", expandParams.f62139c);
                    intent.putExtra("immersive", VASAdsMRAIDWebView.this.f62119j);
                    if (!TextUtils.isEmpty(expandParams.f62140d)) {
                        intent.putExtra("url", expandParams.f62140d);
                    } else if (TextUtils.equals(JSBridgeMRAID.this.f62143c, "resized")) {
                        JSBridgeMRAID.m4954a(JSBridgeMRAID.this);
                        ViewUtils.removeFromParent(VASAdsMRAIDWebView.this);
                        VASAdsMRAIDWebView.this.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        VASAdsMRAIDWebView.this.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    } else {
                        ViewParent parent = VASAdsMRAIDWebView.this.getParent();
                        if (!(parent instanceof ViewGroup)) {
                            VASAdsMRAIDWebView.f62115a.m5565e("WebView parent is not a ViewGroup. Expansion cannot proceed.");
                            JSBridgeMRAID.this.m4952a("Unable to expand", "expand");
                            return;
                        }
                        VASAdsMRAIDWebView.this.f62129t = (ViewGroup) parent;
                        VASAdsMRAIDWebView.this.f62130u = VASAdsMRAIDWebView.this.getLayoutParams();
                        ViewUtils.removeFromParent(VASAdsMRAIDWebView.this);
                    }
                    VASAdsMRAIDWebView.this.getContext().startActivity(intent);
                }
            });
        }

        /* renamed from: f */
        final boolean m4946f() {
            return C0790b.m44498a(VASAdsMRAIDWebView.this.getContext(), "android.permission.ACCESS_FINE_LOCATION") == 0 && VASAds.isLocationEnabled();
        }

        /* renamed from: g */
        final Rect m4945g() {
            if ("resized".equalsIgnoreCase(this.f62143c)) {
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) ((FrameLayout) VASAdsMRAIDWebView.this.getParent()).getLayoutParams();
                return new Rect(layoutParams.x, layoutParams.y, layoutParams.x + layoutParams.width, layoutParams.y + layoutParams.height);
            }
            int[] iArr = new int[2];
            VASAdsMRAIDWebView.this.getLocationInWindow(iArr);
            return new Rect(iArr[0], iArr[1], iArr[0] + VASAdsMRAIDWebView.this.getWidth(), iArr[1] + VASAdsMRAIDWebView.this.getHeight());
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            VASAdsMRAIDWebView.this.getLocationOnScreen(this.f62150j);
            int[] iArr = this.f62150j;
            int i = iArr[0];
            int[] iArr2 = this.f62151k;
            if (i == iArr2[0] && iArr[1] == iArr2[1]) {
                return;
            }
            iArr2[0] = iArr[0];
            iArr2[1] = iArr[1];
            this.f62152l.sendEmptyMessage(1);
        }

        @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
        public void onViewableChanged(boolean z) {
            if (this.f62145e) {
                if (z) {
                    VASAdsMRAIDWebView.this.onResume();
                } else {
                    VASAdsMRAIDWebView.this.onPause();
                }
            }
            if (z != this.f62146f) {
                this.f62146f = z;
                if (this.f62145e) {
                    VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setViewable", Boolean.valueOf(z));
                } else {
                    m4949c();
                }
            }
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VolumeChangeListener
        public void onVolumeChange(int i, int i2, int i3) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("onVolumeChange old = %d, new = %d, max = %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            VASAdsMRAIDWebView.this.callJavascript("MmJsBridge.mraid.setVolume", Float.valueOf((i2 / i3) * 100.0f));
        }

        @JavascriptInterface
        public void open(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("MRAID: open(%s)", str));
            }
            if (VASAdsMRAIDWebView.this.m4927i()) {
                m4952a("Ad has not been clicked", "open");
                return;
            }
            String string = new JSONObject(str).getString("url");
            if (new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext()).isCustomTabsSupported() && ActivityUtils.startCustomTabActivityFromUrl(ViewUtils.getActivityForView(VASAdsMRAIDWebView.this), string)) {
                VASAdsMRAIDWebView.f62115a.m5567d("Custom tabs are supported; opening URL in custom tab.");
            } else if (ActivityUtils.startActivityFromUrl(VASAdsMRAIDWebView.this.getContext(), string)) {
                VASAdsMRAIDWebView.this.m4974d().onAdLeftApplication(VASAdsMRAIDWebView.this);
            } else {
                m4952a(String.format("Unable to open url <%s>", string), "open");
            }
        }

        @JavascriptInterface
        public void playVideo(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("MRAID: playVideo(%s)", str));
            }
            if (VASAdsMRAIDWebView.this.m4927i()) {
                m4952a("Ad has not been clicked", "playVideo");
                return;
            }
            String optString = new JSONObject(str).optString("url", null);
            if (TextUtils.isEmpty(optString)) {
                m4952a("No path specified for video", "playVideo");
            } else {
                MediaUtils.startVideoPlayer(VASAdsMRAIDWebView.this.getContext(), optString, new MediaUtils.PlayVideoListener() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.6
                    @Override // com.verizon.ads.webview.MediaUtils.PlayVideoListener
                    public void onError(String str2) {
                        JSBridgeMRAID.this.m4952a(str2, "playVideo");
                    }

                    @Override // com.verizon.ads.webview.MediaUtils.PlayVideoListener
                    public void onVideoStarted(Uri uri) {
                        if (Logger.isLogLevelEnabled(3)) {
                            VASAdsMRAIDWebView.f62115a.m5567d(String.format("Video activity started for <%s>", uri.toString()));
                        }
                    }
                });
            }
        }

        @JavascriptInterface
        public void resize(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("MRAID: resize(%s)", str));
            }
            if (VASAdsMRAIDWebView.this.m4927i()) {
                m4952a("Ad has not been clicked", "resize");
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (VASAdsMRAIDWebView.this.f62120k) {
                m4952a("Cannot resize interstitial", "resize");
                return;
            }
            DisplayMetrics displayMetrics = VASAdsMRAIDWebView.this.getContext().getResources().getDisplayMetrics();
            final ResizeParams resizeParams = new ResizeParams();
            resizeParams.f62170c = (int) TypedValue.applyDimension(1, jSONObject.getInt("width"), displayMetrics);
            resizeParams.f62171d = (int) TypedValue.applyDimension(1, jSONObject.getInt("height"), displayMetrics);
            resizeParams.f62168a = (int) TypedValue.applyDimension(1, jSONObject.optInt("offsetX", 0), displayMetrics);
            resizeParams.f62169b = (int) TypedValue.applyDimension(1, jSONObject.optInt("offsetY", 0), displayMetrics);
            resizeParams.f62172e = jSONObject.optBoolean("allowOffscreen", true);
            VASAdsMRAIDWebView.this.post(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.4
                @Override // java.lang.Runnable
                public void run() {
                    int i;
                    int i2;
                    if (TextUtils.equals(JSBridgeMRAID.this.f62143c, "expanded") || TextUtils.equals(JSBridgeMRAID.this.f62143c, "hidden") || TextUtils.equals(JSBridgeMRAID.this.f62143c, "loading")) {
                        JSBridgeMRAID jSBridgeMRAID = JSBridgeMRAID.this;
                        jSBridgeMRAID.m4952a(String.format("Cannot resize in current state<%s>", jSBridgeMRAID.f62143c), "resize");
                        return;
                    }
                    WindowManager windowManager = (WindowManager) VASAdsMRAIDWebView.this.getContext().getSystemService("window");
                    if (windowManager == null) {
                        JSBridgeMRAID.this.m4952a("Unable to resize", "resize");
                        return;
                    }
                    Rect m4950b = JSBridgeMRAID.m4950b(windowManager);
                    if (VASAdsMRAIDWebView.this.f62129t == null) {
                        ViewParent parent = VASAdsMRAIDWebView.this.getParent();
                        if (!(parent instanceof ViewGroup)) {
                            VASAdsMRAIDWebView.f62115a.m5565e("WebView parent is not a ViewGroup. Resize cannot proceed.");
                            JSBridgeMRAID.this.m4952a("Unable to resize", "resize");
                            return;
                        }
                        VASAdsMRAIDWebView.this.f62129t = (ViewGroup) parent;
                        VASAdsMRAIDWebView.this.f62130u = VASAdsMRAIDWebView.this.getLayoutParams();
                        VASAdsMRAIDWebView.this.f62131v = JSBridgeMRAID.this.m4945g();
                        VASAdsMRAIDWebView.this.f62132w = new PointF();
                        VASAdsMRAIDWebView.this.f62132w.x = VASAdsMRAIDWebView.this.getTranslationX();
                        VASAdsMRAIDWebView.this.f62132w.y = VASAdsMRAIDWebView.this.getTranslationY();
                    }
                    int i3 = VASAdsMRAIDWebView.this.f62131v.left + resizeParams.f62168a;
                    int i4 = VASAdsMRAIDWebView.this.f62131v.top + resizeParams.f62169b;
                    Rect rect = new Rect(i3, i4, resizeParams.f62170c + i3, resizeParams.f62171d + i4);
                    if (!resizeParams.f62172e && !m4950b.contains(rect)) {
                        if (rect.right > m4950b.right) {
                            int i5 = rect.left - (rect.right - m4950b.right);
                            if (i5 >= m4950b.left) {
                                rect.left = i5;
                                rect.right = m4950b.right;
                            }
                        } else if (rect.left < m4950b.left && (i2 = rect.right + (m4950b.left - rect.left)) <= m4950b.right) {
                            rect.right = i2;
                            rect.left = m4950b.left;
                        }
                        if (rect.bottom > m4950b.bottom) {
                            int i6 = rect.top - (rect.bottom - m4950b.bottom);
                            if (i6 >= m4950b.top) {
                                rect.top = i6;
                                rect.bottom = m4950b.bottom;
                            }
                        } else if (rect.top < m4950b.top && (i = rect.bottom + (m4950b.top - rect.top)) <= m4950b.bottom) {
                            rect.bottom = i;
                            rect.top = m4950b.top;
                        }
                        if (!m4950b.contains(rect)) {
                            VASAdsMRAIDWebView.f62115a.m5565e("Resize dimensions will place ad offscreen and allow offscreen is not permitted.");
                            VASAdsMRAIDWebView.this.m4979a("Unable to resize", "resize");
                            return;
                        }
                    }
                    int dimension = (int) VASAdsMRAIDWebView.this.getResources().getDimension(C17539R.dimen.close_region_width);
                    int dimension2 = (int) VASAdsMRAIDWebView.this.getResources().getDimension(C17539R.dimen.close_region_height);
                    if (rect.right > m4950b.right || rect.top < m4950b.top || rect.top + dimension2 > m4950b.bottom || rect.right - dimension < m4950b.left) {
                        VASAdsMRAIDWebView.f62115a.m5565e("Resize dimensions will clip the close region which is not permitted.");
                        VASAdsMRAIDWebView.this.m4979a("Unable to resize", "resize");
                        return;
                    }
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(rect.right - rect.left, rect.bottom - rect.top, 1000, 544, -3);
                    layoutParams.gravity = 51;
                    layoutParams.x = rect.left;
                    layoutParams.y = rect.top;
                    VASAdsMRAIDWebView.this.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    VASAdsMRAIDWebView.this.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    if (TextUtils.equals(JSBridgeMRAID.this.f62143c, "resized")) {
                        windowManager.updateViewLayout((FrameLayout) VASAdsMRAIDWebView.this.getParent(), layoutParams);
                    } else {
                        ViewUtils.removeFromParent(VASAdsMRAIDWebView.this);
                        FrameLayout frameLayout = new FrameLayout(VASAdsMRAIDWebView.this.getContext());
                        frameLayout.addView(VASAdsMRAIDWebView.this, new FrameLayout.LayoutParams(-1, -1));
                        windowManager.addView(frameLayout, layoutParams);
                    }
                    VASAdsMRAIDWebView.this.f62127r.setVisibility(0);
                    VASAdsMRAIDWebView.this.f62122m.m4953a("resized");
                    VASAdsMRAIDWebView.this.m4974d().resize();
                }
            });
        }

        @JavascriptInterface
        public void setOrientationProperties(String str) throws JSONException {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("MRAID: setOrientationProperties(%s)", str));
            }
            JSONObject jSONObject = new JSONObject(str);
            boolean optBoolean = jSONObject.optBoolean("allowOrientationChange", true);
            String optString = jSONObject.optString("forceOrientation", "none");
            if ("none".equals(optString)) {
                int i = VASAdsMRAIDWebView.this.getContext().getResources().getConfiguration().orientation;
                if (optBoolean) {
                    this.f62144d = -1;
                } else if (i == 2) {
                    this.f62144d = 6;
                } else {
                    this.f62144d = 7;
                }
            } else if (EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT.equals(optString)) {
                this.f62144d = 7;
            } else if (!EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE.equals(optString)) {
                m4952a(String.format("Invalid orientation specified <%s>", optString), "setOrientationProperties");
                return;
            } else {
                this.f62144d = 6;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.5
                @Override // java.lang.Runnable
                public void run() {
                    if (VASAdsMRAIDWebView.this.f62120k || JSBridgeMRAID.this.f62143c.equals("expanded")) {
                        Activity activityForView = ViewUtils.getActivityForView(VASAdsMRAIDWebView.this);
                        if (activityForView instanceof VASActivity) {
                            ((VASActivity) activityForView).setOrientation(JSBridgeMRAID.this.f62144d);
                        } else {
                            JSBridgeMRAID.this.m4952a("Cannot apply requested orientation.", "setOrientationProperties");
                        }
                    }
                }
            });
        }

        @JavascriptInterface
        public void storePicture(String str) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("MRAID: storePicture(%s)", str));
            }
            m4952a("Not supported", MRAIDNativeFeature.STORE_PICTURE);
        }

        @JavascriptInterface
        public void unload(String str) {
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("MRAID: unload(%s)", str));
            }
            VASAdsMRAIDWebView vASAdsMRAIDWebView = VASAdsMRAIDWebView.this;
            if (vASAdsMRAIDWebView instanceof TwoPartExpandWebView) {
                ((TwoPartExpandWebView) vASAdsMRAIDWebView).f62174a.f62122m.unload(null);
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
                        VASAdsMRAIDWebView.this.m4974d().unload();
                    }
                }
            });
        }

        @JavascriptInterface
        public void useCustomClose(String str) {
            VASAdsMRAIDWebView.f62115a.m5559w("MRAID: useCustomClose is deprecated. Ignoring per spec.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams.class */
    public static class ResizeParams {

        /* renamed from: a */
        int f62168a;

        /* renamed from: b */
        int f62169b;

        /* renamed from: c */
        int f62170c;

        /* renamed from: d */
        int f62171d;

        /* renamed from: e */
        boolean f62172e;

        private ResizeParams() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$ScrollHandler.class */
    public static class ScrollHandler extends Handler {

        /* renamed from: a */
        private JSBridgeMRAID f62173a;

        ScrollHandler(JSBridgeMRAID jSBridgeMRAID) {
            this.f62173a = jSBridgeMRAID;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message == null) {
                return;
            }
            int i = message.what;
            if (i == 1) {
                if (hasMessages(2)) {
                    return;
                }
                sendEmptyMessageDelayed(2, 100L);
            } else if (i != 2) {
                VASAdsMRAIDWebView.f62115a.m5565e(String.format("Unexpected msg.what = %d", Integer.valueOf(message.what)));
            } else {
                this.f62173a.m4947e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView.class */
    public static class TwoPartExpandWebView extends VASAdsMRAIDWebView {

        /* renamed from: a */
        VASAdsMRAIDWebView f62174a;

        public TwoPartExpandWebView(Context context, VASAdsMRAIDWebView vASAdsMRAIDWebView, VASAdsMRAIDWebViewListener vASAdsMRAIDWebViewListener) {
            super(context, false, vASAdsMRAIDWebViewListener);
            this.f62174a = vASAdsMRAIDWebView;
            setWebViewClient(new WebViewClient());
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView
        /* renamed from: c */
        protected final String mo4944c() {
            return "expanded";
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask.class */
    static class UpdateLocationTask extends AsyncTask<Void, Void, Location> {

        /* renamed from: a */
        private static final Logger f62175a = Logger.getInstance(UpdateLocationTask.class);

        /* renamed from: b */
        private EnvironmentInfo f62176b;

        /* renamed from: c */
        private WeakReference<JSBridgeMRAID> f62177c;

        UpdateLocationTask(Context context, JSBridgeMRAID jSBridgeMRAID) {
            this.f62177c = new WeakReference<>(jSBridgeMRAID);
            this.f62176b = new EnvironmentInfo(context);
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ Location doInBackground(Void[] voidArr) {
            return this.f62176b.getLocation();
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onPostExecute(Location location) {
            Location location2 = location;
            final JSBridgeMRAID jSBridgeMRAID = this.f62177c.get();
            if (jSBridgeMRAID == null) {
                f62175a.m5567d("MRAID JS Bridge is gone.");
            } else if (!jSBridgeMRAID.m4946f()) {
                jSBridgeMRAID.m4956a((Location) null);
            } else {
                if (location2 != null && (jSBridgeMRAID.f62142b == null || jSBridgeMRAID.f62142b.distanceTo(location2) > 10.0f)) {
                    jSBridgeMRAID.m4956a(location2);
                }
                if (!isCancelled()) {
                    VASAdsMRAIDWebView.this.postDelayed(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.JSBridgeMRAID.10
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!jSBridgeMRAID.f62141a) {
                                return;
                            }
                            VASAdsMRAIDWebView.this.f62128s = new UpdateLocationTask(VASAdsMRAIDWebView.this.getContext(), jSBridgeMRAID);
                            VASAdsMRAIDWebView.this.f62128s.execute(new Void[0]);
                        }
                    }, 5000L);
                } else {
                    f62175a.m5567d("Shutting down update location task.");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver.class */
    public static class VolumeChangeContentObserver extends ContentObserver {

        /* renamed from: a */
        HandlerThread f62178a;

        /* renamed from: b */
        private Handler f62179b;

        /* renamed from: c */
        private Context f62180c;

        /* renamed from: d */
        private int f62181d;

        /* renamed from: e */
        private int f62182e;

        /* renamed from: f */
        private VolumeChangeListener f62183f;

        VolumeChangeContentObserver(Context context, VolumeChangeListener volumeChangeListener) {
            super(null);
            this.f62183f = volumeChangeListener;
            this.f62180c = context;
            HandlerThread handlerThread = new HandlerThread("VolumeChangeDispatcher");
            this.f62178a = handlerThread;
            handlerThread.start();
            this.f62179b = new Handler(this.f62178a.getLooper());
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager != null) {
                this.f62181d = audioManager.getStreamVolume(3);
                this.f62182e = audioManager.getStreamMaxVolume(3);
            } else {
                VASAdsMRAIDWebView.f62115a.m5559w("Unable to get a reference to the AudioManager.");
            }
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("VolumeChangeContentObserver created with initial vol = %d, max vol = %d", Integer.valueOf(this.f62181d), Integer.valueOf(this.f62182e)));
            }
            context.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (uri == null) {
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("Setting changed for URI = %s", uri));
            }
            if (!uri.toString().startsWith("content://settings/system/volume_music_")) {
                return;
            }
            AudioManager audioManager = (AudioManager) this.f62180c.getSystemService("audio");
            if (audioManager == null) {
                VASAdsMRAIDWebView.f62115a.m5559w("Unable to obtain a reference to the AudioManager.");
                return;
            }
            final int streamVolume = audioManager.getStreamVolume(3);
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("Current volume vol = %d, last vol = %d", Integer.valueOf(streamVolume), Integer.valueOf(this.f62181d)));
            }
            final int i = this.f62181d;
            if (streamVolume == i) {
                return;
            }
            this.f62181d = streamVolume;
            if (Logger.isLogLevelEnabled(3)) {
                VASAdsMRAIDWebView.f62115a.m5567d(String.format("Dispatching volume change old vol = %d, new vol = %d", Integer.valueOf(i), Integer.valueOf(streamVolume)));
            }
            this.f62179b.post(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.VolumeChangeContentObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    if (VolumeChangeContentObserver.this.f62183f != null) {
                        VolumeChangeContentObserver.this.f62183f.onVolumeChange(i, streamVolume, VolumeChangeContentObserver.this.f62182e);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener.class */
    public interface VolumeChangeListener {
        void onVolumeChange(int i, int i2, int i3);
    }

    public VASAdsMRAIDWebView(Context context, boolean z, VASAdsMRAIDWebViewListener vASAdsMRAIDWebViewListener) {
        super(context, vASAdsMRAIDWebViewListener);
        this.f62120k = z;
        JSBridgeMRAID jSBridgeMRAID = new JSBridgeMRAID();
        this.f62122m = jSBridgeMRAID;
        addJavascriptInterface(jSBridgeMRAID, "MmInjectedFunctionsMraid");
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int i9;
                if (!(view instanceof VASAdsMRAIDWebView) || VASAdsMRAIDWebView.this.f62121l == (i9 = VASAdsMRAIDWebView.this.getContext().getResources().getConfiguration().orientation)) {
                    return;
                }
                if (Logger.isLogLevelEnabled(3)) {
                    VASAdsMRAIDWebView.f62115a.m5567d(String.format("Detected change in orientation to %s", new EnvironmentInfo(VASAdsMRAIDWebView.this.getContext()).getDeviceInfo().getConfigurationOrientation()));
                }
                VASAdsMRAIDWebView.this.f62121l = i9;
                VASAdsMRAIDWebView.this.f62122m.m4958a();
            }
        });
        ViewabilityWatcher viewabilityWatcher = new ViewabilityWatcher(this, this.f62122m);
        this.f62123n = viewabilityWatcher;
        viewabilityWatcher.startWatching();
        this.f62118i = new VolumeChangeContentObserver(context, this.f62122m);
        if (z) {
            ImageView imageView = new ImageView(getContext());
            this.f62127r = imageView;
            imageView.setImageResource(C17539R.C17540drawable.mraid_close);
        } else {
            View view = new View(getContext());
            this.f62127r = view;
            view.setVisibility(8);
        }
        this.f62127r.setTag(MRAID_RESIZE_CLOSE_INDICATOR);
        this.f62127r.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                VASAdsMRAIDWebView.this.m4970f();
            }
        });
        addView(this.f62127r, new AbsoluteLayout.LayoutParams((int) getResources().getDimension(C17539R.dimen.close_region_width), (int) getResources().getDimension(C17539R.dimen.close_region_height), 0, 0));
    }

    /* renamed from: a */
    static /* synthetic */ boolean m4988a(Rect rect, Rect rect2) {
        return rect == null ? rect2 == null : rect.equals(rect2);
    }

    /* renamed from: b */
    public static VASAdsMRAIDWebView m4976b(String str) {
        return f62116g.get(str);
    }

    public static Float getCurrentVolume(Context context) {
        if (context == null) {
            return null;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            f62115a.m5559w("Unable to get a reference to the AudioManager.");
            return null;
        }
        return Float.valueOf((audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3)) * 100.0f);
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    /* renamed from: a */
    protected final String mo4938a(String str) {
        Matcher matcher = f62117h.matcher(str);
        if (matcher.find(0)) {
            str = matcher.replaceAll("");
        }
        return str;
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    /* renamed from: a */
    public final String mo4936a(Collection<String> collection) {
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
            f62115a.m5564e("MRAID_ENV could not be configured.", e);
        }
        sb.append(super.mo4936a(collection));
        return sb.toString();
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    /* renamed from: a */
    protected final List<String> mo4941a() {
        return Collections.singletonList("vas/mraid.js");
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    /* renamed from: a */
    public final void mo4940a(ErrorInfo errorInfo) {
        this.f62122m.f62149i = true;
        this.f62122m.m4949c();
        super.mo4940a((ErrorInfo) null);
    }

    /* renamed from: a */
    public final void m4979a(String str, String str2) {
        this.f62122m.m4952a(str, str2);
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    /* renamed from: b */
    protected final VASAdsWebView.VASAdsWebViewListener mo4935b() {
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

    /* renamed from: c */
    protected String mo4944c() {
        return "default";
    }

    /* renamed from: d */
    public final VASAdsMRAIDWebViewListener m4974d() {
        return (VASAdsMRAIDWebViewListener) this.f62195b;
    }

    /* renamed from: e */
    public final void m4972e() {
        this.f62122m.m4953a("expanded");
        ((VASAdsMRAIDWebViewListener) this.f62195b).expand();
    }

    /* renamed from: f */
    public final void m4970f() {
        this.f62122m.close(null);
    }

    public boolean isImmersive() {
        return this.f62119j;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getLocationOnScreen(this.f62122m.f62151k);
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnScrollChangedListener(this.f62122m);
        }
        this.f62124o = true;
        post(new Runnable() { // from class: com.verizon.ads.webview.VASAdsMRAIDWebView.4
            @Override // java.lang.Runnable
            public void run() {
                if (VASAdsMRAIDWebView.this.f62123n != null && (!VASAdsMRAIDWebView.m4988a(VASAdsMRAIDWebView.this.f62123n.mbr, VASAdsMRAIDWebView.this.f62126q) || VASAdsMRAIDWebView.this.f62125p != VASAdsMRAIDWebView.this.f62123n.exposedPercentage)) {
                    VASAdsMRAIDWebView vASAdsMRAIDWebView = VASAdsMRAIDWebView.this;
                    vASAdsMRAIDWebView.f62125p = vASAdsMRAIDWebView.f62123n.exposedPercentage;
                    VASAdsMRAIDWebView vASAdsMRAIDWebView2 = VASAdsMRAIDWebView.this;
                    vASAdsMRAIDWebView2.f62126q = vASAdsMRAIDWebView2.f62123n.mbr;
                    VASAdsMRAIDWebView.this.f62122m.m4957a(VASAdsMRAIDWebView.this.f62125p, VASAdsMRAIDWebView.this.f62126q);
                }
                if (VASAdsMRAIDWebView.this.f62124o) {
                    VASAdsMRAIDWebView.this.postDelayed(this, 200L);
                } else {
                    VASAdsMRAIDWebView.f62115a.m5567d("Stopping exposureChange notifications.");
                }
            }
        });
        JSBridgeMRAID jSBridgeMRAID = this.f62122m;
        Logger logger = f62115a;
        logger.m5567d("Starting location updates for mraid.");
        if (VASAdsMRAIDWebView.this.f62128s != null) {
            VASAdsMRAIDWebView.this.f62128s.cancel(true);
        }
        if (!jSBridgeMRAID.m4946f()) {
            logger.m5567d("Location access is disabled. Not starting location updates.");
            return;
        }
        jSBridgeMRAID.f62141a = true;
        VASAdsMRAIDWebView.this.f62128s = new UpdateLocationTask(VASAdsMRAIDWebView.this.getContext(), jSBridgeMRAID);
        VASAdsMRAIDWebView.this.f62128s.execute(new Void[0]);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.f62122m);
        }
        this.f62124o = false;
        JSBridgeMRAID jSBridgeMRAID = this.f62122m;
        jSBridgeMRAID.f62141a = false;
        if (VASAdsMRAIDWebView.this.f62128s != null) {
            VASAdsMRAIDWebView.this.f62128s.cancel(true);
            VASAdsMRAIDWebView.this.f62128s = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.AbsoluteLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            ((AbsoluteLayout.LayoutParams) this.f62127r.getLayoutParams()).x = (i3 - i) - ((int) getResources().getDimension(C17539R.dimen.close_region_width));
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f62122m.m4947e();
    }

    @Override // com.verizon.ads.webview.VASAdsWebView
    public void release() {
        ContentResolver contentResolver;
        JSBridgeMRAID jSBridgeMRAID = this.f62122m;
        if (jSBridgeMRAID != null && jSBridgeMRAID.f62153m != null) {
            this.f62122m.f62153m.quit();
        }
        VolumeChangeContentObserver volumeChangeContentObserver = this.f62118i;
        if (volumeChangeContentObserver != null) {
            if (volumeChangeContentObserver.f62178a != null) {
                volumeChangeContentObserver.f62178a.quit();
                volumeChangeContentObserver.f62178a = null;
            }
            Context context = getContext();
            if (context != null && (contentResolver = context.getContentResolver()) != null) {
                contentResolver.unregisterContentObserver(this.f62118i);
            }
        }
        m4970f();
        super.release();
    }

    public void setImmersive(boolean z) {
        this.f62119j = z;
    }
}
