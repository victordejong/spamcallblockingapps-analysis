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
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.C4566f;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4556h;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4560k;
import com.bytedance.sdk.openadsdk.core.p154e.C4563m;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4785a;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4797b;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4799d;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4786a;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4796f;
import com.bytedance.sdk.openadsdk.dislike.C4852b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p164d.C4822k;
import com.bytedance.sdk.openadsdk.p164d.C4833q;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import com.bytedance.sdk.openadsdk.p171i.p172a.C4931b;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5472n;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
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
public class NativeExpressView extends FrameLayout implements AbstractC4628j {

    /* renamed from: C */
    private float f16867C;

    /* renamed from: D */
    private float f16868D;

    /* renamed from: F */
    private C4822k f16870F;

    /* renamed from: G */
    private C4833q f16871G;

    /* renamed from: a */
    private C4852b f16873a;

    /* renamed from: b */
    private TTDislikeDialogAbstract f16874b;

    /* renamed from: c */
    private String f16875c;

    /* renamed from: d */
    private String f16876d;

    /* renamed from: e */
    private int f16877e;

    /* renamed from: g */
    protected final Context f16879g;

    /* renamed from: h */
    protected WeakReference<SSWebView> f16880h;

    /* renamed from: i */
    protected C4754w f16881i;

    /* renamed from: j */
    protected String f16882j;

    /* renamed from: k */
    protected AdSlot f16883k;

    /* renamed from: l */
    public C4557i f16884l;

    /* renamed from: m */
    protected TTNativeExpressAd.ExpressVideoAdListener f16885m;

    /* renamed from: n */
    protected FrameLayout f16886n;

    /* renamed from: o */
    protected boolean f16887o;

    /* renamed from: q */
    protected ScheduledFuture<?> f16889q;

    /* renamed from: r */
    protected AbstractC4615c f16890r;

    /* renamed from: t */
    protected BackupView f16892t;

    /* renamed from: u */
    private int f16893u;

    /* renamed from: v */
    private TTNativeExpressAd.ExpressAdInteractionListener f16894v;

    /* renamed from: w */
    private C4616d f16895w;

    /* renamed from: x */
    private C4617e f16896x;

    /* renamed from: f */
    protected final AtomicBoolean f16878f = new AtomicBoolean(false);

    /* renamed from: y */
    private final Map<String, AbstractC3234c> f16897y = Collections.synchronizedMap(new HashMap());

    /* renamed from: z */
    private final AtomicBoolean f16898z = new AtomicBoolean(false);

    /* renamed from: A */
    private final AtomicBoolean f16865A = new AtomicBoolean(false);

    /* renamed from: B */
    private String f16866B = null;

    /* renamed from: p */
    protected boolean f16888p = false;

    /* renamed from: s */
    protected boolean f16891s = false;

    /* renamed from: E */
    private final AtomicBoolean f16869E = new AtomicBoolean(false);

    /* renamed from: H */
    private String f16872H = "{\"id\":0,\"tplId\":0,\"title\":\"\",\"data\":{\"id\":\"root\",\"type\":\"vessel\",\"values\":{\"widthMode\":\"fixed\",\"width\":320,\"height\":320},\"children\":[[{\"type\":\"text\",\"values\":{\"fontSize\":19,\"fontWeight\":500,\"color\":\"#222222\",\"lineHeight\":1.3,\"data\":\"title\"}}],[{\"type\":\"text\",\"values\":{\"fontSize\":15,\"fontWeight\":500,\"color\":\"#999999\",\"lineHeight\":1,\"data\":\"subtitle\"}}],[{\"type\":\"image\",\"values\":{},\"children\":[]}],[{\"type\":\"vessel\",\"values\":{\"height\":40,\"paddingTop\":10,\"paddingRight\":15,\"paddingBottom\":10,\"paddingLeft\":15},\"children\":[[{\"type\":\"logo\",\"values\":{}},{\"type\":\"text\",\"values\":{\"widthMode\":\"auto\",\"paddingTop\":3,\"paddingRight\":0,\"paddingBottom\":3,\"paddingLeft\":6,\"fontSize\":12,\"color\":\"#999999\",\"lineHeight\":1,\"data\":\"source\"}},{\"type\":\"text\",\"values\":{\"widthMode\":\"auto\",\"paddingTop\":3,\"paddingRight\":0,\"paddingBottom\":3,\"paddingLeft\":10,\"fontSize\":12,\"color\":\"#999999\",\"lineHeight\":1,\"data\":\"time\"}},{\"type\":\"empty\",\"values\":{\"height\":18}},{\"type\":\"dislike\",\"values\":{}}]]}]]}}";

    /* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$a.class */
    public class RunnableC4609a implements Runnable {

        /* renamed from: b */
        private int f16906b;

        public RunnableC4609a(int i) {
            NativeExpressView.this = r4;
            this.f16906b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16906b == 1) {
                C5478q.m32109c("NativeExpressView", "MSG_RENDER_TIME_OUT-->OnAdRenderRunnable......run....");
                NativeExpressView.this.m34776a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 107);
            }
        }
    }

    public NativeExpressView(Context context, C4557i c4557i, AdSlot adSlot, String str) {
        super(context);
        this.f16882j = "embeded_ad";
        this.f16882j = str;
        this.f16879g = context;
        this.f16884l = c4557i;
        m34779a(adSlot);
        mo34782a();
    }

    /* renamed from: a */
    private void m34781a(float f, float f2) {
        if (f <= BitmapDescriptorFactory.HUE_RED || f2 <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        int m32232a = (int) C5443ag.m32232a(this.f16879g, f);
        int m32232a2 = (int) C5443ag.m32232a(this.f16879g, f2);
        C5478q.m32106e("ExpressView", "width:".concat(String.valueOf(m32232a)));
        C5478q.m32106e("ExpressView", "height:".concat(String.valueOf(m32232a2)));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getWebView().getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new FrameLayout.LayoutParams(m32232a, m32232a2);
        }
        layoutParams2.width = m32232a;
        layoutParams2.height = m32232a2;
        getWebView().setLayoutParams(layoutParams2);
    }

    /* renamed from: a */
    private void m34780a(int i) {
        C4927a.m33549a().m33540b(C4931b.m33530b().m33533a(getAdSlotType()).m33526c(this.f16866B).m33522e(C5438af.m32262h(this.f16876d)).m33529b(i).m33520f(C4566f.m35036a(i)));
    }

    /* renamed from: a */
    private void m34779a(AdSlot adSlot) {
        this.f16883k = adSlot;
        if (adSlot == null) {
            return;
        }
        this.f16867C = adSlot.getExpressViewAcceptedWidth();
        this.f16868D = this.f16883k.getExpressViewAcceptedHeight();
    }

    /* renamed from: a */
    private void m34777a(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            C4785a.m33991a(this.f16879g).m33988a(!this.f16882j.equals("embeded_ad")).m33989a(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            sSWebView.clearCache(true);
            sSWebView.clearHistory();
            WebSettings settings = sSWebView.getSettings();
            settings.setUserAgentString(C5472n.m32126a(sSWebView, this.f16893u));
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
            C5478q.m32106e("NativeExpressView", e.toString());
        }
    }

    /* renamed from: b */
    public void m34774b(boolean z, float f, float f2, int i) {
        if (this.f16878f.getAndSet(true)) {
            return;
        }
        if (z) {
            this.f16871G.m33761b();
            m34781a(f, f2);
            TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener = this.f16894v;
            if (expressAdInteractionListener != null) {
                expressAdInteractionListener.onRenderSuccess(this, f, f2);
            }
        } else {
            this.f16871G.m33775a(i);
            this.f16871G.m33756c();
            this.f16871G.m33762a(true);
            AbstractC4615c abstractC4615c = this.f16890r;
            this.f16891s = abstractC4615c != null && abstractC4615c.mo34693a(this, i);
            this.f16871G.m33754d();
            if (this.f16891s) {
                m34769g();
                C4811e.m33862e(C4600n.m34815a(), this.f16884l, this.f16882j, "dynamic_backup_render", null);
                BackupView backupView = (BackupView) findViewWithTag("tt_express_backup_fl_tag_26");
                this.f16892t = backupView;
                TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener2 = this.f16894v;
                if (expressAdInteractionListener2 != null) {
                    expressAdInteractionListener2.onRenderSuccess(this, backupView.getRealWidth(), this.f16892t.getRealHeight());
                }
            } else {
                TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener3 = this.f16894v;
                if (expressAdInteractionListener3 != null) {
                    expressAdInteractionListener3.onRenderFail(this, C4566f.m35036a(i), i);
                }
            }
            m34780a(i);
        }
        this.f16871G.m33746h();
        this.f16871G.m33745i();
    }

    /* renamed from: c */
    private void m34773c() {
        this.f16875c = this.f16884l.m35231P();
        this.f16876d = this.f16884l.m35228S();
        this.f16893u = 3505;
        this.f16877e = C5438af.m32300a(this.f16882j);
        this.f16866B = this.f16883k.getCodeId();
    }

    /* renamed from: d */
    private void m34772d() {
        m34777a(getWebView());
        C4822k m33815a = new C4822k(this.f16879g, this.f16884l, getWebView()).m33815a(false);
        this.f16870F = m33815a;
        m33815a.m33819a(this.f16871G);
        getWebView().setWebViewClient(new C4618f(this.f16879g, this.f16881i, this.f16884l, this.f16870F));
        getWebView().setWebChromeClient(new C4797b(this.f16881i, this.f16870F));
        getWebView().setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                C3235d.m39089a(NativeExpressView.this.f16879g, NativeExpressView.this.f16884l, NativeExpressView.this.f16882j).mo39091e();
            }
        });
    }

    /* renamed from: e */
    private boolean m34771e() {
        C4557i c4557i = this.f16884l;
        return c4557i != null && c4557i.m35134z() != null && !TextUtils.isEmpty(this.f16884l.m35134z().m35131b()) && !TextUtils.isEmpty(this.f16884l.m35134z().m35125e());
    }

    /* renamed from: f */
    private boolean m34770f() {
        return C4557i.m35180d(this.f16884l);
    }

    /* renamed from: g */
    private void m34769g() {
        C4927a.m33549a().m33547a(C4931b.m33530b().m33533a(getAdSlotType()).m33526c(this.f16866B).m33522e(C5438af.m32262h(this.f16876d)).m33531a("dynamic_backup_render_new"));
    }

    private int getAdSlotType() {
        String str = this.f16882j;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    z = false;
                    break;
                }
                break;
            case -1364000502:
                if (str.equals(AdType.REWARDED_VIDEO)) {
                    z = true;
                    break;
                }
                break;
            case -764631662:
                if (str.equals("fullscreen_interstitial_ad")) {
                    z = true;
                    break;
                }
                break;
            case 174971131:
                if (str.equals("splash_ad")) {
                    z = true;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    z = true;
                    break;
                }
                break;
            case 1912999166:
                if (str.equals("draw_ad")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return 1;
            case true:
                return 7;
            case true:
                return 8;
            case true:
                return 3;
            case true:
                return 2;
            case true:
                return 9;
            default:
                return 5;
        }
    }

    private JSONObject getCreativeJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("button_text", this.f16884l.m35232O());
            if (this.f16884l.m35242E() != null) {
                jSONObject.put(APIAsset.ICON, this.f16884l.m35242E().m35254a());
            }
            JSONArray jSONArray = new JSONArray();
            if (this.f16884l.m35239H() != null) {
                for (int i = 0; i < this.f16884l.m35239H().size(); i++) {
                    C4556h c4556h = this.f16884l.m35239H().get(i);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("height", c4556h.m35248c());
                    jSONObject2.put("width", c4556h.m35250b());
                    jSONObject2.put("url", c4556h.m35254a());
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("image", jSONArray);
            jSONObject.put("image_mode", this.f16884l.m35227T());
            jSONObject.put("interaction_type", this.f16884l.m35243D());
            jSONObject.put("title", this.f16884l.m35234M());
            jSONObject.put("description", this.f16884l.m35233N());
            jSONObject.put(Payload.SOURCE, this.f16884l.m35244C());
            if (this.f16884l.m35230Q() != null) {
                jSONObject.put("comment_num", this.f16884l.m35230Q().m35328e());
                jSONObject.put("score", this.f16884l.m35230Q().m35329d());
                jSONObject.put("app_size", this.f16884l.m35230Q().m35327f());
                jSONObject.put("app", this.f16884l.m35230Q().m35326g());
            }
            if (this.f16884l.m35245B() != null) {
                jSONObject.put("video", this.f16884l.m35245B().m35039l());
            }
            if (this.f16884l.m35134z() != null) {
                jSONObject.put("dynamic_creative", this.f16884l.m35134z().m35121g());
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
            jSONObject2.put("width", this.f16867C);
            jSONObject2.put("height", this.f16868D);
            if (this.f16888p) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObject.put("AdSize", jSONObject2);
            jSONObject.put("creative", getCreativeJson());
            if (this.f16884l.m35134z() != null) {
                str = this.f16884l.m35134z().m35125e();
                str2 = this.f16884l.m35134z().m35123f();
            } else {
                str = null;
                str2 = null;
            }
            if (!TextUtils.isEmpty(str)) {
                this.f16872H = str;
            } else if (C4786a.m33979b(this.f16884l) != null) {
                this.f16872H = C4786a.m33979b(this.f16884l).m35074e();
            }
            jSONObject.put("template_Plugin", this.f16872H);
            jSONObject.put("diff_template_Plugin", str2);
            return jSONObject;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: o */
    private void m34761o() {
        if (!this.f16898z.getAndSet(false) || getWebView().getParent() != null || this.f16891s) {
            return;
        }
        C5478q.m32106e("webviewpool", "attachCallback+++========-----------===========");
        mo34782a();
        m34767i();
    }

    /* renamed from: p */
    private void m34760p() {
        if (this.f16898z.getAndSet(true) || this.f16891s) {
            return;
        }
        C4799d.m33919a().m33918a(this, this.f16880h, m34765k());
    }

    /* renamed from: q */
    private void m34759q() {
        try {
            ScheduledFuture<?> scheduledFuture = this.f16889q;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            C5478q.m32112b("NativeExpressView", "MSG_RENDER_TIME_OUT-->mRenderTimeOutFuture-->cancel.....success=".concat(String.valueOf(this.f16889q.cancel(false))));
            this.f16889q = null;
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void mo34782a() {
        setBackgroundColor(0);
        if (getWebView().getParent() != null) {
            ((ViewGroup) getWebView().getParent()).removeView(getWebView());
        }
        getWebView().setBackgroundColor(0);
        addView(getWebView(), new FrameLayout.LayoutParams(-1, -1));
        m34773c();
        mo34775b();
        m34772d();
        getWebView().addJavascriptInterface(this.f16881i, "SDK_INJECT_GLOBAL");
    }

    /* renamed from: a */
    public void mo34705a(int i, C4553g c4553g) {
        if (i == -1 || c4553g == null) {
            return;
        }
        int i2 = c4553g.f16505a;
        int i3 = c4553g.f16506b;
        int i4 = c4553g.f16507c;
        int i5 = c4553g.f16508d;
        String str = c4553g.f16515k;
        if (i == 1) {
            FrameLayout frameLayout = this.f16886n;
            if (frameLayout != null) {
                frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
            }
            C4617e c4617e = this.f16896x;
            if (c4617e != null) {
                c4617e.m34728a(c4553g);
                this.f16896x.m35474a(str);
                this.f16896x.mo35468a(this, i2, i3, i4, i5);
            }
            TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener = this.f16894v;
            if (expressAdInteractionListener == null) {
                return;
            }
            expressAdInteractionListener.onAdClicked(this, this.f16884l.m35243D());
        } else if (i == 2) {
            C4616d c4616d = this.f16895w;
            if (c4616d != null) {
                c4616d.m34730a(c4553g);
                this.f16895w.m35474a(str);
                this.f16895w.mo35468a(this, i2, i3, i4, i5);
            }
            TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener2 = this.f16894v;
            if (expressAdInteractionListener2 == null) {
                return;
            }
            expressAdInteractionListener2.onAdClicked(this, this.f16884l.m35243D());
        } else if (i == 3) {
            TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f16874b;
            if (tTDislikeDialogAbstract != null) {
                tTDislikeDialogAbstract.show();
            } else {
                C4852b c4852b = this.f16873a;
                if (c4852b != null) {
                    c4852b.showDislikeDialog();
                } else {
                    TTDelegateActivity.m35919a(this.f16884l);
                }
            }
            TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener3 = this.f16894v;
            if (expressAdInteractionListener3 == null) {
                return;
            }
            expressAdInteractionListener3.onAdClicked(this, this.f16884l.m35243D());
        } else if (i != 4) {
        } else {
            FrameLayout frameLayout2 = this.f16886n;
            if (frameLayout2 != null) {
                frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
            }
            C5478q.m32112b("ClickCreativeListener", "创意....mAdType=" + this.f16882j + ",!mVideoPause=" + (true ^ this.f16887o) + "，isAutoPlay=" + C5438af.m32266g(this.f16884l));
            if (!"embeded_ad".equals(this.f16882j) || !m34770f() || this.f16887o || !C5438af.m32266g(this.f16884l)) {
                C5478q.m32112b("ClickCreativeListener", "普通....");
                C4617e c4617e2 = this.f16896x;
                if (c4617e2 != null) {
                    c4617e2.m34728a(c4553g);
                    this.f16896x.m35474a(str);
                    this.f16896x.mo35468a(this, i2, i3, i4, i5);
                }
            } else {
                C5478q.m32112b("ClickCreativeListener", "创意....");
                C4616d c4616d2 = this.f16895w;
                if (c4616d2 != null) {
                    c4616d2.m34730a(c4553g);
                    this.f16895w.m35474a(str);
                    this.f16895w.mo35468a(this, i2, i3, i4, i5);
                }
            }
            TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener4 = this.f16894v;
            if (expressAdInteractionListener4 == null) {
                return;
            }
            expressAdInteractionListener4.onAdClicked(this, this.f16884l.m35243D());
        }
    }

    /* renamed from: a */
    public void mo34704a(C4560k c4560k) {
        int i = 0;
        if (c4560k == null) {
            m34776a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 105);
            return;
        }
        boolean m35119a = c4560k.m35119a();
        float m35114b = (float) c4560k.m35114b();
        float m35111c = (float) c4560k.m35111c();
        if (!m35119a) {
            i = c4560k.m35102h();
        }
        m34776a(m35119a, m35114b, m35111c, i);
    }

    /* renamed from: a */
    protected void m34776a(final boolean z, final float f, final float f2, final int i) {
        m34759q();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            m34774b(z, f, f2, i);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.2
                @Override // java.lang.Runnable
                public void run() {
                    if (NativeExpressView.this.f16884l == null) {
                        return;
                    }
                    NativeExpressView.this.m34774b(z, f, f2, i);
                }
            });
        }
    }

    /* renamed from: b */
    public void mo34775b() {
        this.f16871G = new C4833q(1, this.f16882j, this.f16884l);
        C4754w c4754w = new C4754w(this.f16879g);
        this.f16881i = c4754w;
        c4754w.m34128b(getWebView()).m34158a(this.f16884l).m34141a(this.f16875c).m34127b(this.f16876d).m34131b(this.f16877e).m34121c(C5438af.m32270f(this.f16884l)).m34156a((AbstractC4628j) this).m34136a(getTemplateInfo()).m34149a(getWebView()).m34148a(this.f16871G);
    }

    public C4616d getClickCreativeListener() {
        return this.f16895w;
    }

    public C4617e getClickListener() {
        return this.f16896x;
    }

    public int getExpectExpressHeight() {
        return Float.valueOf(this.f16868D).intValue();
    }

    public int getExpectExpressWidth() {
        return Float.valueOf(this.f16867C).intValue();
    }

    public SSWebView getWebView() {
        WeakReference<SSWebView> weakReference = this.f16880h;
        if (weakReference == null || weakReference.get() == null) {
            WeakReference<SSWebView> m33915c = C4799d.m33919a().m33915c();
            this.f16880h = m33915c;
            return m33915c.get();
        }
        return this.f16880h.get();
    }

    /* renamed from: h */
    public void m34768h() {
        if (this.f16881i == null || this.f16869E.get()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("expressShow", true);
            this.f16881i.mo33701a("expressShow", jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    public void m34767i() {
        this.f16865A.set(true);
        this.f16871G.m33776a();
        this.f16889q = C5052e.m33155d().schedule(new RunnableC4609a(1), C4600n.m34805h().m34879k(), TimeUnit.MILLISECONDS);
        if (!C4786a.m33975e()) {
            m34776a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 102);
            return;
        }
        String str = null;
        String m35095c = C4786a.m33976d() != null ? C4786a.m33976d().m35095c() : null;
        if (TextUtils.isEmpty(m35095c)) {
            m34776a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 102);
            return;
        }
        C4563m m33979b = C4786a.m33979b(this.f16884l);
        if (m33979b == null && !m34771e()) {
            m34776a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 103);
            return;
        }
        if (m33979b != null) {
            str = m33979b.m35072f();
        }
        String str2 = str;
        if (m34771e()) {
            str2 = str;
            if (!TextUtils.isEmpty(this.f16884l.m35134z().m35133a())) {
                str2 = this.f16884l.m35134z().m35133a();
            }
        }
        if (!C4796f.m33925b(str2) || "https://sf3-ttcdn-tos.pstatp.com/obj/ad-pattern/renderer/latest/index.html".equals(m35095c)) {
            getWebView().loadUrl(m35095c);
        } else {
            m34776a(false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 102);
        }
    }

    /* renamed from: j */
    public void m34766j() {
        if (getWebView() == null || this.f16869E.get()) {
            return;
        }
        try {
            if (this.f16882j.equals("embeded_ad")) {
                C4785a.m33991a(this.f16879g).m33988a(true).m33989a(getWebView());
            }
            getWebView().resumeTimers();
        } catch (Exception e) {
        }
    }

    /* renamed from: k */
    boolean m34765k() {
        if ("embeded_ad".equals(this.f16882j) || "draw_ad".equals(this.f16882j)) {
            return false;
        }
        this.f16869E.set(true);
        return true;
    }

    /* renamed from: l */
    public void m34764l() {
        try {
            C4799d.m33919a().m33918a(this, this.f16880h, true);
            this.f16869E.set(true);
            this.f16881i = null;
            this.f16873a = null;
            this.f16874b = null;
            this.f16883k = null;
            this.f16884l = null;
            this.f16894v = null;
            this.f16895w = null;
            this.f16896x = null;
            this.f16897y.clear();
            this.f16885m = null;
            removeAllViews();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            m34759q();
        } catch (Throwable th) {
            C5478q.m32108c("NativeExpressView", "detach error", th);
        }
    }

    /* renamed from: m */
    public void m34763m() {
        try {
            C4799d.m33919a().m33918a(this, this.f16880h, true);
            this.f16869E.set(true);
        } catch (Throwable th) {
            C5478q.m32117a("NativeExpressView", "backupDestroy remove webview error", th);
        }
        try {
            FrameLayout frameLayout = this.f16886n;
            if (frameLayout == null || frameLayout.getParent() == null) {
                return;
            }
            removeView(this.f16886n);
        } catch (Throwable th2) {
            C5478q.m32117a("NativeExpressView", "backupDestroy remove video container error", th2);
        }
    }

    /* renamed from: n */
    public boolean m34762n() {
        return this.f16891s;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C5478q.m32106e("webviewpool", "onAttachedToWindow+++");
        m34761o();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m34760p();
        C5478q.m32106e("webviewpool", "onDetachedFromWindow===");
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        C5478q.m32106e("webviewpool", "onFinishTemporaryDetach+++");
        m34761o();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        m34760p();
    }

    public void setBackupListener(AbstractC4615c abstractC4615c) {
        this.f16890r = abstractC4615c;
    }

    public void setClickCreativeListener(C4616d c4616d) {
        this.f16895w = c4616d;
    }

    public void setClickListener(C4617e c4617e) {
        this.f16896x = c4617e;
    }

    public void setDislike(C4852b c4852b) {
        BackupView backupView = this.f16892t;
        if (backupView != null) {
            backupView.setDislikeInner(c4852b);
        }
        this.f16873a = c4852b;
    }

    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.f16894v = expressAdInteractionListener;
    }

    public void setOuterDislike(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        BackupView backupView = this.f16892t;
        if (backupView != null) {
            backupView.setDislikeOuter(tTDislikeDialogAbstract);
        }
        this.f16874b = tTDislikeDialogAbstract;
    }

    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        this.f16885m = expressVideoAdListener;
    }
}
