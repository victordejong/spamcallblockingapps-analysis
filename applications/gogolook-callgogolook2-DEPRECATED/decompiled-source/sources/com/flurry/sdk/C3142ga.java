package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.flurry.sdk.AbstractC3472lt;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import java.util.Collections;
import java.util.HashMap;
@SuppressLint({"SetJavaScriptEnabled", "ViewConstructor"})
/* renamed from: com.flurry.sdk.ga */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ga.class */
public final class C3142ga extends AbstractDialogInterface$OnKeyListenerC3134fw {

    /* renamed from: f */
    public long f5127f;

    /* renamed from: g */
    public C3157gg f5128g;

    /* renamed from: j */
    public boolean f5131j;

    /* renamed from: k */
    public AbstractC3066fc f5132k;

    /* renamed from: l */
    public ImageButton f5133l;

    /* renamed from: m */
    public ImageButton f5134m;

    /* renamed from: n */
    public ImageButton f5135n;

    /* renamed from: o */
    public ProgressBar f5136o;

    /* renamed from: p */
    public LinearLayout f5137p;

    /* renamed from: a */
    public final String f5122a = C3142ga.class.getSimpleName();

    /* renamed from: b */
    public final int f5123b = C3442ky.m32483b(5);

    /* renamed from: c */
    public final int f5124c = C3442ky.m32483b(9);

    /* renamed from: d */
    public boolean f5125d = false;

    /* renamed from: e */
    public long f5126e = 0;

    /* renamed from: q */
    public AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a f5138q = new AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a() { // from class: com.flurry.sdk.ga.1
        @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
        /* renamed from: a */
        public final void mo32972a() {
            if (C3142ga.this.f5132k != null) {
                C3142ga.this.m32989a();
                C3142ga gaVar = C3142ga.this;
                gaVar.removeView(gaVar.f5132k);
                C3142ga.this.f5132k = null;
            }
        }

        @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
        /* renamed from: b */
        public final void mo32971b() {
            if (C3142ga.this.f5132k != null) {
                C3142ga.this.m32989a();
                C3142ga gaVar = C3142ga.this;
                gaVar.removeView(gaVar.f5132k);
                C3142ga.this.f5132k = null;
            }
        }

        @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a
        /* renamed from: c */
        public final void mo32970c() {
            if (C3142ga.this.f5132k != null) {
                C3142ga.this.m32989a();
                C3142ga gaVar = C3142ga.this;
                gaVar.removeView(gaVar.f5132k);
                C3142ga.this.f5132k = null;
            }
        }
    };

    /* renamed from: h */
    public WebViewClient f5129h = new C3148b(this, (byte) 0);

    /* renamed from: i */
    public WebChromeClient f5130i = new C3147a(this, (byte) 0);

    /* renamed from: com.flurry.sdk.ga$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ga$a.class */
    public final class C3147a extends WebChromeClient {
        public C3147a() {
        }

        public /* synthetic */ C3147a(C3142ga gaVar, byte b) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            if (consoleMessage == null) {
                return false;
            }
            String str = C3142ga.this.f5122a;
            C3356jq.m32615a(3, str, consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            super.onGeolocationPermissionsShowPrompt(str, callback);
            if (C3142ga.this.f5125d) {
                callback.invoke(str, true, false);
            } else {
                callback.invoke(str, false, false);
            }
        }

        @Override // android.webkit.WebChromeClient
        public final void onHideCustomView() {
            C3356jq.m32615a(3, C3142ga.this.f5122a, "onHideCustomView()");
            C3142ga.this.f5131j = false;
            C3142ga.this.f5136o.setVisibility(8);
            C3142ga.this.m32980c();
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            String str3 = C3142ga.this.f5122a;
            C3356jq.m32615a(3, str3, "Javascript alert " + str + " message: " + str2 + " View URL: " + webView.getUrl());
            return super.onJsAlert(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            C3142ga.this.f5136o.setProgress(i);
            super.onProgressChanged(webView, i);
            if (i == 100) {
                C3142ga.this.f5136o.setVisibility(8);
            }
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
            C3356jq.m32615a(3, C3142ga.this.f5122a, "onShowCustomView(14)");
            C3142ga.this.f5131j = true;
            C3142ga.this.f5136o.setVisibility(0);
            C3142ga.this.m32980c();
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            C3356jq.m32615a(3, C3142ga.this.f5122a, "onShowCustomView(7)");
            C3142ga.this.f5131j = true;
            C3142ga.this.f5136o.setVisibility(0);
            C3142ga.this.m32980c();
        }
    }

    /* renamed from: com.flurry.sdk.ga$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ga$b.class */
    public final class C3148b extends WebViewClient {

        /* renamed from: b */
        public boolean f5145b;

        /* renamed from: c */
        public boolean f5146c;

        /* renamed from: d */
        public boolean f5147d;

        public C3148b() {
            this.f5146c = false;
            this.f5147d = false;
        }

        public /* synthetic */ C3148b(C3142ga gaVar, byte b) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            String str2 = C3142ga.this.f5122a;
            C3356jq.m32615a(3, str2, "onPageFinished: duration:" + (System.currentTimeMillis() - C3142ga.this.f5126e) + " for url = " + str);
            if (str != null && webView != null && webView == C3142ga.this.f5128g) {
                C3142ga.this.f5136o.setVisibility(8);
                this.f5145b = false;
                if (!this.f5147d && !this.f5146c && C3142ga.this.f5128g.getProgress() == 100) {
                    String str3 = C3142ga.this.f5122a;
                    C3356jq.m32615a(3, str3, "fireEvent(event=" + EnumC2874bi.EV_PAGE_LOAD_FINISHED + ",params=" + Collections.emptyMap() + ")");
                    C3007du.m33321a(EnumC2874bi.EV_PAGE_LOAD_FINISHED, Collections.emptyMap(), C3142ga.this.getContext(), C3142ga.this.getAdObject(), C3142ga.this.getAdController(), 0);
                    this.f5147d = true;
                }
                C3142ga.this.m32980c();
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            String str2 = C3142ga.this.f5122a;
            C3356jq.m32615a(3, str2, "onPageStarted: url = " + str);
            if (str != null && webView != null && webView == C3142ga.this.f5128g) {
                C3142ga.m32982b();
                C3142ga.this.dismissProgressDialog();
                if (Build.VERSION.SDK_INT < 11 && this.f5145b && C3142ga.this.m32983a(str, true)) {
                    C3356jq.m32615a(3, C3142ga.this.f5122a, "onPageStarted: stopLoading is called");
                    webView.stopLoading();
                }
                C3142ga.this.f5136o.setVisibility(0);
                this.f5145b = true;
                C3142ga.this.f5126e = System.currentTimeMillis();
                C3142ga.this.m32980c();
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            String str3 = C3142ga.this.f5122a;
            C3356jq.m32615a(3, str3, "onReceivedError: error = " + i + " description= " + str + " failingUrl= " + str2);
            this.f5146c = true;
            super.onReceivedError(webView, i, str, str2);
            webView.clearSslPreferences();
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, @NonNull SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            String str = C3142ga.this.f5122a;
            C3356jq.m32615a(3, str, "onReceivedSslError: error = " + sslError.toString());
            this.f5146c = true;
            webView.clearSslPreferences();
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            String str2 = C3142ga.this.f5122a;
            C3356jq.m32615a(3, str2, "shouldOverrideUrlLoading: url = " + str);
            if (str == null || webView == null || webView != C3142ga.this.f5128g) {
                return false;
            }
            C3142ga.m32982b();
            boolean a = C3142ga.this.m32983a(str, this.f5145b);
            this.f5145b = false;
            return a;
        }
    }

    /* renamed from: com.flurry.sdk.ga$c */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ga$c.class */
    public enum EnumC3149c {
        WEB_RESULT_UNKNOWN,
        WEB_RESULT_BACK,
        WEB_RESULT_CLOSE
    }

    @TargetApi(11)
    public C3142ga(Context context, String str, AbstractC3518x xVar, AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a aVar) {
        super(context, xVar, aVar);
        this.f5127f = 0L;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.f5137p = new LinearLayout(context);
        this.f5137p.setOrientation(1);
        this.f5137p.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.f5128g = new C3157gg(context);
        this.f5128g.setWebViewClient(this.f5129h);
        this.f5128g.setWebChromeClient(this.f5130i);
        this.f5128g.setPadding(5, 5, 5, 5);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.f5128g.loadUrl(str);
        this.f5136o = new ProgressBar(context, null, 16842872);
        this.f5136o.setMax(100);
        this.f5136o.setProgress(0);
        this.f5136o.setLayoutParams(new RelativeLayout.LayoutParams(-1, C3442ky.m32483b(3)));
        this.f5133l = new ImageButton(context);
        this.f5133l.setImageBitmap(C3156ge.m32969a());
        this.f5133l.setBackgroundColor(getResources().getColor(17170445));
        this.f5133l.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f5133l.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.ga.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3142ga.this.m32988a(EnumC3149c.WEB_RESULT_CLOSE);
            }
        });
        this.f5134m = new ImageButton(context);
        this.f5134m.setId(1);
        this.f5134m.setImageBitmap(C3156ge.m32965b());
        this.f5134m.setBackgroundColor(getResources().getColor(17170445));
        this.f5134m.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f5134m.setVisibility(0);
        this.f5134m.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.ga.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (C3142ga.this.f5128g == null || !C3142ga.this.f5128g.canGoBack()) {
                    C3142ga.this.m32988a(EnumC3149c.WEB_RESULT_BACK);
                } else {
                    C3142ga.this.f5128g.goBack();
                }
            }
        });
        this.f5135n = new ImageButton(context);
        this.f5135n.setImageBitmap(C3156ge.m32964c());
        this.f5135n.setBackgroundColor(getResources().getColor(17170445));
        this.f5135n.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f5135n.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.ga.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (C3142ga.this.f5128g != null && C3142ga.this.f5128g.canGoForward()) {
                    C3142ga.this.f5128g.goForward();
                }
            }
        });
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(C3442ky.m32483b(35), C3442ky.m32483b(35));
        layoutParams2.addRule(11);
        layoutParams2.addRule(13);
        int i = this.f5123b;
        layoutParams2.setMargins(i, i, i, i);
        ImageButton imageButton = this.f5133l;
        int i2 = this.f5124c;
        imageButton.setPadding(i2, i2, i2, i2);
        relativeLayout.addView(this.f5133l, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(C3442ky.m32483b(35), C3442ky.m32483b(35));
        layoutParams3.addRule(9);
        layoutParams3.addRule(0, this.f5135n.getId());
        layoutParams3.addRule(13);
        int i3 = this.f5123b;
        layoutParams3.setMargins(i3, i3, i3, i3);
        ImageButton imageButton2 = this.f5134m;
        int i4 = this.f5124c;
        imageButton2.setPadding(i4, i4, i4, i4);
        relativeLayout.addView(this.f5134m, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(C3442ky.m32483b(35), C3442ky.m32483b(35));
        layoutParams4.addRule(1, this.f5134m.getId());
        layoutParams4.addRule(13);
        int i5 = this.f5123b;
        layoutParams4.setMargins(i5, i5, i5, i5);
        ImageButton imageButton3 = this.f5135n;
        int i6 = this.f5124c;
        imageButton3.setPadding(i6, i6, i6, i6);
        relativeLayout.addView(this.f5135n, layoutParams4);
        showProgressDialog();
        relativeLayout.setGravity(17);
        m32980c();
        this.f5137p.addView(relativeLayout);
        this.f5137p.addView(this.f5136o);
        this.f5137p.addView(this.f5128g, layoutParams);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        addView(this.f5137p);
        this.f5127f = SystemClock.elapsedRealtime();
    }

    /* renamed from: a */
    public static boolean m32984a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        String queryParameter = Uri.parse(str2).getQueryParameter("link");
        if (TextUtils.isEmpty(queryParameter)) {
            return false;
        }
        return queryParameter.equalsIgnoreCase(str);
    }

    /* renamed from: b */
    public static /* synthetic */ void m32982b() {
        if (Build.VERSION.SDK_INT < 21) {
            CookieSyncManager.getInstance().sync();
        } else {
            CookieManager.getInstance().flush();
        }
    }

    /* renamed from: a */
    public final void m32989a() {
        setVisibility(0);
        AbstractC3066fc fcVar = this.f5132k;
        if (fcVar != null) {
            fcVar.mo33160c();
        }
    }

    /* renamed from: a */
    public final void m32988a(EnumC3149c cVar) {
        if (cVar.equals(EnumC3149c.WEB_RESULT_CLOSE) || cVar.equals(EnumC3149c.WEB_RESULT_UNKNOWN)) {
            onViewClose();
        } else {
            onViewBack();
        }
    }

    /* renamed from: a */
    public final boolean m32983a(String str, boolean z) {
        boolean z2;
        if (C3452lf.m32431f(str)) {
            z2 = true;
            if (C3452lf.m32431f(str)) {
                if (getAdController().f4111b.f4151f) {
                    this.f5132k = C3073fd.m33154a(getContext(), C3075fe.f4889b, getAdObject(), this.f5138q);
                } else {
                    this.f5132k = C3073fd.m33154a(getContext(), C3075fe.f4890c, getAdObject(), this.f5138q);
                }
                AbstractC3066fc fcVar = this.f5132k;
                z2 = true;
                if (fcVar != null) {
                    fcVar.initLayout();
                    addView(this.f5132k);
                    z2 = true;
                }
            }
        } else if (C3452lf.m32433d(str)) {
            boolean z3 = z;
            if (!z) {
                z3 = m32984a(str, getUrl());
            }
            C3016ec.m33288a(getContext(), str);
            if (z3) {
                onViewClose();
            }
            C3007du.m33321a(EnumC2874bi.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
            z2 = true;
        } else if (C3452lf.m32432e(str)) {
            boolean b = C3016ec.m33286b(getContext(), str);
            z2 = b;
            if (b) {
                boolean z4 = z;
                if (!z) {
                    z4 = m32984a(str, getUrl());
                }
                if (z4) {
                    onViewClose();
                }
                C3007du.m33321a(EnumC2874bi.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
                z2 = b;
            }
        } else {
            boolean d = C3016ec.m33283d(getContext(), str);
            z2 = d;
            if (d) {
                boolean z5 = z;
                if (!z) {
                    z5 = m32984a(str, getUrl());
                }
                if (z5) {
                    onViewClose();
                }
                C3007du.m33321a(EnumC2874bi.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
                z2 = d;
            }
        }
        return z2;
    }

    /* renamed from: c */
    public final void m32980c() {
        if (this.f5128g.canGoForward()) {
            this.f5135n.setVisibility(0);
        } else {
            this.f5135n.setVisibility(4);
        }
    }

    public final String getUrl() {
        C3157gg ggVar = this.f5128g;
        return ggVar != null ? ggVar.getUrl() : null;
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public final void initLayout() {
        super.initLayout();
        setOrientation(4);
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    @TargetApi(11)
    public final void onActivityDestroy() {
        super.onActivityDestroy();
        if (this.f5128g != null) {
            dismissProgressDialog();
            removeView(this.f5128g);
            this.f5128g.stopLoading();
            if (Build.VERSION.SDK_INT >= 11) {
                this.f5128g.onPause();
            }
            this.f5128g.destroy();
            this.f5128g = null;
        }
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    @TargetApi(11)
    public final void onActivityPause() {
        super.onActivityPause();
        C3157gg ggVar = this.f5128g;
        if (ggVar != null && Build.VERSION.SDK_INT >= 11) {
            ggVar.onPause();
        }
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    @TargetApi(11)
    public final void onActivityResume() {
        super.onActivityResume();
        C3157gg ggVar = this.f5128g;
        if (ggVar != null && Build.VERSION.SDK_INT >= 11) {
            ggVar.onResume();
        }
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public final boolean onBackKey() {
        C3157gg ggVar;
        if (!(this.f5131j || ((ggVar = this.f5128g) != null && ggVar.canGoBack()))) {
            m32988a(EnumC3149c.WEB_RESULT_BACK);
        } else if (this.f5131j) {
            this.f5130i.onHideCustomView();
        } else {
            C3157gg ggVar2 = this.f5128g;
            if (ggVar2 != null) {
                ggVar2.goBack();
            }
        }
        m32989a();
        return true;
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public final void onViewLoadTimeout() {
        C3007du.m33321a(EnumC2874bi.EV_AD_WILL_CLOSE, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
        if (getAdObject() != null && (getAdObject() instanceof C2788ab)) {
            HashMap<String, Object> hashMap = getAdObject().mo32279k().f4111b.f4155j;
            if (hashMap != null && !hashMap.isEmpty()) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = this.f5127f;
                hashMap.put(AbstractC3472lt.EnumC3474b.URL.f5980e, this.f5128g.getUrl());
                hashMap.put(AbstractC3472lt.EnumC3474b.DELTA_ON_CLICK.f5980e, String.valueOf(elapsedRealtime - j));
            }
            if (C3461lm.m32419a().f5954a != null) {
                AbstractC3472lt ltVar = C3461lm.m32419a().f5954a;
                AbstractC3472lt ltVar2 = C3461lm.m32419a().f5954a;
            }
        }
    }
}
