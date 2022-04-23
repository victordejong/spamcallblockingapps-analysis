package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import com.a.a.a.a.a.c;
import com.a.a.a.a.a.d;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.e.h;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.m;
import com.bytedance.sdk.openadsdk.core.f;
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.d.k;
import com.bytedance.sdk.openadsdk.d.q;
import com.bytedance.sdk.openadsdk.dislike.b;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.n;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import net.pubnative.lite.sdk.models.APIAsset;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView.class */
public class NativeExpressView extends FrameLayout implements j {
    private float C;
    private float D;
    private k F;
    private q G;

    /* renamed from: a  reason: collision with root package name */
    private b f9025a;

    /* renamed from: b  reason: collision with root package name */
    private TTDislikeDialogAbstract f9026b;

    /* renamed from: c  reason: collision with root package name */
    private String f9027c;

    /* renamed from: d  reason: collision with root package name */
    private String f9028d;
    private int e;
    protected final Context g;
    protected WeakReference<SSWebView> h;
    protected w i;
    protected String j;
    protected AdSlot k;
    public i l;
    protected TTNativeExpressAd.ExpressVideoAdListener m;
    protected FrameLayout n;
    protected boolean o;
    protected ScheduledFuture<?> q;
    protected c r;
    protected BackupView t;
    private int u;
    private TTNativeExpressAd.ExpressAdInteractionListener v;
    private d w;
    private e x;
    protected final AtomicBoolean f = new AtomicBoolean(false);
    private final Map<String, c> y = Collections.synchronizedMap(new HashMap());
    private final AtomicBoolean z = new AtomicBoolean(false);
    private final AtomicBoolean A = new AtomicBoolean(false);
    private String B = null;
    protected boolean p = false;
    protected boolean s = false;
    private final AtomicBoolean E = new AtomicBoolean(false);
    private String H = "{\"id\":0,\"tplId\":0,\"title\":\"\",\"data\":{\"id\":\"root\",\"type\":\"vessel\",\"values\":{\"widthMode\":\"fixed\",\"width\":320,\"height\":320},\"children\":[[{\"type\":\"text\",\"values\":{\"fontSize\":19,\"fontWeight\":500,\"color\":\"#222222\",\"lineHeight\":1.3,\"data\":\"title\"}}],[{\"type\":\"text\",\"values\":{\"fontSize\":15,\"fontWeight\":500,\"color\":\"#999999\",\"lineHeight\":1,\"data\":\"subtitle\"}}],[{\"type\":\"image\",\"values\":{},\"children\":[]}],[{\"type\":\"vessel\",\"values\":{\"height\":40,\"paddingTop\":10,\"paddingRight\":15,\"paddingBottom\":10,\"paddingLeft\":15},\"children\":[[{\"type\":\"logo\",\"values\":{}},{\"type\":\"text\",\"values\":{\"widthMode\":\"auto\",\"paddingTop\":3,\"paddingRight\":0,\"paddingBottom\":3,\"paddingLeft\":6,\"fontSize\":12,\"color\":\"#999999\",\"lineHeight\":1,\"data\":\"source\"}},{\"type\":\"text\",\"values\":{\"widthMode\":\"auto\",\"paddingTop\":3,\"paddingRight\":0,\"paddingBottom\":3,\"paddingLeft\":10,\"fontSize\":12,\"color\":\"#999999\",\"lineHeight\":1,\"data\":\"time\"}},{\"type\":\"empty\",\"values\":{\"height\":18}},{\"type\":\"dislike\",\"values\":{}}]]}]]}}";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$a.class */
    public class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private int f9035b;

        public a(int i) {
            this.f9035b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9035b == 1) {
                com.bytedance.sdk.openadsdk.utils.q.c("NativeExpressView", "MSG_RENDER_TIME_OUT-->OnAdRenderRunnable......run....");
                NativeExpressView.this.a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 107);
            }
        }
    }

    public NativeExpressView(Context context, i iVar, AdSlot adSlot, String str) {
        super(context);
        this.j = "embeded_ad";
        this.j = str;
        this.g = context;
        this.l = iVar;
        a(adSlot);
        a();
    }

    private void a(float f, float f2) {
        if (f > BitmapDescriptorFactory.HUE_RED && f2 > BitmapDescriptorFactory.HUE_RED) {
            int a2 = (int) ag.a(this.g, f);
            int a3 = (int) ag.a(this.g, f2);
            com.bytedance.sdk.openadsdk.utils.q.e("ExpressView", "width:".concat(String.valueOf(a2)));
            com.bytedance.sdk.openadsdk.utils.q.e("ExpressView", "height:".concat(String.valueOf(a3)));
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getWebView().getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = new FrameLayout.LayoutParams(a2, a3);
            }
            layoutParams2.width = a2;
            layoutParams2.height = a3;
            getWebView().setLayoutParams(layoutParams2);
        }
    }

    private void a(int i) {
        com.bytedance.sdk.openadsdk.i.a.a().b(com.bytedance.sdk.openadsdk.i.a.b.b().a(getAdSlotType()).c(this.B).e(af.h(this.f9028d)).b(i).f(f.a(i)));
    }

    private void a(AdSlot adSlot) {
        this.k = adSlot;
        if (adSlot != null) {
            this.C = adSlot.getExpressViewAcceptedWidth();
            this.D = this.k.getExpressViewAcceptedHeight();
        }
    }

    private void a(SSWebView sSWebView) {
        if (sSWebView != null) {
            try {
                com.bytedance.sdk.openadsdk.core.widget.webview.a.a(this.g).a(!this.j.equals("embeded_ad")).a(sSWebView);
                sSWebView.setVerticalScrollBarEnabled(false);
                sSWebView.setHorizontalScrollBarEnabled(false);
                sSWebView.clearCache(true);
                sSWebView.clearHistory();
                WebSettings settings = sSWebView.getSettings();
                settings.setUserAgentString(n.a(sSWebView, this.u));
                if (Build.VERSION.SDK_INT >= 21) {
                    settings.setMixedContentMode(0);
                }
                settings.setJavaScriptEnabled(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(true);
                settings.setCacheMode(2);
                settings.setDomStorageEnabled(true);
                settings.setDatabaseEnabled(true);
                settings.setAppCacheEnabled(true);
                settings.setAllowFileAccess(true);
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
                settings.setUseWideViewPort(true);
            } catch (Exception e) {
                com.bytedance.sdk.openadsdk.utils.q.e("NativeExpressView", e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z, float f, float f2, int i) {
        boolean z2 = true;
        if (!this.f.getAndSet(true)) {
            if (z) {
                this.G.b();
                a(f, f2);
                TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener = this.v;
                if (expressAdInteractionListener != null) {
                    expressAdInteractionListener.onRenderSuccess(this, f, f2);
                }
            } else {
                this.G.a(i);
                this.G.c();
                this.G.a(true);
                c cVar = this.r;
                if (cVar == null || !cVar.a(this, i)) {
                    z2 = false;
                }
                this.s = z2;
                this.G.d();
                if (this.s) {
                    g();
                    e.e(com.bytedance.sdk.openadsdk.core.n.a(), this.l, this.j, "dynamic_backup_render", null);
                    BackupView backupView = (BackupView) findViewWithTag("tt_express_backup_fl_tag_26");
                    this.t = backupView;
                    TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener2 = this.v;
                    if (expressAdInteractionListener2 != null) {
                        expressAdInteractionListener2.onRenderSuccess(this, backupView.getRealWidth(), this.t.getRealHeight());
                    }
                } else {
                    TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener3 = this.v;
                    if (expressAdInteractionListener3 != null) {
                        expressAdInteractionListener3.onRenderFail(this, f.a(i), i);
                    }
                }
                a(i);
            }
            this.G.h();
            this.G.i();
        }
    }

    private void c() {
        this.f9027c = this.l.P();
        this.f9028d = this.l.S();
        this.u = 3505;
        this.e = af.a(this.j);
        this.B = this.k.getCodeId();
    }

    private void d() {
        a(getWebView());
        k a2 = new k(this.g, this.l, getWebView()).a(false);
        this.F = a2;
        a2.a(this.G);
        getWebView().setWebViewClient(new f(this.g, this.i, this.l, this.F));
        getWebView().setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.webview.b(this.i, this.F));
        getWebView().setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                d.a(NativeExpressView.this.g, NativeExpressView.this.l, NativeExpressView.this.j).e();
            }
        });
    }

    private boolean e() {
        i iVar = this.l;
        return iVar != null && iVar.z() != null && !TextUtils.isEmpty(this.l.z().b()) && !TextUtils.isEmpty(this.l.z().e());
    }

    private boolean f() {
        return i.d(this.l);
    }

    private void g() {
        com.bytedance.sdk.openadsdk.i.a.a().a(com.bytedance.sdk.openadsdk.i.a.b.b().a(getAdSlotType()).c(this.B).e(af.h(this.f9028d)).a("dynamic_backup_render_new"));
    }

    private int getAdSlotType() {
        String str = this.j;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1364000502:
                if (str.equals(AdType.REWARDED_VIDEO)) {
                    c2 = 1;
                    break;
                }
                break;
            case -764631662:
                if (str.equals("fullscreen_interstitial_ad")) {
                    c2 = 2;
                    break;
                }
                break;
            case 174971131:
                if (str.equals("splash_ad")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1912999166:
                if (str.equals("draw_ad")) {
                    c2 = 5;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 1;
            case 1:
                return 7;
            case 2:
                return 8;
            case 3:
                return 3;
            case 4:
                return 2;
            case 5:
                return 9;
            default:
                return 5;
        }
    }

    private JSONObject getCreativeJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("button_text", this.l.O());
            if (this.l.E() != null) {
                jSONObject.put(APIAsset.ICON, this.l.E().a());
            }
            JSONArray jSONArray = new JSONArray();
            if (this.l.H() != null) {
                for (int i = 0; i < this.l.H().size(); i++) {
                    h hVar = this.l.H().get(i);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("height", hVar.c());
                    jSONObject2.put("width", hVar.b());
                    jSONObject2.put("url", hVar.a());
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("image", jSONArray);
            jSONObject.put("image_mode", this.l.T());
            jSONObject.put("interaction_type", this.l.D());
            jSONObject.put("title", this.l.M());
            jSONObject.put("description", this.l.N());
            jSONObject.put(Payload.SOURCE, this.l.C());
            if (this.l.Q() != null) {
                jSONObject.put("comment_num", this.l.Q().e());
                jSONObject.put("score", this.l.Q().d());
                jSONObject.put("app_size", this.l.Q().f());
                jSONObject.put("app", this.l.Q().g());
            }
            if (this.l.B() != null) {
                jSONObject.put("video", this.l.B().l());
            }
            if (this.l.z() != null) {
                jSONObject.put("dynamic_creative", this.l.z().g());
            }
            return jSONObject;
        } catch (Exception e) {
            return null;
        }
    }

    private JSONObject getTemplateInfo() {
        String str;
        String str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", Constants.ANDROID_PLATFORM);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", this.C);
            jSONObject2.put("height", this.D);
            if (this.p) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObject.put("AdSize", jSONObject2);
            jSONObject.put("creative", getCreativeJson());
            if (this.l.z() != null) {
                str = this.l.z().e();
                str2 = this.l.z().f();
            } else {
                str = null;
                str2 = null;
            }
            if (!TextUtils.isEmpty(str)) {
                this.H = str;
            } else if (com.bytedance.sdk.openadsdk.core.widget.webview.a.a.b(this.l) != null) {
                this.H = com.bytedance.sdk.openadsdk.core.widget.webview.a.a.b(this.l).e();
            }
            jSONObject.put("template_Plugin", this.H);
            jSONObject.put("diff_template_Plugin", str2);
            return jSONObject;
        } catch (Exception e) {
            return null;
        }
    }

    private void o() {
        if (this.z.getAndSet(false) && getWebView().getParent() == null && !this.s) {
            com.bytedance.sdk.openadsdk.utils.q.e("webviewpool", "attachCallback+++========-----------===========");
            a();
            i();
        }
    }

    private void p() {
        if (!this.z.getAndSet(true) && !this.s) {
            com.bytedance.sdk.openadsdk.core.widget.webview.d.a().a(this, this.h, k());
        }
    }

    private void q() {
        try {
            ScheduledFuture<?> scheduledFuture = this.q;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                com.bytedance.sdk.openadsdk.utils.q.b("NativeExpressView", "MSG_RENDER_TIME_OUT-->mRenderTimeOutFuture-->cancel.....success=".concat(String.valueOf(this.q.cancel(false))));
                this.q = null;
            }
        } catch (Throwable th) {
        }
    }

    public void a() {
        setBackgroundColor(0);
        if (getWebView().getParent() != null) {
            ((ViewGroup) getWebView().getParent()).removeView(getWebView());
        }
        getWebView().setBackgroundColor(0);
        addView(getWebView(), new FrameLayout.LayoutParams(-1, -1));
        c();
        b();
        d();
        getWebView().addJavascriptInterface(this.i, "SDK_INJECT_GLOBAL");
    }

    public void a(int i, g gVar) {
        if (i != -1 && gVar != null) {
            int i2 = gVar.f8886a;
            int i3 = gVar.f8887b;
            int i4 = gVar.f8888c;
            int i5 = gVar.f8889d;
            String str = gVar.k;
            if (i == 1) {
                FrameLayout frameLayout = this.n;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                }
                e eVar = this.x;
                if (eVar != null) {
                    eVar.a(gVar);
                    this.x.a(str);
                    this.x.a(this, i2, i3, i4, i5);
                }
                TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener = this.v;
                if (expressAdInteractionListener != null) {
                    expressAdInteractionListener.onAdClicked(this, this.l.D());
                }
            } else if (i == 2) {
                d dVar = this.w;
                if (dVar != null) {
                    dVar.a(gVar);
                    this.w.a(str);
                    this.w.a(this, i2, i3, i4, i5);
                }
                TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener2 = this.v;
                if (expressAdInteractionListener2 != null) {
                    expressAdInteractionListener2.onAdClicked(this, this.l.D());
                }
            } else if (i == 3) {
                TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f9026b;
                if (tTDislikeDialogAbstract != null) {
                    tTDislikeDialogAbstract.show();
                } else {
                    b bVar = this.f9025a;
                    if (bVar != null) {
                        bVar.showDislikeDialog();
                    } else {
                        TTDelegateActivity.a(this.l);
                    }
                }
                TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener3 = this.v;
                if (expressAdInteractionListener3 != null) {
                    expressAdInteractionListener3.onAdClicked(this, this.l.D());
                }
            } else if (i == 4) {
                FrameLayout frameLayout2 = this.n;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                }
                com.bytedance.sdk.openadsdk.utils.q.b("ClickCreativeListener", "创意....mAdType=" + this.j + ",!mVideoPause=" + (true ^ this.o) + "，isAutoPlay=" + af.g(this.l));
                if (!"embeded_ad".equals(this.j) || !f() || this.o || !af.g(this.l)) {
                    com.bytedance.sdk.openadsdk.utils.q.b("ClickCreativeListener", "普通....");
                    e eVar2 = this.x;
                    if (eVar2 != null) {
                        eVar2.a(gVar);
                        this.x.a(str);
                        this.x.a(this, i2, i3, i4, i5);
                    }
                } else {
                    com.bytedance.sdk.openadsdk.utils.q.b("ClickCreativeListener", "创意....");
                    d dVar2 = this.w;
                    if (dVar2 != null) {
                        dVar2.a(gVar);
                        this.w.a(str);
                        this.w.a(this, i2, i3, i4, i5);
                    }
                }
                TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener4 = this.v;
                if (expressAdInteractionListener4 != null) {
                    expressAdInteractionListener4.onAdClicked(this, this.l.D());
                }
            }
        }
    }

    public void a(com.bytedance.sdk.openadsdk.core.e.k kVar) {
        int i = 0;
        if (kVar == null) {
            a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 105);
            return;
        }
        boolean a2 = kVar.a();
        float b2 = (float) kVar.b();
        float c2 = (float) kVar.c();
        if (!a2) {
            i = kVar.h();
        }
        a(a2, b2, c2, i);
    }

    protected void a(final boolean z, final float f, final float f2, final int i) {
        q();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            b(z, f, f2, i);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.2
                @Override // java.lang.Runnable
                public void run() {
                    if (NativeExpressView.this.l != null) {
                        NativeExpressView.this.b(z, f, f2, i);
                    }
                }
            });
        }
    }

    public void b() {
        this.G = new q(1, this.j, this.l);
        w wVar = new w(this.g);
        this.i = wVar;
        wVar.b(getWebView()).a(this.l).a(this.f9027c).b(this.f9028d).b(this.e).c(af.f(this.l)).a((j) this).a(getTemplateInfo()).a(getWebView()).a(this.G);
    }

    public d getClickCreativeListener() {
        return this.w;
    }

    public e getClickListener() {
        return this.x;
    }

    public int getExpectExpressHeight() {
        return Float.valueOf(this.D).intValue();
    }

    public int getExpectExpressWidth() {
        return Float.valueOf(this.C).intValue();
    }

    public SSWebView getWebView() {
        WeakReference<SSWebView> weakReference = this.h;
        if (weakReference != null && weakReference.get() != null) {
            return this.h.get();
        }
        WeakReference<SSWebView> c2 = com.bytedance.sdk.openadsdk.core.widget.webview.d.a().c();
        this.h = c2;
        return c2.get();
    }

    public void h() {
        if (this.i != null && !this.E.get()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("expressShow", true);
                this.i.a("expressShow", jSONObject);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void i() {
        this.A.set(true);
        this.G.a();
        this.q = com.bytedance.sdk.openadsdk.l.e.d().schedule(new a(1), com.bytedance.sdk.openadsdk.core.n.h().k(), TimeUnit.MILLISECONDS);
        if (!com.bytedance.sdk.openadsdk.core.widget.webview.a.a.e()) {
            a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 102);
            return;
        }
        String str = null;
        String c2 = com.bytedance.sdk.openadsdk.core.widget.webview.a.a.d() != null ? com.bytedance.sdk.openadsdk.core.widget.webview.a.a.d().c() : null;
        if (TextUtils.isEmpty(c2)) {
            a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 102);
            return;
        }
        m b2 = com.bytedance.sdk.openadsdk.core.widget.webview.a.a.b(this.l);
        if (b2 != null || e()) {
            if (b2 != null) {
                str = b2.f();
            }
            String str2 = str;
            if (e()) {
                str2 = str;
                if (!TextUtils.isEmpty(this.l.z().a())) {
                    str2 = this.l.z().a();
                }
            }
            if (!com.bytedance.sdk.openadsdk.core.widget.webview.a.f.b(str2) || "https://sf3-ttcdn-tos.pstatp.com/obj/ad-pattern/renderer/latest/index.html".equals(c2)) {
                getWebView().loadUrl(c2);
            } else {
                a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 102);
            }
        } else {
            a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 103);
        }
    }

    public void j() {
        if (getWebView() != null && !this.E.get()) {
            try {
                if (this.j.equals("embeded_ad")) {
                    com.bytedance.sdk.openadsdk.core.widget.webview.a.a(this.g).a(true).a(getWebView());
                }
                getWebView().resumeTimers();
            } catch (Exception e) {
            }
        }
    }

    boolean k() {
        if ("embeded_ad".equals(this.j) || "draw_ad".equals(this.j)) {
            return false;
        }
        this.E.set(true);
        return true;
    }

    public void l() {
        try {
            com.bytedance.sdk.openadsdk.core.widget.webview.d.a().a(this, this.h, true);
            this.E.set(true);
            this.i = null;
            this.f9025a = null;
            this.f9026b = null;
            this.k = null;
            this.l = null;
            this.v = null;
            this.w = null;
            this.x = null;
            this.y.clear();
            this.m = null;
            removeAllViews();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            q();
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.utils.q.c("NativeExpressView", "detach error", th);
        }
    }

    public void m() {
        try {
            com.bytedance.sdk.openadsdk.core.widget.webview.d.a().a(this, this.h, true);
            this.E.set(true);
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.utils.q.a("NativeExpressView", "backupDestroy remove webview error", th);
        }
        try {
            FrameLayout frameLayout = this.n;
            if (frameLayout != null && frameLayout.getParent() != null) {
                removeView(this.n);
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.openadsdk.utils.q.a("NativeExpressView", "backupDestroy remove video container error", th2);
        }
    }

    public boolean n() {
        return this.s;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.sdk.openadsdk.utils.q.e("webviewpool", "onAttachedToWindow+++");
        o();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        p();
        com.bytedance.sdk.openadsdk.utils.q.e("webviewpool", "onDetachedFromWindow===");
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        com.bytedance.sdk.openadsdk.utils.q.e("webviewpool", "onFinishTemporaryDetach+++");
        o();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        p();
    }

    public void setBackupListener(c cVar) {
        this.r = cVar;
    }

    public void setClickCreativeListener(d dVar) {
        this.w = dVar;
    }

    public void setClickListener(e eVar) {
        this.x = eVar;
    }

    public void setDislike(b bVar) {
        BackupView backupView = this.t;
        if (backupView != null) {
            backupView.setDislikeInner(bVar);
        }
        this.f9025a = bVar;
    }

    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.v = expressAdInteractionListener;
    }

    public void setOuterDislike(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        BackupView backupView = this.t;
        if (backupView != null) {
            backupView.setDislikeOuter(tTDislikeDialogAbstract);
        }
        this.f9026b = tTDislikeDialogAbstract;
    }

    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        this.m = expressVideoAdListener;
    }
}
