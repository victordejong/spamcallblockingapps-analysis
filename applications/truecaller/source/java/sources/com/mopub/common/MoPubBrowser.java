package com.mopub.common;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mopub.common.util.Drawables;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.util.WebViews;
import e.n.a.b;
import e.n.a.e;
import e.n.a.f;
import e.n.a.g;
import e.n.a.h;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubBrowser.class */
public class MoPubBrowser extends Activity {
    public static final String DESTINATION_URL_KEY = "URL";
    public static final String DSP_CREATIVE_ID = "mopub-dsp-creative-id";
    public static final int MOPUB_BROWSER_REQUEST_CODE = 1;

    /* renamed from: a */
    public WebView f8533a;

    /* renamed from: b */
    public ImageButton f8534b;

    /* renamed from: c */
    public ImageButton f8535c;

    /* renamed from: d */
    public ImageButton f8536d;

    /* renamed from: e */
    public ImageButton f8537e;

    /* renamed from: f */
    public boolean f8538f;

    /* renamed from: com.mopub.common.MoPubBrowser$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubBrowser$a.class */
    public class C2641a extends WebChromeClient {
        public C2641a() {
            MoPubBrowser.this = r4;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                MoPubBrowser.this.setTitle(webView.getUrl());
            } else {
                MoPubBrowser.this.setTitle("Loading...");
            }
            MoPubBrowser moPubBrowser = MoPubBrowser.this;
            if (!moPubBrowser.f8538f || Build.VERSION.SDK_INT >= 24) {
                return;
            }
            moPubBrowser.setProgress(i * 100);
        }
    }

    /* renamed from: a */
    public final ImageButton m36305a(Drawable drawable) {
        ImageButton imageButton = new ImageButton(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams.gravity = 16;
        imageButton.setLayoutParams(layoutParams);
        imageButton.setImageDrawable(drawable);
        return imageButton;
    }

    @Override // android.app.Activity
    public void finish() {
        ((ViewGroup) getWindow().getDecorView()).removeAllViews();
        super.finish();
    }

    public ImageButton getBackButton() {
        return this.f8534b;
    }

    public ImageButton getCloseButton() {
        return this.f8537e;
    }

    public ImageButton getForwardButton() {
        return this.f8535c;
    }

    public ImageButton getRefreshButton() {
        return this.f8536d;
    }

    public WebView getWebView() {
        return this.f8533a;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(-1);
        boolean requestFeature = getWindow().requestFeature(2);
        this.f8538f = requestFeature;
        if (requestFeature) {
            getWindow().setFeatureInt(2, -1);
        }
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(relativeLayout);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setId(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setBackgroundDrawable(Drawables.BACKGROUND.createDrawable(this));
        relativeLayout.addView(linearLayout2);
        this.f8534b = m36305a(Drawables.UNLEFT_ARROW.createDrawable(this));
        this.f8535c = m36305a(Drawables.UNRIGHT_ARROW.createDrawable(this));
        this.f8536d = m36305a(Drawables.REFRESH.createDrawable(this));
        this.f8537e = m36305a(Drawables.CLOSE.createDrawable(this));
        linearLayout2.addView(this.f8534b);
        linearLayout2.addView(this.f8535c);
        linearLayout2.addView(this.f8536d);
        linearLayout2.addView(this.f8537e);
        this.f8533a = new BaseWebView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, 1);
        this.f8533a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f8533a);
        setContentView(linearLayout);
        WebSettings settings = this.f8533a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        this.f8533a.loadUrl(getIntent().getStringExtra(DESTINATION_URL_KEY));
        this.f8533a.setWebViewClient(new b(this));
        this.f8534b.setBackgroundColor(0);
        this.f8534b.setOnClickListener(new e(this));
        this.f8535c.setBackgroundColor(0);
        this.f8535c.setOnClickListener(new f(this));
        this.f8536d.setBackgroundColor(0);
        this.f8536d.setOnClickListener(new g(this));
        this.f8537e.setBackgroundColor(0);
        this.f8537e.setOnClickListener(new h(this));
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f8533a.destroy();
        this.f8533a = null;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        this.f8533a.setWebChromeClient(null);
        WebViews.onPause(this.f8533a, isFinishing());
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        this.f8533a.setWebChromeClient(new C2641a());
        this.f8533a.onResume();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        Utils.hideNavigationBar(this);
    }
}
