package com.taiwanmobile.p055pt.adp.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.exifinterface.media.ExifInterface;
import com.aotter.net.trek.model.AdFetch;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import com.taiwanmobile.p055pt.adp.view.webview.IRBehavior;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import okhttp3.ResponseBody;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.TWMFloatAdView */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMFloatAdView.class */
public class TWMFloatAdView implements TWMAd {

    /* renamed from: A */
    public RelativeLayout f9696A;

    /* renamed from: B */
    public ImageView f9697B;

    /* renamed from: C */
    public ImageView f9698C;

    /* renamed from: D */
    public Handler f9699D;

    /* renamed from: K */
    public C4101d f9706K;

    /* renamed from: c */
    public String f9710c;

    /* renamed from: d */
    public RunnableC4100c f9711d;

    /* renamed from: e */
    public WeakReference<Context> f9712e;

    /* renamed from: f */
    public WeakReference<Activity> f9713f;

    /* renamed from: g */
    public boolean f9714g;

    /* renamed from: n */
    public WindowManager.LayoutParams f9721n;

    /* renamed from: p */
    public int f9723p;

    /* renamed from: q */
    public int f9724q;

    /* renamed from: r */
    public int f9725r;

    /* renamed from: s */
    public int f9726s;

    /* renamed from: t */
    public int f9727t;

    /* renamed from: v */
    public ImageView f9729v;

    /* renamed from: z */
    public RelativeLayout f9733z;

    /* renamed from: a */
    public String f9708a = null;

    /* renamed from: b */
    public TWMAdViewListener f9709b = null;

    /* renamed from: h */
    public boolean f9715h = false;

    /* renamed from: i */
    public boolean f9716i = false;

    /* renamed from: j */
    public boolean f9717j = false;

    /* renamed from: k */
    public JSWebView f9718k = null;

    /* renamed from: l */
    public JSWebView f9719l = null;

    /* renamed from: m */
    public TWMAdRequest f9720m = null;

    /* renamed from: o */
    public boolean f9722o = false;

    /* renamed from: u */
    public boolean f9728u = true;

    /* renamed from: w */
    public boolean f9730w = false;

    /* renamed from: x */
    public boolean f9731x = false;

    /* renamed from: y */
    public int f9732y = 0;

    /* renamed from: E */
    public boolean f9700E = false;

    /* renamed from: F */
    public boolean f9701F = true;

    /* renamed from: G */
    public String f9702G = "";

    /* renamed from: H */
    public boolean f9703H = false;

    /* renamed from: I */
    public boolean f9704I = false;

    /* renamed from: J */
    public final AbstractC4126b f9705J = new AbstractC4126b() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.1
        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b
        /* renamed from: a */
        public void mo29382a(String str, TWMAdRequest.ErrorCode errorCode) {
            C10831c.m10518c("TWMAdServiceCallback", "noticeError(" + errorCode + ") invoked!! ");
            TWMFloatAdView.this.m29787a(errorCode);
        }
    };

    /* renamed from: L */
    public BroadcastReceiver f9707L = new BroadcastReceiver() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.taiwanmobile.pt.adp.view.TWMFloatAdView".equals(intent.getAction()) && !TWMFloatAdView.this.f9703H) {
                int intExtra = intent.getIntExtra("data", -1);
                C10831c.m10518c("TWMFloatAdView", "onReceive type!!" + intExtra);
                if (intExtra == 0) {
                    TWMFloatAdView.this.m29753h();
                } else if (intExtra == 1) {
                    TWMFloatAdView.this.m29750i();
                } else if (intExtra == 2) {
                    TWMFloatAdView.this.f9731x = true;
                    TWMFloatAdView.this.m29744l();
                } else if (intExtra == 3) {
                    TWMFloatAdView.this.m29774a(false);
                }
            }
        }
    };

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMFloatAdView$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMFloatAdView$a.class */
    public class C4095a extends WebViewClientBase {

        /* renamed from: b */
        public final String f9751b;

        public C4095a(String str) {
            super(str);
            this.f9751b = str;
            TWMFloatAdView.this.f9699D = new Handler();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m29726a() {
            if (!TWMFloatAdView.this.f9730w) {
                if (!TWMFloatAdView.this.f9715h || !TWMFloatAdView.this.f9716i) {
                    C10831c.m10518c("FloatAdClient", "timeout error");
                    if (TWMFloatAdView.this.f9733z != null) {
                        TWMFloatAdView.this.f9733z.setVisibility(4);
                    }
                    if (TWMFloatAdView.this.f9696A != null) {
                        TWMFloatAdView.this.f9696A.setVisibility(4);
                    }
                    TWMFloatAdView.this.m29774a(false);
                    TWMFloatAdView.this.m29769c();
                    TWMFloatAdView.this.f9717j = true;
                    TWMFloatAdView.this.f9722o = false;
                    C4127a.m29640a(this.f9751b, TWMAdRequest.ErrorCode.NETWORK_ERROR);
                }
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            C10831c.m10518c("FloatAdClient", "onPageFinished invoked!!");
            if (str.endsWith("fz=0")) {
                C10831c.m10518c("FloatAdClient", "onPageFinished fz=0!!");
                TWMFloatAdView.this.f9716i = true;
            }
            if (str.endsWith("fz=1")) {
                C10831c.m10518c("FloatAdClient", "onPageFinished fz=1!!");
                TWMFloatAdView.this.f9715h = true;
            }
            if (TWMFloatAdView.this.f9716i && TWMFloatAdView.this.f9715h && !TWMFloatAdView.this.f9717j) {
                C10831c.m10518c("FloatAdClient", "onPageFinished success!!");
                TWMFloatAdView.this.f9699D.removeCallbacksAndMessages(null);
                if (TWMFloatAdView.this.f9728u) {
                    C10831c.m10518c("FloatAdClient", "onPageFinished showButtonClose!!");
                    TWMFloatAdView.this.m29742m();
                }
                if (TWMFloatAdView.this.f9713f != null && TWMFloatAdView.this.f9713f.get() != null) {
                    ((Activity) TWMFloatAdView.this.f9713f.get()).runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (TWMFloatAdView.this.f9718k != null) {
                                TWMFloatAdView tWMFloatAdView = TWMFloatAdView.this;
                                tWMFloatAdView.m29789a(tWMFloatAdView.f9696A);
                                TWMFloatAdView tWMFloatAdView2 = TWMFloatAdView.this;
                                tWMFloatAdView2.m29788a(tWMFloatAdView2.f9696A, TWMFloatAdView.this.f9721n);
                                TWMFloatAdView.this.f9696A.setVisibility(0);
                                TWMFloatAdView.this.f9718k.invalidate();
                                TWMFloatAdView.this.f9718k.requestLayout();
                                TWMFloatAdView.this.m29790a();
                                TWMFloatAdView.this.f9718k.loadUrl("javascript:try{sdkCallShowImg();}catch(e){}");
                            }
                        }
                    });
                    TWMFloatAdView.this.m29776a("floadAd");
                }
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            C10831c.m10518c("FloatAdClient", "onPageStarted invoked!!");
            super.onPageStarted(webView, str, bitmap);
            if (str.endsWith("fz=0")) {
                C10831c.m10518c("FloatAdClient", "onPageStarted fz=0!!");
                TWMFloatAdView.this.f9717j = false;
                TWMFloatAdView.this.f9716i = false;
                TWMFloatAdView.this.f9715h = false;
                TWMFloatAdView.this.f9699D.postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C4095a.this.m29726a();
                    }
                }, 4000L);
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            C10831c.m10518c("FloatAdClient", "onReceivedError(" + i + "/" + str + ") invoked!!");
            if (TWMFloatAdView.this.f9733z != null) {
                TWMFloatAdView.this.f9733z.setVisibility(4);
            }
            if (TWMFloatAdView.this.f9696A != null) {
                TWMFloatAdView.this.f9696A.setVisibility(4);
            }
            TWMFloatAdView.this.m29774a(false);
            TWMFloatAdView.this.m29769c();
            C4127a.m29640a(this.f9751b, TWMAdRequest.ErrorCode.NETWORK_ERROR);
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMFloatAdView$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMFloatAdView$b.class */
    public final class C4098b implements IRBehavior {
        public C4098b() {
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
        public int checkFloatAdPosition() {
            return TWMFloatAdView.this.f9714g ? 1 : 2;
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
        public void closeWebView(String str) {
            C10831c.m10518c("TWMFloatAdView", "Float ad view closeWebView invoked!!)");
            TWMFloatAdView.this.m29774a(false);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
        public void disableCloseButton() {
            C10831c.m10518c("TWMFloatAdView", "disableCloseButton involked!!");
            if (TWMFloatAdView.this.f9713f != null && TWMFloatAdView.this.f9713f.get() != null) {
                ((Activity) TWMFloatAdView.this.f9713f.get()).runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TWMFloatAdView.this.m29740n();
                        TWMFloatAdView.this.f9728u = false;
                    }
                });
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMFloatAdView$c */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMFloatAdView$c.class */
    public final class RunnableC4100c implements Runnable {

        /* renamed from: b */
        public String f9757b;

        /* renamed from: c */
        public String f9758c;

        /* renamed from: d */
        public String f9759d;

        public RunnableC4100c(String str, String str2, String str3) {
            this.f9757b = str;
            this.f9758c = str2;
            this.f9759d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            TWMFloatAdView.this.m29775a(this.f9757b, this.f9758c, this.f9759d);
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMFloatAdView$d */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMFloatAdView$d.class */
    public class C4101d extends AbstractC4140c {
        public C4101d(Context context, AbstractC4126b bVar) {
            super(context, bVar);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c, p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            super.onResponse(bVar, rVar);
            if (m29565n()) {
                if (!(TWMFloatAdView.this.f9708a == null || C4117a.m29671b().m29673a(TWMFloatAdView.this.f9708a) == null)) {
                    C10831c.m10518c("TWMFloatAdView", "Remove ad info in hashmap, key = " + TWMFloatAdView.this.f9708a);
                    C4117a.m29671b().m29669c(TWMFloatAdView.this.f9708a);
                }
                int j = m29569j();
                C10831c.m10518c("TWMFloatAdView", "adType : " + j);
                TWMFloatAdView.this.f9722o = true;
                C4117a b = C4117a.m29671b();
                b.getClass();
                C4117a.C4120c cVar = new C4117a.C4120c(TWMFloatAdView.this.f9710c);
                cVar.m29658a("_context", this.f9873b.get());
                cVar.m29658a("adListener", TWMFloatAdView.this.f9709b);
                cVar.m29658a("adRequest", TWMFloatAdView.this.f9720m);
                cVar.m29658a("targetUrl", m29568k());
                cVar.m29658a("mediaUrl", m29573f());
                cVar.m29658a(AdFetch.AD_ADTYPE_KEY, Integer.valueOf(j));
                cVar.m29658a(IapPlanRealmObject.PLAN_ID, m29567l());
                cVar.m29658a("cvt", m29570i());
                cVar.m29658a(CatWalkWebPayload.CATWALK_AD_KEY, TWMFloatAdView.this);
                cVar.m29658a("clickUrl", m29574e());
                cVar.m29658a("userAgent", C10832d.m10513a(this.f9873b.get()));
                cVar.m29658a("floatType", m29580a());
                cVar.m29658a("isOpenChrome", Boolean.valueOf(m29563p()));
                TWMFloatAdView.this.f9702G = m29580a();
                TWMFloatAdView.this.f9708a = m29566m();
                C10831c.m10518c("TWMFloatAdView", "txId : " + TWMFloatAdView.this.f9708a);
                cVar.m29658a("_deviceId", (String) ((C4117a.AbstractC4119b) C4117a.m29671b().m29673a(TWMFloatAdView.this.f9708a)).m29659a("_deviceId"));
                C4117a.m29671b().m29672a(TWMFloatAdView.this.f9708a, cVar);
                TWMFloatAdView tWMFloatAdView = TWMFloatAdView.this;
                tWMFloatAdView.f9711d = new RunnableC4100c(m29573f(), m29568k(), m29566m());
                ((Activity) TWMFloatAdView.this.f9713f.get()).runOnUiThread(TWMFloatAdView.this.f9711d);
            }
        }
    }

    public TWMFloatAdView(Activity activity, String str, boolean z) {
        this.f9712e = null;
        this.f9713f = null;
        this.f9714g = true;
        this.f9706K = null;
        this.f9713f = new WeakReference<>(activity);
        this.f9712e = new WeakReference<>(activity);
        this.f9710c = str;
        this.f9714g = z;
        this.f9706K = new C4101d(activity, this.f9705J);
        Intent intent = new Intent("com.taiwanmobile.pt.adp.view.TWMFloatAdView");
        intent.putExtra("data", 3);
        this.f9712e.get().sendBroadcast(intent);
        this.f9712e.get().registerReceiver(this.f9707L, new IntentFilter("com.taiwanmobile.pt.adp.view.TWMFloatAdView"));
        m29765d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29790a() {
        JSWebView jSWebView = this.f9718k;
        if (jSWebView != null) {
            try {
                jSWebView.clearCache(true);
            } catch (Exception e) {
                C10831c.m10520b("TWMFloatAdView", "jsWebViewSmallClearCache Exception: " + e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29789a(final RelativeLayout relativeLayout) {
        WeakReference<Activity> weakReference;
        if (relativeLayout != null && (weakReference = this.f9713f) != null && weakReference.get() != null) {
            final WindowManager windowManager = (WindowManager) this.f9713f.get().getSystemService("window");
            this.f9713f.get().runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.10
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        windowManager.removeViewImmediate(relativeLayout);
                    } catch (Exception e) {
                        C10831c.m10520b("TWMFloatAdView", "mWindowRemoveView Exception: " + e.toString());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29788a(final RelativeLayout relativeLayout, final WindowManager.LayoutParams layoutParams) {
        WeakReference<Activity> weakReference;
        if (relativeLayout != null && layoutParams != null && (weakReference = this.f9713f) != null && weakReference.get() != null) {
            final WindowManager windowManager = (WindowManager) this.f9713f.get().getSystemService("window");
            this.f9713f.get().runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        windowManager.addView(relativeLayout, layoutParams);
                    } catch (Exception e) {
                        C10831c.m10520b("TWMFloatAdView", "mWindowAddView Exception: " + e.toString());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29787a(TWMAdRequest.ErrorCode errorCode) {
        TWMAdViewListener tWMAdViewListener = this.f9709b;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onFailedToReceiveAd(this, errorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29776a(String str) {
        C10831c.m10518c("TWMFloatAdView", "popAdReceive(" + str + ")");
        TWMAdViewListener tWMAdViewListener = this.f9709b;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onReceiveAd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29775a(String str, String str2, String str3) {
        C4095a aVar = new C4095a(str3);
        C4098b bVar = new C4098b();
        JSWebView jSWebView = this.f9718k;
        if (jSWebView != null && this.f9719l != null) {
            jSWebView.setWebViewClient(aVar);
            this.f9718k.setIRBehavior(bVar);
            this.f9719l.setWebViewClient(aVar);
            this.f9719l.setIRBehavior(bVar);
            this.f9719l.resumeTimers();
            this.f9718k.resumeTimers();
            JSWebView jSWebView2 = this.f9719l;
            jSWebView2.loadContent(str + "&fz=1", str2, str3);
            JSWebView jSWebView3 = this.f9718k;
            jSWebView3.loadContent(str + "&fz=0", str2, str3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29774a(boolean z) {
        WeakReference<Activity> weakReference;
        if (this.f9721n != null && (weakReference = this.f9713f) != null && weakReference.get() != null) {
            C10831c.m10518c("TWMFloatAdView", "removeFloatView invoked!!");
            if (!this.f9730w) {
                this.f9730w = true;
                int i = this.f9732y;
                if (i == 0) {
                    C10831c.m10518c("TWMFloatAdView", "removeFloatView invoked0!!");
                    m29789a(this.f9696A);
                } else if (i == 1) {
                    C10831c.m10518c("TWMFloatAdView", "removeFloatView invoked1!!");
                    m29789a(this.f9733z);
                } else if (i == 2) {
                    C10831c.m10518c("TWMFloatAdView", "removeFloatView invoked2!!");
                    m29789a(this.f9696A);
                    m29789a(this.f9733z);
                }
                if (z) {
                    this.f9730w = false;
                }
            }
        }
    }

    /* renamed from: b */
    private void m29773b() {
        JSWebView jSWebView = this.f9719l;
        if (jSWebView != null && !this.f9704I) {
            try {
                jSWebView.clearCache(true);
            } catch (Exception e) {
                C10831c.m10520b("TWMFloatAdView", "jsWebViewBigClearCache Exception: " + e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m29769c() {
        C10831c.m10518c("TWMFloatAdView", "releaseWebView");
        JSWebView jSWebView = this.f9719l;
        if (jSWebView != null) {
            jSWebView.clearWebView();
            this.f9719l = null;
        }
        JSWebView jSWebView2 = this.f9718k;
        if (jSWebView2 != null) {
            jSWebView2.clearWebView();
            this.f9718k = null;
        }
    }

    /* renamed from: d */
    private void m29765d() {
        C10831c.m10518c("TWMFloatAdView", "initialView invoked!!");
        WeakReference<Context> weakReference = this.f9712e;
        if (weakReference != null && weakReference.get() != null) {
            if (!C10832d.m10483f(this.f9712e.get())) {
                C10831c.m10520b("TWMFloatAdView", "Permissions must be declared in AndroidManifest.xml.");
                return;
            }
            try {
                m29756g();
            } catch (Exception e) {
                C10831c.m10520b("TWMFloatAdView", "Build webview failed. " + e.getMessage());
            }
        }
    }

    /* renamed from: e */
    private void m29762e() {
        WindowManager windowManager = (WindowManager) this.f9712e.get().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.f9723p = displayMetrics.widthPixels;
        this.f9724q = displayMetrics.heightPixels;
        if (C10832d.m10514a(this.f9713f.get()) == 0) {
            int i = this.f9724q;
            this.f9727t = (int) (i * 0.7d);
            this.f9725r = (int) (this.f9723p * 0.25d);
            this.f9726s = (int) (i * 0.2d);
            return;
        }
        int i2 = this.f9724q;
        this.f9727t = (int) (i2 * 0.7d);
        this.f9725r = (int) (this.f9723p * 0.2d);
        this.f9726s = (int) (i2 * 0.3d);
    }

    /* renamed from: f */
    private void m29759f() {
        this.f9721n.x = 0;
        if (C10832d.m10514a(this.f9713f.get()) == 0) {
            this.f9721n.y = (int) Math.round(this.f9724q * 0.4d);
            return;
        }
        this.f9721n.y = (int) Math.round(this.f9724q * 0.35d);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: g */
    private void m29756g() {
        this.f9700E = false;
        m29762e();
        this.f9721n = new WindowManager.LayoutParams();
        WindowManager.LayoutParams layoutParams = this.f9721n;
        layoutParams.format = -3;
        layoutParams.type = 2;
        layoutParams.flags = 8;
        m29759f();
        try {
            Class<?> cls = Class.forName("android.view.WindowManager$LayoutParams");
            Field field = cls.getField("privateFlags");
            Field field2 = cls.getField("PRIVATE_FLAG_NO_MOVE_ANIMATION");
            int i = field.getInt(this.f9721n);
            field.setInt(this.f9721n, field2.getInt(this.f9721n) | i);
        } catch (ClassNotFoundException e) {
            C10831c.m10520b("TWMFloatAdView", "buildViews ClassNotFoundException: " + e.toString());
        } catch (Exception e2) {
            C10831c.m10520b("TWMFloatAdView", "buildViews Exception: " + e2.toString());
        }
        WeakReference<Activity> weakReference = this.f9713f;
        if (weakReference == null || weakReference.get() == null) {
            this.f9718k = new JSWebView(this.f9712e.get());
            this.f9719l = new JSWebView(this.f9712e.get());
        } else {
            this.f9718k = new JSWebView(this.f9713f.get());
            this.f9719l = new JSWebView(this.f9713f.get());
        }
        C10831c.m10518c("TWMFloatAdView", "isLeftSide" + this.f9714g);
        if (this.f9714g) {
            this.f9721n.gravity = 51;
            this.f9718k.setLayoutParams(new RelativeLayout.LayoutParams(this.f9725r, this.f9726s));
            this.f9719l.setLayoutParams(new RelativeLayout.LayoutParams(-2, this.f9727t));
        } else {
            this.f9721n.gravity = 53;
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(this.f9725r, this.f9726s);
            layoutParams2.addRule(11);
            layoutParams2.addRule(10);
            this.f9718k.setLayoutParams(layoutParams2);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, this.f9727t);
            layoutParams3.addRule(11);
            layoutParams3.addRule(10);
            this.f9719l.setLayoutParams(layoutParams3);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 11) {
            if (i2 >= 21) {
                this.f9718k.setLayerType(2, null);
                this.f9719l.setLayerType(2, null);
            } else {
                this.f9718k.setLayerType(1, null);
                this.f9719l.setLayerType(1, null);
            }
        }
        this.f9718k.getSettings().setCacheMode(2);
        this.f9719l.getSettings().setCacheMode(2);
        this.f9718k.getSettings().setUseWideViewPort(true);
        this.f9719l.getSettings().setUseWideViewPort(true);
        this.f9718k.getSettings().setLoadWithOverviewMode(true);
        this.f9719l.getSettings().setLoadWithOverviewMode(true);
        m29790a();
        m29773b();
        this.f9719l.setBackgroundColor(0);
        this.f9718k.setBackgroundColor(0);
        this.f9718k.getSettings().setLoadsImagesAutomatically(true);
        this.f9733z = new RelativeLayout(this.f9713f.get());
        this.f9733z.addView(this.f9719l);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(11);
        layoutParams4.addRule(10);
        this.f9697B = new ImageView(this.f9712e.get());
        this.f9697B.setVisibility(4);
        this.f9697B.setImageBitmap(C10832d.m10498b("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"));
        this.f9697B.setLayoutParams(layoutParams4);
        this.f9697B.setId(1);
        this.f9697B.setOnClickListener(new View.OnClickListener() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TWMFloatAdView.this.m29774a(false);
            }
        });
        this.f9733z.addView(this.f9697B);
        this.f9698C = new ImageView(this.f9712e.get());
        this.f9698C.setImageBitmap(C10832d.m10498b("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"));
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(0, this.f9697B.getId());
        layoutParams5.addRule(10);
        this.f9698C.setLayoutParams(layoutParams5);
        this.f9698C.setVisibility(4);
        this.f9698C.setOnClickListener(new View.OnClickListener() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TWMFloatAdView.this.m29753h();
            }
        });
        this.f9733z.addView(this.f9698C);
        this.f9696A = new RelativeLayout(this.f9713f.get());
        this.f9696A.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f9696A.addView(this.f9718k);
        this.f9729v = new ImageView(this.f9712e.get());
        this.f9729v.setVisibility(4);
        this.f9729v.setImageBitmap(C10832d.m10498b("iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6Q0E0MDUwQjM0OEExMTFFNkI3QjJERDczQURFNkMzMzMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6Q0E0MDUwQjQ0OEExMTFFNkI3QjJERDczQURFNkMzMzMiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpDQTQwNTBCMTQ4QTExMUU2QjdCMkRENzNBREU2QzMzMyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpDQTQwNTBCMjQ4QTExMUU2QjdCMkRENzNBREU2QzMzMyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pmnr0csAAAKhSURBVHja7JZNiFJRFMfv83OGEZVBMwnGGrBphhGkRNxFwuAEVhuFBjeBYGshN+kiGIiEWUjQQgbcJLRwNYsoGGlpEDnQUjeiZCCCUI6Co87tfy+9h4rG+Apm44HDe+/ec8/vnvPOO+8KlFJyGaIglySXBlbNY+zxeEi73SaVSoUYDAbS6XRunJ2d7Q2Hw7uDwcAiCEJPoVCUMHe0urr6oV6vd7VaLVlbWyMqlYoUi0V54AkxQB8C+gB14hazh/vrvV5PBf2FjRz/l4iZwBlBVNutVusdot0enWOFCr2CTOx1u93HiPLl8vJy4p/BADLw1X6/nwP01t9ssQEBdvHz83MBG4iztbKLC840zWbzDYOyyBOJBInH42M2ZrOZZDIZsru7y59RE88R/X2s1ZEp6bmQmkymR2wJU5/PR0WJRqN8TKPR0Hw+z8dqtRpFgfHxlZWVj1j7ZNTXXGC1Wv1WBFutVnp4eCjBw+EwzWaz/B4FRyORCEWKuS2y01UqlUeywXDwRQSLmkwm6aiUy2W6s7NDJ+2gX2WDId+mOKSlUkkCp1KpaVCmJ7LBSNenUWdIPc3lchyIBsKvp6enNBaLjUGRKaafZYPxTb4QnW1tbdFCoSDBvF4v3d/flyJn9+ha3BbvurK0tPRaNnhjY+MmnDWZs0AgIEH8fr8UXTqd5mPVapVVMx+zWCyv1tfX78gGs15ts9mestSxig2FQjQYDI6lFa+D4vumbrebPyPSKrJzzel0Etlgl8tF7HY7QdQHMwpoUutGo/H25uYmcTgcY77m/i3+qe5ner0+hmh+zOrnmD/GBu+hZZ5MO2zI+jvBGSu0A+YcLTSEnuzBGGuJQ6T6u06ne49fY67RaPycdcIRFkefBXgBXoAX4IvKbwEGANBvByXlrQlkAAAAAElFTkSuQmCC"));
        this.f9729v.setLayoutParams(layoutParams4);
        this.f9729v.setId(1);
        this.f9729v.setOnClickListener(new View.OnClickListener() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TWMFloatAdView.this.m29774a(false);
            }
        });
        this.f9696A.addView(this.f9729v);
        WindowManager.LayoutParams layoutParams6 = this.f9721n;
        layoutParams6.width = this.f9725r;
        layoutParams6.height = this.f9726s;
        this.f9696A.setVisibility(4);
        this.f9733z.setVisibility(4);
        m29788a(this.f9696A, this.f9721n);
        if (Build.VERSION.SDK_INT < 16) {
            this.f9729v.setBackgroundDrawable(null);
            this.f9697B.setBackgroundDrawable(null);
            this.f9698C.setBackgroundDrawable(null);
            return;
        }
        this.f9729v.setBackground(null);
        this.f9697B.setBackground(null);
        this.f9698C.setBackground(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m29753h() {
        if (this.f9721n != null && !this.f9730w && !this.f9700E) {
            this.f9700E = true;
            C10831c.m10518c("TWMFloatAdView", "setNarrowSize invoked!!");
            m29762e();
            m29759f();
            WindowManager.LayoutParams layoutParams = this.f9721n;
            layoutParams.width = this.f9725r;
            layoutParams.height = this.f9726s;
            m29788a(this.f9696A, layoutParams);
            this.f9696A.setVisibility(0);
            this.f9732y = 2;
            new Handler().postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.6
                @Override // java.lang.Runnable
                public void run() {
                    TWMFloatAdView tWMFloatAdView;
                    if (!TWMFloatAdView.this.f9730w && TWMFloatAdView.this.f9721n != null && (tWMFloatAdView = TWMFloatAdView.this) != null) {
                        tWMFloatAdView.f9733z.setVisibility(4);
                        TWMFloatAdView tWMFloatAdView2 = TWMFloatAdView.this;
                        tWMFloatAdView2.m29789a(tWMFloatAdView2.f9733z);
                        TWMFloatAdView.this.f9732y = 0;
                        if (!TWMFloatAdView.this.f9731x) {
                            TWMFloatAdView.this.m29744l();
                        }
                        if (TWMFloatAdView.this.f9719l != null && !TWMFloatAdView.this.f9704I) {
                            TWMFloatAdView.this.f9719l.handleNarrow(0);
                        }
                        TWMFloatAdView.this.f9700E = false;
                    }
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m29750i() {
        if (this.f9721n != null && !this.f9717j && !this.f9700E) {
            this.f9700E = true;
            if (!this.f9716i || !this.f9715h) {
                new Handler().postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.7
                    @Override // java.lang.Runnable
                    public void run() {
                        TWMFloatAdView.this.m29750i();
                    }
                }, 100L);
                return;
            }
            C10831c.m10518c("TWMFloatAdView", "setExpandSize invoked!!");
            m29762e();
            this.f9721n.y = (int) Math.round(this.f9724q * 0.15d);
            WindowManager.LayoutParams layoutParams = this.f9721n;
            layoutParams.width = this.f9723p;
            layoutParams.height = this.f9727t;
            this.f9729v.setVisibility(4);
            this.f9733z.setVisibility(4);
            m29788a(this.f9733z, this.f9721n);
            this.f9732y = 2;
            new Handler().postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.8
                @Override // java.lang.Runnable
                public void run() {
                    if (!TWMFloatAdView.this.f9730w) {
                        TWMFloatAdView.this.f9733z.setVisibility(0);
                        new Handler().postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMFloatAdView.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!TWMFloatAdView.this.f9730w) {
                                    TWMFloatAdView.this.f9696A.setVisibility(4);
                                    if (TWMFloatAdView.this.f9728u) {
                                        C10831c.m10518c("TWMFloatAdView", "btn_Close setVisibility!!");
                                        TWMFloatAdView.this.f9729v.setVisibility(0);
                                    }
                                    if (TWMFloatAdView.this.f9719l != null && !TWMFloatAdView.this.f9704I) {
                                        TWMFloatAdView.this.f9719l.handleNarrow(1);
                                    }
                                    TWMFloatAdView tWMFloatAdView = TWMFloatAdView.this;
                                    tWMFloatAdView.m29789a(tWMFloatAdView.f9696A);
                                    TWMFloatAdView.this.f9732y = 1;
                                    if (!TWMFloatAdView.this.f9731x) {
                                        TWMFloatAdView.this.m29746k();
                                    }
                                    TWMFloatAdView.this.f9700E = false;
                                }
                            }
                        }, 200L);
                    }
                }
            }, 50L);
        }
    }

    /* renamed from: j */
    private boolean m29748j() {
        return this.f9722o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m29746k() {
        C10831c.m10518c("TWMFloatAdView", "showButtonNarrow invoked");
        ImageView imageView = this.f9698C;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m29744l() {
        C10831c.m10518c("TWMFloatAdView", "disableButtonNarrow invoked");
        ImageView imageView = this.f9698C;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m29742m() {
        C10831c.m10518c("TWMFloatAdView", "showButtonClose invoked");
        ImageView imageView = this.f9729v;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        ImageView imageView2 = this.f9697B;
        if (imageView2 != null) {
            imageView2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m29740n() {
        C10831c.m10518c("TWMFloatAdView", "disableButtonClose invoked");
        ImageView imageView = this.f9729v;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
        ImageView imageView2 = this.f9697B;
        if (imageView2 != null) {
            imageView2.setVisibility(4);
        }
    }

    public void destroy() {
        C10831c.m10518c("TWMFloatAdView", "destroy");
        this.f9711d = null;
        this.f9706K = null;
        this.f9710c = null;
        this.f9709b = null;
        this.f9712e = null;
        try {
            this.f9713f.get().unregisterReceiver(this.f9707L);
        } catch (IllegalArgumentException e) {
            C10831c.m10520b("TWMFloatAdView", "destroy IllegalArgumentException: " + e.toString());
        } catch (Exception e2) {
            C10831c.m10520b("TWMFloatAdView", "destroy Exception: " + e2.toString());
        }
        if (!(this.f9708a == null || C4117a.m29671b().m29673a(this.f9708a) == null)) {
            C10831c.m10518c("TWMFloatAdView", "Remove ad info in hashmap, key = " + this.f9708a);
            C4117a.m29671b().m29669c(this.f9708a);
        }
        m29769c();
    }

    public TWMAdViewListener getAdListener() {
        return this.f9709b;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public boolean isReady() {
        return false;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void loadAd(TWMAdRequest tWMAdRequest) {
        C10831c.m10518c("TWMFloatAdView", "loadAd invoked!!");
        this.f9720m = tWMAdRequest;
        WeakReference<Context> weakReference = this.f9712e;
        if (weakReference == null || weakReference.get() == null || this.f9719l == null || this.f9718k == null || !C10832d.m10483f(this.f9712e.get())) {
            TWMAdViewListener tWMAdViewListener = this.f9709b;
            if (tWMAdViewListener != null) {
                tWMAdViewListener.onFailedToReceiveAd(this, TWMAdRequest.ErrorCode.INVALID_REQUEST);
            }
        } else if (C4127a.m29638b(this.f9712e.get())) {
            C10831c.m10518c("TWMFloatAdView", "isAdLoading ? " + m29748j());
            C10831c.m10518c("TWMFloatAdView", "TWMAdActivity.isShowing() ? " + TWMAdActivity.isShowing());
            if (!m29748j() && !TWMAdActivity.isShowing()) {
                C4127a.m29652a(this.f9712e.get(), this.f9710c, null, tWMAdRequest, this.f9706K, true, "F");
            }
        }
    }

    public void pause() {
        this.f9703H = true;
        RelativeLayout relativeLayout = this.f9696A;
        if (relativeLayout != null) {
            relativeLayout.removeCallbacks(null);
        }
        RelativeLayout relativeLayout2 = this.f9733z;
        if (relativeLayout2 != null) {
            relativeLayout2.removeCallbacks(null);
        }
        C10831c.m10518c("TWMFloatAdView", "pause");
        C10831c.m10518c("TWMFloatAdView", "pause floatType" + this.f9702G);
        if (!this.f9730w) {
            m29774a(true);
        }
        JSWebView jSWebView = this.f9719l;
        if (jSWebView != null) {
            if (!this.f9704I) {
                jSWebView.handleNarrow(0);
            }
            if (this.f9702G.equals(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS)) {
                this.f9719l.stopLoading();
                this.f9719l = null;
                this.f9704I = true;
            }
        }
        Handler handler = this.f9699D;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void resume() {
        C4117a.AbstractC4119b bVar;
        Boolean bool;
        C10831c.m10518c("TWMFloatAdView", "resume");
        this.f9703H = false;
        if (this.f9701F) {
            this.f9701F = false;
            return;
        }
        if (!this.f9730w && this.f9718k != null) {
            m29762e();
            m29759f();
            WindowManager.LayoutParams layoutParams = this.f9721n;
            layoutParams.width = this.f9725r;
            layoutParams.height = this.f9726s;
            m29790a();
            m29773b();
            this.f9696A.setVisibility(0);
            m29788a(this.f9696A, this.f9721n);
            this.f9732y = 0;
        }
        if (this.f9708a != null && (bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.f9708a)) != null && (bool = (Boolean) bVar.m29659a("lam")) != null && bool.booleanValue() && this.f9709b != null) {
            bVar.m29660a();
            C4117a.m29671b().m29672a(this.f9708a, bVar);
            this.f9709b.onDismissScreen(this);
        }
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void setAdListener(TWMAdViewListener tWMAdViewListener) {
        this.f9709b = tWMAdViewListener;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void stopLoading() {
        pause();
    }
}
