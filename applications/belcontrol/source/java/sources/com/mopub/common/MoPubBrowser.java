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
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubBrowser.class */
public class MoPubBrowser extends Activity {
    public static final String DESTINATION_URL_KEY = "URL";
    public static final String DSP_CREATIVE_ID = "mopub-dsp-creative-id";
    public static final int MOPUB_BROWSER_REQUEST_CODE = 1;

    /* renamed from: a */
    public WebView f4273a;

    /* renamed from: b */
    public ImageButton f4274b;

    /* renamed from: c */
    public ImageButton f4275c;

    /* renamed from: d */
    public ImageButton f4276d;

    /* renamed from: f */
    public ImageButton f4277f;

    /* renamed from: g */
    public boolean f4278g;

    /* renamed from: com.mopub.common.MoPubBrowser$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubBrowser$a.class */
    public class View$OnClickListenerC1014a implements View.OnClickListener {
        public View$OnClickListenerC1014a() {
            MoPubBrowser.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MoPubBrowser.this.f4273a.canGoBack()) {
                MoPubBrowser.this.f4273a.goBack();
            }
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubBrowser$b.class */
    public class View$OnClickListenerC1015b implements View.OnClickListener {
        public View$OnClickListenerC1015b() {
            MoPubBrowser.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MoPubBrowser.this.f4273a.canGoForward()) {
                MoPubBrowser.this.f4273a.goForward();
            }
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubBrowser$c.class */
    public class View$OnClickListenerC1016c implements View.OnClickListener {
        public View$OnClickListenerC1016c() {
            MoPubBrowser.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MoPubBrowser.this.f4273a.reload();
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubBrowser$d.class */
    public class View$OnClickListenerC1017d implements View.OnClickListener {
        public View$OnClickListenerC1017d() {
            MoPubBrowser.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MoPubBrowser.this.finish();
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubBrowser$e.class */
    public class C1018e extends WebChromeClient {
        public C1018e() {
            MoPubBrowser.this = r4;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                MoPubBrowser.this.setTitle(webView.getUrl());
            } else {
                MoPubBrowser.this.setTitle("Loading...");
            }
            if (!MoPubBrowser.this.f4278g || Build.VERSION.SDK_INT >= 24) {
                return;
            }
            MoPubBrowser.this.setProgress(i * 100);
        }
    }

    /* renamed from: c */
    public final void m3936c() {
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    /* renamed from: d */
    public final ImageButton m3935d(Drawable drawable) {
        ImageButton imageButton = new ImageButton(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams.gravity = 16;
        imageButton.setLayoutParams(layoutParams);
        imageButton.setImageDrawable(drawable);
        return imageButton;
    }

    /* renamed from: e */
    public final View m3934e() {
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
        this.f4274b = m3935d(Drawables.UNLEFT_ARROW.createDrawable(this));
        this.f4275c = m3935d(Drawables.UNRIGHT_ARROW.createDrawable(this));
        this.f4276d = m3935d(Drawables.REFRESH.createDrawable(this));
        this.f4277f = m3935d(Drawables.CLOSE.createDrawable(this));
        linearLayout2.addView(this.f4274b);
        linearLayout2.addView(this.f4275c);
        linearLayout2.addView(this.f4276d);
        linearLayout2.addView(this.f4277f);
        this.f4273a = new BaseWebView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, 1);
        this.f4273a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f4273a);
        return linearLayout;
    }

    /* renamed from: f */
    public final void m3933f() {
        this.f4274b.setBackgroundColor(0);
        this.f4274b.setOnClickListener(new View$OnClickListenerC1014a());
        this.f4275c.setBackgroundColor(0);
        this.f4275c.setOnClickListener(new View$OnClickListenerC1015b());
        this.f4276d.setBackgroundColor(0);
        this.f4276d.setOnClickListener(new View$OnClickListenerC1016c());
        this.f4277f.setBackgroundColor(0);
        this.f4277f.setOnClickListener(new View$OnClickListenerC1017d());
    }

    @Override // android.app.Activity
    public void finish() {
        ((ViewGroup) getWindow().getDecorView()).removeAllViews();
        super.finish();
    }

    /* renamed from: g */
    public final void m3932g() {
        WebSettings settings = this.f4273a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        this.f4273a.loadUrl(getIntent().getStringExtra(DESTINATION_URL_KEY));
        this.f4273a.setWebViewClient(new xf1(this));
    }

    public ImageButton getBackButton() {
        return this.f4274b;
    }

    public ImageButton getCloseButton() {
        return this.f4277f;
    }

    public ImageButton getForwardButton() {
        return this.f4275c;
    }

    public ImageButton getRefreshButton() {
        return this.f4276d;
    }

    public WebView getWebView() {
        return this.f4273a;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(-1);
        boolean requestFeature = getWindow().requestFeature(2);
        this.f4278g = requestFeature;
        if (requestFeature) {
            getWindow().setFeatureInt(2, -1);
        }
        setContentView(m3934e());
        m3932g();
        m3933f();
        m3936c();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f4273a.destroy();
        this.f4273a = null;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        this.f4273a.setWebChromeClient(null);
        WebViews.onPause(this.f4273a, isFinishing());
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        this.f4273a.setWebChromeClient(new C1018e());
        this.f4273a.onResume();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        Utils.hideNavigationBar(this);
    }
}
