package com.aotter.net.trek.ads.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.ads.BaseWebView;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.ads.interfaces.InterActiveWebViewListener;
import com.aotter.net.trek.ads.interfaces.TrekMediaViewListener;
import com.aotter.net.trek.ads.view.common.CloseableLayout;
import com.aotter.net.trek.ads.view.controller.TrekMediaViewHandler;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.model.CatWalk;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.util.TrekLog;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/InterActiveWebView.class */
public class InterActiveWebView extends BaseWebView implements TrekMediaViewListener {

    /* renamed from: b */
    public WebViewClient f1263b;

    /* renamed from: c */
    public Activity f1264c;

    /* renamed from: d */
    public Gson f1265d;

    /* renamed from: e */
    public TrekMediaViewListener f1266e;

    /* renamed from: f */
    public TrekMediaViewHandler f1267f;

    /* renamed from: g */
    public Dialog f1268g;

    /* renamed from: h */
    public NativeAd f1269h;

    /* renamed from: i */
    public Dialog f1270i;

    /* renamed from: k */
    public InterActiveWebView f1272k;

    /* renamed from: m */
    public AdListener f1274m;

    /* renamed from: n */
    public InterActiveWebViewListener f1275n;

    /* renamed from: j */
    public boolean f1271j = true;

    /* renamed from: l */
    public boolean f1273l = false;

    /* renamed from: o */
    public boolean f1276o = false;

    /* renamed from: p */
    public boolean f1277p = true;

    public InterActiveWebView(Context context) {
        super(context);
        m36497b();
        m36494c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m36498a(String str) {
        this.f1272k = new InterActiveWebView(this.f1264c);
        this.f1272k.m36585a();
        this.f1272k.create(this.f1264c, this.f1274m, this.f1269h);
        this.f1272k.loadUrl(str);
        CloseableLayout closeableLayout = new CloseableLayout(this.f1264c);
        closeableLayout.setOnCloseListener(new C1695f(this));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        closeableLayout.addView(this.f1272k, layoutParams);
        this.f1268g = new Dialog(this.f1264c);
        this.f1268g.requestWindowFeature(1);
        this.f1268g.setCancelable(true);
        this.f1268g.setContentView(closeableLayout);
        this.f1268g.getWindow().setSoftInputMode(16);
        this.f1268g.setOnDismissListener(new DialogInterface$OnDismissListenerC1696g(this));
        if (this.f1273l) {
            this.f1268g.getWindow().setDimAmount(1.0f);
        }
        this.f1272k.setPopupWindow(this.f1268g);
    }

    /* renamed from: b */
    private void m36497b() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    @SuppressLint({"JavascriptInterface"})
    /* renamed from: c */
    private void m36494c() {
        m36585a();
        this.f1265d = new Gson();
        this.f1266e = this;
        setInitialScale(1);
        getSettings().setLoadWithOverviewMode(true);
        getSettings().setUseWideViewPort(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        if (Build.VERSION.SDK_INT >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            setLayerType(2, null);
        } else {
            setLayerType(1, null);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            getSettings().setMixedContentMode(0);
        }
        getSettings().setCacheMode(-1);
        setScrollBarStyle(33554432);
        getSettings().setJavaScriptEnabled(true);
        addJavascriptInterface(new C1697h(this, null), "myjsi");
        m36491d();
        setWebViewClient(this.f1263b);
        setWebChromeClient(new WebChromeClient());
    }

    /* renamed from: d */
    private void m36491d() {
        this.f1263b = new C1686a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m36489e() {
        try {
            if (this.f1268g != null) {
                this.f1268g.show();
                this.f1267f.setDialog(this.f1268g);
            }
        } catch (Exception e) {
        }
    }

    private void setPopupWindow(Dialog dialog) {
        this.f1270i = dialog;
    }

    @Override // com.aotter.net.trek.ads.interfaces.TrekMediaViewListener
    public void actionBrowser(CatWalk.BrowserBean browserBean) {
        try {
            if (!TextUtils.isEmpty(browserBean.getUrl())) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(browserBean.getUrl().replace(" ", "")));
                intent.setFlags(268435456);
                this.f1264c.startActivity(intent);
            }
        } catch (Exception e) {
        }
    }

    @Override // com.aotter.net.trek.ads.interfaces.TrekMediaViewListener
    public void actionCapture() {
    }

    @Override // com.aotter.net.trek.ads.interfaces.TrekMediaViewListener
    public void actionClose(Dialog dialog) {
        try {
            if (this.f1270i != null) {
                this.f1270i.dismiss();
            }
        } catch (Exception e) {
            TrekLog.m36318d("actionClose", e);
        }
    }

    @Override // com.aotter.net.trek.ads.interfaces.TrekMediaViewListener
    public void actionPopup(String str) {
        this.f1264c.runOnUiThread(new RunnableC1687b(this, str));
    }

    @Override // com.aotter.net.trek.ads.interfaces.TrekMediaViewListener
    public void actionVideo(CatWalk.VideoBean videoBean) {
        try {
            if (!TextUtils.isEmpty(this.f1269h.getUrlSession()) && videoBean != null) {
                MFTCApiClient.getSharedInstance(this.f1264c).sendVideoSession(this.f1265d.toJson(videoBean), this.f1269h.getUrlSession());
            }
        } catch (Exception e) {
        }
    }

    public void create(Activity activity, AdListener adListener, NativeAd nativeAd) {
        this.f1264c = activity;
        this.f1269h = nativeAd;
        this.f1274m = adListener;
        this.f1267f = new TrekMediaViewHandler(nativeAd, this.f1266e);
    }

    public String createCatWalkPayload(NativeAd nativeAd) {
        String str;
        try {
            CatWalkWebPayload.C1753Ad ad = new CatWalkWebPayload.C1753Ad(nativeAd);
            str = new CatWalkWebPayload.Builder().device(AotterTrekApplication.mDevice.toJsonObject()).user(AotterTrekApplication.mUser.toJsonObject()).sdkVersion("android_2.0.2_rc12").m36341ad(ad.toJsonObject(this.f1265d.toJson(ad))).build().toString();
        } catch (Exception e) {
            TrekLog.m36316e("createCatWalkPayload", e);
            str = null;
        }
        return str;
    }

    @Override // com.aotter.net.trek.ads.interfaces.TrekMediaViewListener
    public void onAdClick(CatWalk catWalk, NativeAd nativeAd) {
        if (!TextUtils.isEmpty(nativeAd.getAdUrl())) {
            this.f1264c.runOnUiThread(new RunnableC1688c(this, this, nativeAd));
        }
        String urlInteractivePopup = nativeAd.getInteractSrc().getUrlInteractivePopup();
        if (!TextUtils.isEmpty(catWalk.getKey())) {
            HashMap hashMap = new HashMap();
            for (NativeAd.UrlInteractivePopupsBean urlInteractivePopupsBean : nativeAd.getInteractSrc().getUrlInteractivePopups()) {
                hashMap.put(urlInteractivePopupsBean.getKey(), urlInteractivePopupsBean.getUrlX());
            }
            urlInteractivePopup = (String) hashMap.get(catWalk.getKey());
        }
        this.f1264c.runOnUiThread(new RunnableC1693d(this, urlInteractivePopup));
    }

    @Override // android.webkit.WebView
    public void onPause() {
        InterActiveWebView interActiveWebView = this.f1272k;
        if (interActiveWebView != null) {
            interActiveWebView.onPause();
        }
        super.onPause();
    }

    @Override // android.webkit.WebView
    public void onResume() {
        InterActiveWebView interActiveWebView = this.f1272k;
        if (interActiveWebView != null) {
            interActiveWebView.onResume();
        }
        super.onResume();
    }

    public void recordImpression() {
        if (this.f1276o) {
            Activity activity = this.f1264c;
            if (activity != null) {
                activity.runOnUiThread(new RunnableC1694e(this));
                return;
            }
            return;
        }
        this.f1277p = true;
    }

    public void setListener(InterActiveWebViewListener interActiveWebViewListener) {
        this.f1275n = interActiveWebViewListener;
    }

    public void setMediaBackgroundBlack(boolean z) {
        this.f1273l = z;
    }
}
