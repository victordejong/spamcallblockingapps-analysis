package com.mopub.common;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
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
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPubBrowser.class */
public class MoPubBrowser extends Activity {
    public static final String DESTINATION_URL_KEY = "URL";
    public static final String DSP_CREATIVE_ID = "mopub-dsp-creative-id";
    public static final int MOPUB_BROWSER_REQUEST_CODE = 1;

    /* renamed from: a */
    private WebView f58767a;

    /* renamed from: b */
    private ImageButton f58768b;

    /* renamed from: c */
    private ImageButton f58769c;

    /* renamed from: d */
    private ImageButton f58770d;

    /* renamed from: e */
    private ImageButton f58771e;

    /* renamed from: f */
    private boolean f58772f;

    /* renamed from: a */
    private ImageButton m6732a(Drawable drawable) {
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
        return this.f58768b;
    }

    public ImageButton getCloseButton() {
        return this.f58771e;
    }

    public ImageButton getForwardButton() {
        return this.f58769c;
    }

    public ImageButton getRefreshButton() {
        return this.f58770d;
    }

    public WebView getWebView() {
        return this.f58767a;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(-1);
        boolean requestFeature = getWindow().requestFeature(2);
        this.f58772f = requestFeature;
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
        this.f58768b = m6732a(Drawables.UNLEFT_ARROW.createDrawable(this));
        this.f58769c = m6732a(Drawables.UNRIGHT_ARROW.createDrawable(this));
        this.f58770d = m6732a(Drawables.REFRESH.createDrawable(this));
        this.f58771e = m6732a(Drawables.CLOSE.createDrawable(this));
        linearLayout2.addView(this.f58768b);
        linearLayout2.addView(this.f58769c);
        linearLayout2.addView(this.f58770d);
        linearLayout2.addView(this.f58771e);
        this.f58767a = new BaseWebView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, 1);
        this.f58767a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f58767a);
        setContentView(linearLayout);
        WebSettings settings = this.f58767a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        this.f58767a.loadUrl(getIntent().getStringExtra(DESTINATION_URL_KEY));
        this.f58767a.setWebViewClient(new C16714a(this));
        this.f58768b.setBackgroundColor(0);
        this.f58768b.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MoPubBrowser.this.f58767a.canGoBack()) {
                    MoPubBrowser.this.f58767a.goBack();
                }
            }
        });
        this.f58769c.setBackgroundColor(0);
        this.f58769c.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MoPubBrowser.this.f58767a.canGoForward()) {
                    MoPubBrowser.this.f58767a.goForward();
                }
            }
        });
        this.f58770d.setBackgroundColor(0);
        this.f58770d.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MoPubBrowser.this.f58767a.reload();
            }
        });
        this.f58771e.setBackgroundColor(0);
        this.f58771e.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MoPubBrowser.this.finish();
            }
        });
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f58767a.destroy();
        this.f58767a = null;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        this.f58767a.setWebChromeClient(null);
        WebViews.onPause(this.f58767a, isFinishing());
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        this.f58767a.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.common.MoPubBrowser.5
            @Override // android.webkit.WebChromeClient
            public final void onProgressChanged(WebView webView, int i) {
                if (i == 100) {
                    MoPubBrowser.this.setTitle(webView.getUrl());
                } else {
                    MoPubBrowser.this.setTitle("Loading...");
                }
                if (!MoPubBrowser.this.f58772f || Build.VERSION.SDK_INT >= 24) {
                    return;
                }
                MoPubBrowser.this.setProgress(i * 100);
            }
        });
        this.f58767a.onResume();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Utils.hideNavigationBar(this);
    }
}
