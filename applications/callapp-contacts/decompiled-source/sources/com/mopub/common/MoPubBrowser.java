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

    /* renamed from: a  reason: collision with root package name */
    private WebView f33843a;

    /* renamed from: b  reason: collision with root package name */
    private ImageButton f33844b;

    /* renamed from: c  reason: collision with root package name */
    private ImageButton f33845c;

    /* renamed from: d  reason: collision with root package name */
    private ImageButton f33846d;
    private ImageButton e;
    private boolean f;

    private ImageButton a(Drawable drawable) {
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
        return this.f33844b;
    }

    public ImageButton getCloseButton() {
        return this.e;
    }

    public ImageButton getForwardButton() {
        return this.f33845c;
    }

    public ImageButton getRefreshButton() {
        return this.f33846d;
    }

    public WebView getWebView() {
        return this.f33843a;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(-1);
        boolean requestFeature = getWindow().requestFeature(2);
        this.f = requestFeature;
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
        this.f33844b = a(Drawables.UNLEFT_ARROW.createDrawable(this));
        this.f33845c = a(Drawables.UNRIGHT_ARROW.createDrawable(this));
        this.f33846d = a(Drawables.REFRESH.createDrawable(this));
        this.e = a(Drawables.CLOSE.createDrawable(this));
        linearLayout2.addView(this.f33844b);
        linearLayout2.addView(this.f33845c);
        linearLayout2.addView(this.f33846d);
        linearLayout2.addView(this.e);
        this.f33843a = new BaseWebView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, 1);
        this.f33843a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f33843a);
        setContentView(linearLayout);
        WebSettings settings = this.f33843a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        this.f33843a.loadUrl(getIntent().getStringExtra(DESTINATION_URL_KEY));
        this.f33843a.setWebViewClient(new a(this));
        this.f33844b.setBackgroundColor(0);
        this.f33844b.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MoPubBrowser.this.f33843a.canGoBack()) {
                    MoPubBrowser.this.f33843a.goBack();
                }
            }
        });
        this.f33845c.setBackgroundColor(0);
        this.f33845c.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MoPubBrowser.this.f33843a.canGoForward()) {
                    MoPubBrowser.this.f33843a.goForward();
                }
            }
        });
        this.f33846d.setBackgroundColor(0);
        this.f33846d.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MoPubBrowser.this.f33843a.reload();
            }
        });
        this.e.setBackgroundColor(0);
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.4
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
        this.f33843a.destroy();
        this.f33843a = null;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        this.f33843a.setWebChromeClient(null);
        WebViews.onPause(this.f33843a, isFinishing());
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        this.f33843a.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.common.MoPubBrowser.5
            @Override // android.webkit.WebChromeClient
            public final void onProgressChanged(WebView webView, int i) {
                if (i == 100) {
                    MoPubBrowser.this.setTitle(webView.getUrl());
                } else {
                    MoPubBrowser.this.setTitle("Loading...");
                }
                if (MoPubBrowser.this.f && Build.VERSION.SDK_INT < 24) {
                    MoPubBrowser.this.setProgress(i * 100);
                }
            }
        });
        this.f33843a.onResume();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Utils.hideNavigationBar(this);
    }
}
