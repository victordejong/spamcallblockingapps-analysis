package com.pubmatic.sdk.webrendering.mraid;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import com.facebook.appevents.integrity.IntegrityManager;
import com.pubmatic.sdk.common.C1843R;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.cache.POBAdViewCacheService;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.network.POBImageRequest;
import com.pubmatic.sdk.common.network.POBNetworkHandler;
import com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener;
import com.pubmatic.sdk.common.utility.POBLocationDetector;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.webrendering.mraid.C2021c;
import com.pubmatic.sdk.webrendering.mraid.View$OnTouchListenerC2053t;
import com.pubmatic.sdk.webrendering.p021ui.POBAdVisibilityListener;
import com.pubmatic.sdk.webrendering.p021ui.POBFullScreenActivity;
import com.pubmatic.sdk.webrendering.p021ui.POBMraidViewContainer;
import com.pubmatic.sdk.webrendering.p021ui.POBWebView;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.p */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p.class */
public class C2038p implements AbstractC2037o, POBAdVisibilityListener {

    /* renamed from: a */
    private final C2034n f1159a;

    /* renamed from: b */
    private final String f1160b;

    /* renamed from: c */
    private C2034n f1161c;

    /* renamed from: d */
    private View$OnTouchListenerC2049i f1162d;

    /* renamed from: e */
    private AbstractC2050q f1163e;

    /* renamed from: f */
    private C2021c.AbstractC2022a f1164f;

    /* renamed from: g */
    private ViewTreeObserver.OnScrollChangedListener f1165g;

    /* renamed from: h */
    private ViewGroup f1166h;

    /* renamed from: i */
    private View$OnTouchListenerC2053t f1167i;

    /* renamed from: j */
    private boolean f1168j;

    /* renamed from: k */
    private boolean f1169k;

    /* renamed from: l */
    private Map<String, String> f1170l;

    /* renamed from: m */
    private boolean f1171m;

    /* renamed from: n */
    private int f1172n;

    /* renamed from: o */
    private int f1173o;

    /* renamed from: p */
    private float f1174p;

    /* renamed from: q */
    private Context f1175q;

    /* renamed from: r */
    private POBNetworkHandler f1176r;

    /* renamed from: s */
    private POBNetworkHandler.POBImageNetworkListener<String> f1177s;

    /* renamed from: t */
    private POBLocationDetector f1178t;

    /* renamed from: u */
    private int f1179u;

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$a.class */
    public class C2039a implements POBNetworkHandler.POBImageNetworkListener<String> {

        /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$a$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$a$a.class */
        class RunnableC2040a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ Bitmap f1181a;

            RunnableC2040a(Bitmap bitmap) {
                C2039a.this = r4;
                this.f1181a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2033m.m546a(C2038p.this.f1175q, this.f1181a, Calendar.getInstance().getTimeInMillis() + ".jpeg")) {
                    PMLog.info("POBMraidController", "image successfully saved to device!", new Object[0]);
                } else {
                    PMLog.error("POBMraidController", "Error saving picture to device through MRAID ad.", new Object[0]);
                }
            }
        }

        C2039a() {
            C2038p.this = r4;
        }

        @Override // com.pubmatic.sdk.common.network.POBNetworkHandler.POBImageNetworkListener
        public void onFailure(POBError pOBError) {
            PMLog.error("POBMraidController", "Network error connecting to url.", new Object[0]);
            C2038p.this.m471j();
        }

        @Override // com.pubmatic.sdk.common.network.POBNetworkHandler.POBImageNetworkListener
        public void onSuccess(Bitmap bitmap) {
            POBUtils.runOnBackgroundThread(new RunnableC2040a(bitmap));
            C2038p.this.m471j();
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$b.class */
    public class C2041b implements C2021c.AbstractC2022a {
        C2041b() {
            C2038p.this = r4;
        }

        @Override // com.pubmatic.sdk.webrendering.mraid.C2021c.AbstractC2022a
        /* renamed from: a */
        public void mo460a(Double d) {
            if (C2038p.this.m487c()) {
                C2038p.this.m499a(d);
            } else {
                C2038p.this.m499a((Double) null);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$c.class */
    public class ViewTreeObserver$OnScrollChangedListenerC2042c implements ViewTreeObserver.OnScrollChangedListener {
        ViewTreeObserver$OnScrollChangedListenerC2042c() {
            C2038p.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            C2038p.this.m495a(true);
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$d.class */
    public class C2043d implements View$OnTouchListenerC2053t.AbstractC2057d {
        C2043d() {
            C2038p.this = r4;
        }

        @Override // com.pubmatic.sdk.webrendering.mraid.View$OnTouchListenerC2053t.AbstractC2057d
        /* renamed from: a */
        public void mo443a(WebView webView) {
            C2038p.this.m467n();
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$e.class */
    public class C2044e implements POBFullScreenActivityListener {

        /* renamed from: a */
        final /* synthetic */ POBWebView f1186a;

        /* renamed from: b */
        final /* synthetic */ ViewGroup f1187b;

        C2044e(POBWebView pOBWebView, ViewGroup viewGroup) {
            C2038p.this = r4;
            this.f1186a = pOBWebView;
            this.f1187b = viewGroup;
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener
        public void onCreate(Activity activity) {
            this.f1186a.setBaseContext(activity);
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener
        public void onDestroy() {
            PMLog.debug("POBMraidController", "expand close", new Object[0]);
            this.f1186a.setBaseContext(C2038p.this.f1175q);
            if (this.f1187b != null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(C2038p.this.f1172n, C2038p.this.f1173o);
                ViewGroup viewGroup = (ViewGroup) this.f1186a.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1186a);
                }
                this.f1187b.addView(this.f1186a, layoutParams);
                this.f1186a.requestFocus();
            }
            C2038p.this.m467n();
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$f */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$f.class */
    public class C2045f extends C2051r {

        /* renamed from: b */
        final /* synthetic */ C2034n f1189b;

        /* renamed from: c */
        final /* synthetic */ POBWebView f1190c;

        /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$f$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$f$a.class */
        class View$OnLayoutChangeListenerC2046a implements View.OnLayoutChangeListener {
            View$OnLayoutChangeListenerC2046a() {
                C2045f.this = r4;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                C2045f c2045f = C2045f.this;
                C2038p c2038p = C2038p.this;
                c2038p.m491b(c2045f.f1189b, c2038p.f1171m);
            }
        }

        C2045f(C2034n c2034n, POBWebView pOBWebView) {
            C2038p.this = r4;
            this.f1189b = c2034n;
            this.f1190c = pOBWebView;
        }

        @Override // com.pubmatic.sdk.webrendering.p021ui.POBHTMLViewClient, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            C2038p c2038p = C2038p.this;
            c2038p.m491b(this.f1189b, c2038p.f1171m);
            C2038p.this.f1171m = false;
            this.f1190c.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC2046a());
            C2038p.this.f1159a.m533a(EnumC2020b.EXPANDED);
            C2038p.this.f1161c = this.f1189b;
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$g */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$g.class */
    public static /* synthetic */ class C2047g {

        /* renamed from: a */
        static final /* synthetic */ int[] f1193a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC2020b.values().length];
            f1193a = iArr;
            try {
                iArr[EnumC2020b.EXPANDED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1193a[EnumC2020b.RESIZED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$h */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$h.class */
    public static class C2048h extends WebChromeClient {
        private C2048h() {
        }

        /* synthetic */ C2048h(C2039a c2039a) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            PMLog.debug("POBMraidController", String.format(Locale.getDefault(), "%s @ %d: %s", consoleMessage.message(), Integer.valueOf(consoleMessage.lineNumber()), consoleMessage.sourceId()), new Object[0]);
            return super.onConsoleMessage(consoleMessage);
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.p$i */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/p$i.class */
    public static class View$OnTouchListenerC2049i implements View.OnTouchListener {

        /* renamed from: a */
        boolean f1194a;

        View$OnTouchListenerC2049i() {
        }

        /* renamed from: a */
        boolean m459a() {
            boolean z = this.f1194a;
            this.f1194a = false;
            return z;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0 || action == 1) {
                PMLog.debug("POBMraidController", "WebView onTouch : Focus=" + view.hasFocus(), new Object[0]);
                if (!view.hasFocus()) {
                    return false;
                }
                this.f1194a = true;
                return false;
            }
            return false;
        }
    }

    public C2038p(Context context, C2034n c2034n, String str, int i) {
        this.f1161c = c2034n;
        this.f1159a = c2034n;
        this.f1179u = i;
        this.f1160b = str;
        c2034n.m528a(this);
        this.f1168j = this.f1161c.f1145a.getVisibility() == 0;
        Context applicationContext = context.getApplicationContext();
        this.f1175q = applicationContext;
        this.f1178t = POBInstanceProvider.getLocationDetector(applicationContext);
        this.f1170l = new HashMap();
    }

    /* renamed from: a */
    private Double m509a(Context context) {
        return C2021c.m552d(context);
    }

    /* renamed from: a */
    private void m511a(Activity activity, String str) {
        String str2 = str != null ? str : IntegrityManager.INTEGRITY_TYPE_NONE;
        str2.hashCode();
        if (str2.equals("landscape")) {
            activity.setRequestedOrientation(0);
        } else if (str2.equals("portrait")) {
            activity.setRequestedOrientation(1);
        } else {
            PMLog.debug("POBMraidController", "default forceOrientation :" + str, new Object[0]);
        }
    }

    /* renamed from: a */
    private void m510a(Activity activity, boolean z) {
        if (z) {
            activity.setRequestedOrientation(-1);
        }
    }

    /* renamed from: a */
    private void m508a(Context context, int i, int i2, int i3, int i4, boolean z) {
        View$OnTouchListenerC2053t view$OnTouchListenerC2053t;
        if (this.f1159a.m520b() == EnumC2020b.DEFAULT || this.f1159a.m520b() == EnumC2020b.RESIZED) {
            int[] viewXYPosition = POBUtils.getViewXYPosition(this.f1159a.f1145a);
            int i5 = viewXYPosition[0];
            int i6 = viewXYPosition[1];
            if (this.f1159a.m520b().equals(EnumC2020b.DEFAULT)) {
                this.f1172n = this.f1159a.f1145a.getWidth();
                this.f1173o = this.f1159a.f1145a.getHeight();
            }
            POBViewRect m548a = C2033m.m548a(i3, i4, i, i2, z, new POBViewRect(i5, i6, i2, i, false, null), POBUtils.convertPixelToDp(context.getResources().getDrawable(C1843R.C1845drawable.close_button).getIntrinsicWidth()), POBUtils.convertPixelToDp(context.getResources().getDrawable(C1843R.C1845drawable.close_button).getIntrinsicHeight()));
            if (!m548a.isStatus()) {
                this.f1159a.m524a(m548a.f1123b, "resize");
                return;
            }
            int i7 = m548a.getxPosition();
            int i8 = m548a.getyPosition();
            int width = m548a.getWidth();
            int height = m548a.getHeight();
            View$OnTouchListenerC2053t view$OnTouchListenerC2053t2 = this.f1167i;
            if (view$OnTouchListenerC2053t2 == null) {
                ViewGroup viewGroup = (ViewGroup) this.f1159a.f1145a.getParent();
                this.f1166h = viewGroup;
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1159a.f1145a);
                }
                this.f1167i = new View$OnTouchListenerC2053t(this.f1175q);
                this.f1167i.m454a((ViewGroup) this.f1166h.getRootView(), this.f1159a.f1145a, width, height, i7, i8, new C2043d());
                this.f1167i.m446d();
                if (this.f1163e != null && this.f1167i.m448c() != null) {
                    this.f1163e.onObstructionAdded(this.f1167i.m448c());
                }
            } else {
                view$OnTouchListenerC2053t2.m455a(width, height, i7, i8);
            }
            if (this.f1159a.m520b() == EnumC2020b.DEFAULT) {
                m464q();
            }
            this.f1159a.m533a(EnumC2020b.RESIZED);
            m491b(this.f1159a, false);
            this.f1161c = this.f1159a;
        } else {
            PMLog.debug("POBMraidController", "Ad is already open in " + this.f1159a.m520b().m561a() + " state!", new Object[0]);
            C2034n c2034n = this.f1159a;
            c2034n.m524a("Ad is already open in " + this.f1159a.m520b().m561a() + " state!", "resize");
        }
        if (this.f1163e == null || (view$OnTouchListenerC2053t = this.f1167i) == null || view$OnTouchListenerC2053t.m448c() == null) {
            return;
        }
        this.f1163e.onObstructionAdded(this.f1167i.m448c());
    }

    /* renamed from: a */
    private void m500a(POBWebView pOBWebView, C2034n c2034n) {
        if (this.f1172n == 0) {
            this.f1172n = pOBWebView.getWidth();
        }
        if (this.f1173o == 0) {
            this.f1173o = pOBWebView.getHeight();
        }
        ViewGroup viewGroup = (ViewGroup) pOBWebView.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(pOBWebView);
        }
        C2044e c2044e = new C2044e(pOBWebView, viewGroup);
        POBMraidViewContainer pOBMraidViewContainer = new POBMraidViewContainer(this.f1175q, pOBWebView, this.f1179u);
        POBInstanceProvider.getAdViewCacheService().storeAdView(Integer.valueOf(this.f1179u), new POBAdViewCacheService.AdViewConfig(pOBMraidViewContainer, c2044e));
        Intent intent = new Intent();
        intent.putExtra(POBFullScreenActivity.RENDERER_IDENTIFIER, this.f1179u);
        Map<String, String> map = this.f1170l;
        if (map != null && !map.isEmpty()) {
            String str = this.f1170l.get("forceOrientation");
            if (str != null) {
                intent.putExtra(POBFullScreenActivity.REQUESTED_ORIENTATION, str.equals("landscape") ? 2 : 1);
            }
            String str2 = this.f1170l.get("allowOrientationChange");
            if (str2 != null) {
                intent.putExtra(POBFullScreenActivity.ALLOW_ORIENTATION_CHANGE, Boolean.parseBoolean(str2));
            }
        }
        POBFullScreenActivity.startActivity(this.f1175q, intent);
        View$OnTouchListenerC2053t view$OnTouchListenerC2053t = this.f1167i;
        if (view$OnTouchListenerC2053t != null) {
            view$OnTouchListenerC2053t.m451a(false);
            this.f1167i.m456a();
        }
        if (this.f1159a.m520b() == EnumC2020b.DEFAULT) {
            m464q();
        }
        c2034n.m533a(EnumC2020b.EXPANDED);
        AbstractC2050q abstractC2050q = this.f1163e;
        if (abstractC2050q != null) {
            abstractC2050q.onAdViewChanged(pOBWebView);
            ImageView closeBtn = pOBMraidViewContainer.getCloseBtn();
            if (closeBtn == null) {
                return;
            }
            this.f1163e.onObstructionAdded(closeBtn);
        }
    }

    /* renamed from: a */
    public void m499a(Double d) {
        if (d == null) {
            this.f1161c.m527a((Double) null);
        } else {
            this.f1161c.m527a(d);
        }
    }

    /* renamed from: a */
    private void m498a(String str) {
        this.f1171m = true;
        POBWebView createInstance = POBWebView.createInstance(this.f1175q);
        if (createInstance == null) {
            PMLog.error("POBMraidController", "Unable to render two-part expand, as webview is not available", new Object[0]);
            this.f1159a.m524a("Unable to render two-part expand.", "expand");
            return;
        }
        createInstance.getSettings().setJavaScriptEnabled(true);
        View$OnTouchListenerC2049i view$OnTouchListenerC2049i = new View$OnTouchListenerC2049i();
        this.f1162d = view$OnTouchListenerC2049i;
        createInstance.setOnTouchListener(view$OnTouchListenerC2049i);
        m507a(createInstance);
        C2034n c2034n = new C2034n(createInstance);
        m506a(c2034n, true);
        c2034n.m528a(this);
        createInstance.setWebViewClient(new C2045f(c2034n, createInstance));
        m500a(createInstance, c2034n);
        createInstance.loadUrl(str);
    }

    /* renamed from: a */
    public void m495a(boolean z) {
        float f;
        JSONObject jSONObject;
        if (!z) {
            jSONObject = C2033m.m549a(0, 0, 0, 0);
            f = 0.0f;
        } else {
            Rect rect = new Rect();
            this.f1161c.f1145a.getGlobalVisibleRect(rect);
            f = ((rect.height() * rect.width()) / (this.f1161c.f1145a.getHeight() * this.f1161c.f1145a.getWidth())) * 100.0f;
            jSONObject = C2033m.m549a(POBUtils.convertPixelToDp(rect.left), POBUtils.convertPixelToDp(rect.top), POBUtils.convertPixelToDp(rect.width()), POBUtils.convertPixelToDp(rect.height()));
        }
        if (Math.abs(this.f1174p - f) > 1.0f) {
            this.f1174p = f;
            PMLog.debug("POBMraidController", "visible percentage :" + f, new Object[0]);
            this.f1161c.m526a(Float.valueOf(this.f1174p), jSONObject);
        }
    }

    /* renamed from: b */
    private String m492b(Context context) {
        return POBUtils.getDeviceOrientation(context) == 2 ? "sensor_landscape" : "portrait";
    }

    /* renamed from: c */
    public boolean m487c() {
        return this.f1168j;
    }

    /* renamed from: d */
    private void m484d() {
        if (this.f1164f == null) {
            this.f1164f = new C2041b();
        }
        C2021c.m560a().m557a(this.f1175q, this.f1164f);
        m461t();
    }

    /* renamed from: e */
    private void m481e() {
        if (this.f1165g == null) {
            this.f1165g = new ViewTreeObserver$OnScrollChangedListenerC2042c();
        }
        this.f1161c.f1145a.getViewTreeObserver().addOnScrollChangedListener(this.f1165g);
        m495a(true);
    }

    /* renamed from: f */
    private void m478f() {
        if (this.f1166h != null) {
            this.f1166h.addView(this.f1159a.f1145a, new FrameLayout.LayoutParams(this.f1172n, this.f1173o));
            this.f1166h = null;
            this.f1159a.f1145a.requestFocus();
            this.f1172n = 0;
            this.f1173o = 0;
            AbstractC2050q abstractC2050q = this.f1163e;
            if (abstractC2050q == null) {
                return;
            }
            abstractC2050q.onObstructionRemoved(null);
            this.f1163e.onAdViewChanged(this.f1159a.f1145a);
        }
    }

    /* renamed from: g */
    private void m476g() {
        Intent intent = new Intent(POBFullScreenActivity.ACTIONS.POB_CLOSE.name());
        intent.putExtra(POBFullScreenActivity.RENDERER_IDENTIFIER, this.f1179u);
        POBFullScreenActivity.sendBroadcast(this.f1175q, intent);
    }

    /* renamed from: h */
    private void m474h() {
        Intent intent = new Intent();
        intent.setAction(POBVideoPlayerActivity.ACTION_FINISH);
        this.f1175q.sendBroadcast(intent);
    }

    /* renamed from: j */
    public void m471j() {
        POBNetworkHandler pOBNetworkHandler = this.f1176r;
        if (pOBNetworkHandler != null) {
            pOBNetworkHandler.cancelRequest("POBMraidController");
            this.f1176r = null;
        }
        this.f1177s = null;
    }

    /* renamed from: k */
    private void m470k() {
        View$OnTouchListenerC2053t view$OnTouchListenerC2053t = this.f1167i;
        if (view$OnTouchListenerC2053t != null) {
            view$OnTouchListenerC2053t.m450b();
            m478f();
            this.f1167i = null;
        }
    }

    /* renamed from: l */
    private POBNetworkHandler.POBImageNetworkListener<String> m469l() {
        return new C2039a();
    }

    /* renamed from: m */
    private boolean m468m() {
        return this.f1161c != this.f1159a;
    }

    /* renamed from: n */
    public void m467n() {
        m470k();
        Map<String, String> map = this.f1170l;
        if (map != null) {
            map.clear();
        }
        this.f1159a.m533a(EnumC2020b.DEFAULT);
        if (m468m()) {
            m491b(this.f1159a, false);
            this.f1159a.m528a(this);
            m506a(this.f1159a, false);
        }
        this.f1161c = this.f1159a;
        m465p();
    }

    /* renamed from: o */
    private void m466o() {
        AbstractC2050q abstractC2050q = this.f1163e;
        if (abstractC2050q != null) {
            abstractC2050q.onMRAIDAdClick();
        }
    }

    /* renamed from: p */
    private void m465p() {
        AbstractC2050q abstractC2050q = this.f1163e;
        if (abstractC2050q != null) {
            abstractC2050q.onAdInteractionStopped();
        }
    }

    /* renamed from: q */
    private void m464q() {
        AbstractC2050q abstractC2050q = this.f1163e;
        if (abstractC2050q != null) {
            abstractC2050q.onAdInteractionStarted();
        }
    }

    /* renamed from: r */
    private void m463r() {
        C2021c.m560a().m554b(this.f1175q, this.f1164f);
        this.f1164f = null;
    }

    /* renamed from: s */
    private void m462s() {
        if (this.f1165g != null) {
            this.f1161c.f1145a.getViewTreeObserver().removeOnScrollChangedListener(this.f1165g);
            this.f1165g = null;
        }
    }

    /* renamed from: t */
    private void m461t() {
        m499a(m487c() ? m509a(this.f1175q) : null);
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: a */
    public void mo513a() {
        AbstractC2050q abstractC2050q;
        PMLog.debug("POBMraidController", "Received MRAID close event", new Object[0]);
        if (!this.f1160b.equals(POBCommonConstants.BANNER_PLACEMENT_TYPE)) {
            if (!this.f1160b.equals(POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE) || (abstractC2050q = this.f1163e) == null) {
                return;
            }
            abstractC2050q.onAdInteractionStopped();
            return;
        }
        int i = C2047g.f1193a[this.f1161c.m520b().ordinal()];
        if (i == 1) {
            m476g();
        } else if (i != 2) {
        } else {
            m467n();
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: a */
    public void mo512a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        if (!this.f1160b.equals(POBCommonConstants.BANNER_PLACEMENT_TYPE)) {
            PMLog.error("POBMraidController", "Can't resize Interstitial ad.", new Object[0]);
            this.f1159a.m524a("Can't perform resize on Interstitial ad.", "resize");
            return;
        }
        if (z2) {
            m466o();
        }
        m508a(this.f1175q, i, i2, i3, i4, z);
    }

    /* renamed from: a */
    public void m507a(WebView webView) {
        webView.setWebChromeClient(new C2048h(null));
        try {
            webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        } catch (NoSuchMethodError e) {
            PMLog.error("POBMraidController", "Not able to add inline video support to WebView, %s", e.getLocalizedMessage());
        }
    }

    /* renamed from: a */
    public void m506a(C2034n c2034n, boolean z) {
        c2034n.m532a(new C2029i());
        c2034n.m532a(new C2026f());
        c2034n.m532a(new C2031k());
        c2034n.m532a(new C2032l());
        c2034n.m532a(new C2025e());
        c2034n.m532a(new C2052s());
        c2034n.m532a(new C2024d());
        c2034n.m532a(new C2058u());
        if (!z) {
            c2034n.m532a(new C2028h());
            c2034n.m532a(new C2030j());
        }
    }

    /* renamed from: a */
    public void m501a(AbstractC2050q abstractC2050q) {
        this.f1163e = abstractC2050q;
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: a */
    public void mo497a(String str, boolean z) {
        PMLog.debug("POBMraidController", "Received MRAID event to open url : %s", str);
        AbstractC2050q abstractC2050q = this.f1163e;
        if (abstractC2050q != null) {
            abstractC2050q.onOpen(str);
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: a */
    public void mo496a(JSONObject jSONObject, boolean z) {
        if (z) {
            m466o();
        }
        try {
            Map<String, Object> m543a = C2033m.m543a(new JSONObject(jSONObject.optString(NotificationCompat.CATEGORY_EVENT)));
            PMLog.debug("POBMraidController", "calendarParams :%s", m543a.toString());
            Intent type = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.item/event");
            for (String str : m543a.keySet()) {
                Object obj = m543a.get(str);
                if (obj instanceof Long) {
                    type.putExtra(str, ((Long) obj).longValue());
                } else if (obj instanceof Integer) {
                    type.putExtra(str, ((Integer) obj).intValue());
                } else {
                    type.putExtra(str, (String) obj);
                }
            }
            type.setFlags(268435456);
            this.f1175q.startActivity(type);
            AbstractC2050q abstractC2050q = this.f1163e;
            if (abstractC2050q == null) {
                return;
            }
            abstractC2050q.onLeavingApplication();
        } catch (ActivityNotFoundException e) {
            C2034n c2034n = this.f1161c;
            c2034n.m524a("Device does not have calendar app." + e.getLocalizedMessage(), "createCalendarEvent");
            PMLog.error("POBMraidController", "Device does not have calendar app.%s", e.getLocalizedMessage());
        } catch (IllegalArgumentException e2) {
            C2034n c2034n2 = this.f1161c;
            c2034n2.m524a("Error parsing calendar event data." + e2.getLocalizedMessage(), "createCalendarEvent");
            PMLog.error("POBMraidController", "Error parsing calendar event data.%s", e2.getLocalizedMessage());
        } catch (Exception e3) {
            C2034n c2034n3 = this.f1161c;
            c2034n3.m524a("Something went wrong." + e3.getLocalizedMessage(), "createCalendarEvent");
            PMLog.error("POBMraidController", "Something went wrong.%s", e3.getLocalizedMessage());
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: a */
    public void mo494a(boolean z, String str, boolean z2) {
        if (z2) {
            m466o();
        }
        if (this.f1170l != null) {
            if (str.equalsIgnoreCase("portrait") || str.equalsIgnoreCase("landscape")) {
                this.f1170l.put("forceOrientation", str);
            } else if (POBUtils.getDeviceOrientation(this.f1175q) == 2) {
                this.f1170l.put("forceOrientation", "landscape");
            } else {
                this.f1170l.put("forceOrientation", "portrait");
            }
            this.f1170l.put("allowOrientationChange", String.valueOf(z));
        }
        EnumC2020b m520b = this.f1161c.m520b();
        if ((!this.f1160b.equals(POBCommonConstants.BANNER_PLACEMENT_TYPE) || !m520b.equals(EnumC2020b.EXPANDED)) && (!this.f1160b.equals(POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE) || !m520b.equals(EnumC2020b.DEFAULT))) {
            PMLog.error("POBMraidController", "Can't perform orientation properties. invalid MRAID state: %s", m520b.m561a());
            return;
        }
        PMLog.debug("POBMraidController", "setOrientation : allowOrientationChange :" + z + ", forceOrientation:" + str, new Object[0]);
        Context baseContext = ((MutableContextWrapper) this.f1161c.f1145a.getContext()).getBaseContext();
        if (!(baseContext instanceof Activity)) {
            return;
        }
        Activity activity = (Activity) baseContext;
        m511a(activity, str);
        m510a(activity, z);
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: b */
    public void mo493b() {
        String str = this.f1160b;
        str.hashCode();
        if (str.equals(POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE)) {
            mo513a();
        } else if (!str.equals(POBCommonConstants.BANNER_PLACEMENT_TYPE)) {
            PMLog.error("POBMraidController", "Can't perform unload as no specific placement type found.", new Object[0]);
        } else {
            AbstractC2050q abstractC2050q = this.f1163e;
            if (abstractC2050q == null) {
                return;
            }
            abstractC2050q.onAdUnload();
        }
    }

    /* renamed from: b */
    public void m491b(C2034n c2034n, boolean z) {
        POBWebView pOBWebView = c2034n.f1145a;
        int i = POBUtils.getViewXYPosition(pOBWebView)[0];
        int i2 = POBUtils.getViewXYPosition(pOBWebView)[1];
        int convertPixelToDp = POBUtils.convertPixelToDp(pOBWebView.getWidth());
        int convertPixelToDp2 = POBUtils.convertPixelToDp(pOBWebView.getHeight());
        DisplayMetrics displayMetrics = this.f1175q.getResources().getDisplayMetrics();
        int convertPixelToDp3 = POBUtils.convertPixelToDp(displayMetrics.widthPixels);
        int convertPixelToDp4 = POBUtils.convertPixelToDp(displayMetrics.heightPixels);
        if (z) {
            c2034n.m519b(convertPixelToDp3, convertPixelToDp4);
            c2034n.m518b(i, i2, convertPixelToDp, convertPixelToDp2);
            c2034n.m516b(this.f1160b);
            boolean m547a = C2033m.m547a(this.f1175q);
            c2034n.m521a(m547a, m547a, true, true, true, true, false);
            c2034n.m535a(POBUtils.getLocation(this.f1178t));
            c2034n.m517b(c2034n.m520b());
            c2034n.m534a(EnumC2019a.READY);
            c2034n.m522a(true);
        }
        boolean m537a = c2034n.m537a(convertPixelToDp3, convertPixelToDp4);
        boolean m536a = c2034n.m536a(i, i2, convertPixelToDp, convertPixelToDp2);
        if (m537a || m536a) {
            c2034n.m514c(convertPixelToDp, convertPixelToDp2);
        }
        c2034n.m517b(c2034n.m520b());
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: b */
    public void mo488b(String str, boolean z) {
        if ("audioVolumeChange".equalsIgnoreCase(str)) {
            if (z) {
                m484d();
            } else {
                m463r();
            }
        } else if ("exposureChange".equalsIgnoreCase(str)) {
            if (z) {
                m481e();
            } else {
                m462s();
            }
        } else if ("viewableChange".equalsIgnoreCase(str)) {
            this.f1169k = z;
        } else {
            PMLog.error("POBMraidController", "Listener change not found for command " + str, new Object[0]);
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: c */
    public void mo485c(String str, boolean z) {
        String str2;
        C2034n c2034n;
        if (z) {
            m466o();
        }
        if (str != null && str.isEmpty()) {
            c2034n = this.f1161c;
            str2 = "Missing picture url.";
        } else if (POBUtils.hasPermission(this.f1175q, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            if (this.f1176r == null) {
                this.f1176r = new POBNetworkHandler(this.f1175q);
            }
            if (this.f1177s == null) {
                this.f1177s = m469l();
            }
            POBImageRequest pOBImageRequest = new POBImageRequest();
            pOBImageRequest.setUrl(str);
            pOBImageRequest.setTimeout(5000);
            pOBImageRequest.setRequestTag("POBMraidController");
            this.f1176r.sendImageRequest(pOBImageRequest, this.f1177s);
            return;
        } else {
            c2034n = this.f1161c;
            str2 = "App does not have WRITE_EXTERNAL_STORAGE permission to store the picture.";
        }
        c2034n.m524a(str2, "storePicture");
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: d */
    public void mo482d(String str, boolean z) {
        if (z) {
            m466o();
        }
        boolean z2 = false;
        if (POBUtils.isNullOrEmpty(str)) {
            PMLog.debug("POBMraidController", "Can't launch video player due to invalid URL", new Object[0]);
            return;
        }
        String str2 = null;
        if (this.f1160b.equals(POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE)) {
            str2 = m492b(this.f1175q);
        }
        Map<String, String> map = this.f1170l;
        String str3 = str2;
        if (map != null) {
            if (map.get("forceOrientation") != null) {
                str2 = this.f1170l.get("forceOrientation");
            }
            z2 = Boolean.parseBoolean(this.f1170l.get("allowOrientationChange"));
            str3 = str2;
        }
        Intent intent = new Intent(this.f1175q, POBVideoPlayerActivity.class);
        if (str3 != null) {
            intent.putExtra(POBVideoPlayerActivity.FORCE_ORIENTATION_KEY, str3);
            intent.putExtra(POBVideoPlayerActivity.ALLOW_ORIENTATION_KEY, z2);
        }
        intent.putExtra(POBVideoPlayerActivity.PLAYBACK_URL, str);
        intent.addFlags(268435456);
        this.f1175q.startActivity(intent);
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    /* renamed from: e */
    public void mo479e(String str, boolean z) {
        if (!this.f1160b.equals(POBCommonConstants.BANNER_PLACEMENT_TYPE)) {
            PMLog.error("POBMraidController", "Can't expand interstitial ad.", new Object[0]);
            this.f1159a.m524a("Can't expand interstitial ad.", "expand");
            return;
        }
        if (z) {
            m466o();
        }
        if (this.f1159a.m520b() != EnumC2020b.DEFAULT && this.f1159a.m520b() != EnumC2020b.RESIZED) {
            return;
        }
        if (str != null && !str.isEmpty()) {
            m498a(str);
            return;
        }
        C2034n c2034n = this.f1159a;
        m500a(c2034n.f1145a, c2034n);
    }

    /* renamed from: i */
    public void m472i() {
        m463r();
        m462s();
        m471j();
        m470k();
        POBNetworkHandler pOBNetworkHandler = this.f1176r;
        if (pOBNetworkHandler != null) {
            pOBNetworkHandler.cancelRequest("POBMraidController");
            this.f1176r = null;
        }
        this.f1177s = null;
        m474h();
        this.f1169k = false;
        if (this.f1159a.m520b() == EnumC2020b.EXPANDED) {
            m476g();
        }
        this.f1178t = null;
        this.f1170l = null;
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2037o
    public boolean isUserInteracted(boolean z) {
        View$OnTouchListenerC2049i view$OnTouchListenerC2049i;
        if (!m468m() || (view$OnTouchListenerC2049i = this.f1162d) == null) {
            AbstractC2050q abstractC2050q = this.f1163e;
            return abstractC2050q != null && abstractC2050q.isUserInteracted(z);
        }
        return view$OnTouchListenerC2049i.m459a();
    }

    @Override // com.pubmatic.sdk.webrendering.p021ui.POBAdVisibilityListener
    public void onVisibilityChange(boolean z) {
        if (this.f1168j != z) {
            this.f1168j = z;
            StringBuilder sb = new StringBuilder();
            sb.append("MRAID Ad Visibility changed ");
            sb.append(z ? "VISIBLE" : "INVISIBLE");
            PMLog.debug("POBMraidController", sb.toString(), new Object[0]);
            if (this.f1165g != null) {
                m495a(this.f1168j);
            }
            if (this.f1169k) {
                this.f1161c.m522a(this.f1168j);
            }
            if (this.f1164f == null) {
                return;
            }
            m461t();
        }
    }
}
