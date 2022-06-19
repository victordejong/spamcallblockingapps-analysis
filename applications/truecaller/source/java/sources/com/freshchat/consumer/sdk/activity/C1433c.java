package com.freshchat.consumer.sdk.activity;

import android.app.Activity;
import android.content.Context;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import n3.b.a.h;
/* renamed from: com.freshchat.consumer.sdk.activity.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/c.class */
public class C1433c extends WebView {

    /* renamed from: bJ */
    public static final FrameLayout.LayoutParams f3951bJ = new FrameLayout.LayoutParams(-1, -1);

    /* renamed from: bA */
    private FrameLayout f3952bA;

    /* renamed from: bB */
    private FrameLayout f3953bB;

    /* renamed from: bC */
    private VideoView f3954bC;

    /* renamed from: bF */
    private int f3957bF;

    /* renamed from: bG */
    private int f3958bG;

    /* renamed from: bH */
    private int f3959bH;

    /* renamed from: bv */
    private C1435a f3961bv;

    /* renamed from: bw */
    private View f3962bw;

    /* renamed from: bx */
    private FrameLayout f3963bx;

    /* renamed from: by */
    private WebChromeClient.CustomViewCallback f3964by;

    /* renamed from: bz */
    private FrameLayout f3965bz;
    private float density;
    private Context mContext;
    private int scrollPosition;

    /* renamed from: bD */
    public AbstractC1436b f3955bD = null;

    /* renamed from: bE */
    private int f3956bE = 0;

    /* renamed from: bI */
    private boolean f3960bI = false;

    /* renamed from: com.freshchat.consumer.sdk.activity.c$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/c$a.class */
    public class C1435a extends WebChromeClient {

        /* renamed from: bK */
        private View f3966bK;

        private C1435a() {
            C1433c.this = r4;
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            if (this.f3966bK == null) {
                this.f3966bK = LayoutInflater.from(C1433c.this.mContext).inflate(C1298R.layout.freshchat_partial_html5_video_progress, (ViewGroup) null);
            }
            return this.f3966bK;
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            callback.invoke(str, true, false);
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            if (C1433c.this.f3962bw == null) {
                return;
            }
            C1433c.this.f3962bw.setVisibility(8);
            C1433c.this.f3963bx.removeView(C1433c.this.f3962bw);
            C1433c.this.f3962bw = null;
            C1433c.this.f3963bx.setVisibility(8);
            C1433c.this.f3964by.onCustomViewHidden();
            C1433c.this.setVisibility(0);
            C1433c.this.goBack();
            C1433c.this.f3955bD.mo41058k();
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            ((Activity) C1433c.this.mContext).getWindow().setFeatureInt(2, i * 100);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            if (!(C1433c.this.mContext instanceof h)) {
                if (!(C1433c.this.mContext instanceof Activity)) {
                    return;
                }
                ((Activity) C1433c.this.mContext).setTitle(str);
                return;
            }
            h hVar = C1433c.this.mContext;
            if (hVar.getSupportActionBar() == null) {
                return;
            }
            hVar.getSupportActionBar().mo3542y(str);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            C1433c.this.f3955bD.mo41059j();
            C1433c.this.setVisibility(8);
            if (C1433c.this.f3962bw != null) {
                customViewCallback.onCustomViewHidden();
                return;
            }
            view.setBackgroundColor(-16777216);
            C1433c.this.f3963bx.addView(view, C1433c.f3951bJ);
            C1433c.this.f3962bw = view;
            C1433c.this.f3964by = customViewCallback;
            C1433c.this.f3963bx.setVisibility(0);
            C1433c.this.m41063d(view);
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.activity.c$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/c$b.class */
    public interface AbstractC1436b {
        /* renamed from: h */
        void mo41061h();

        /* renamed from: i */
        void mo41060i();

        /* renamed from: j */
        void mo41059j();

        /* renamed from: k */
        void mo41058k();
    }

    public C1433c(Context context) {
        super(context);
        m41064d(context);
    }

    /* renamed from: d */
    private void m41064d(Context context) {
        this.mContext = context;
        this.f3953bB = new FrameLayout(context);
        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.mContext).inflate(C1298R.layout.freshchat_custom_html5_webview, (ViewGroup) null);
        this.f3952bA = frameLayout;
        this.f3965bz = (FrameLayout) frameLayout.findViewById(C1298R.C1300id.main_content);
        this.f3963bx = (FrameLayout) this.f3952bA.findViewById(C1298R.C1300id.fullscreen_custom_content);
        FrameLayout frameLayout2 = this.f3953bB;
        FrameLayout frameLayout3 = this.f3952bA;
        FrameLayout.LayoutParams layoutParams = f3951bJ;
        frameLayout2.addView(frameLayout3, layoutParams);
        WebSettings settings = getSettings();
        settings.setAppCacheEnabled(true);
        settings.setBuiltInZoomControls(false);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON);
        settings.setSaveFormData(true);
        C1435a c1435a = new C1435a();
        this.f3961bv = c1435a;
        setWebChromeClient(c1435a);
        setWebViewClient(new WebViewClient());
        this.f3965bz.addView(this, layoutParams);
        this.density = getResources().getDisplayMetrics().density == 0.0f ? 1.0f : getResources().getDisplayMetrics().density;
    }

    /* renamed from: d */
    public void m41063d(View view) {
        if (!C1630aw.m40205eR() || !(view instanceof FrameLayout)) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) view;
        if (!(frameLayout.getFocusedChild() instanceof VideoView)) {
            return;
        }
        this.f3954bC = (VideoView) frameLayout.getFocusedChild();
    }

    /* renamed from: a */
    public void m41074a(AbstractC1436b abstractC1436b, int i) {
        this.f3955bD = abstractC1436b;
        this.f3956bE = i;
    }

    /* renamed from: aA */
    public void m41070aA() {
        this.f3961bv.onHideCustomView();
    }

    /* renamed from: aB */
    public void m41069aB() {
        VideoView videoView = this.f3954bC;
        if (videoView != null) {
            videoView.pause();
        }
    }

    /* renamed from: az */
    public boolean m41068az() {
        return this.f3962bw != null;
    }

    public FrameLayout getLayout() {
        return this.f3953bB;
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && this.f3962bw == null && canGoBack()) {
            goBack();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.f3955bD == null) {
            return;
        }
        this.f3958bG = (int) (getContentHeight() * this.density);
        int measuredHeight = getMeasuredHeight();
        this.f3957bF = measuredHeight;
        int i5 = (this.f3958bG - i2) - measuredHeight;
        this.scrollPosition = i5;
        int i6 = (int) (this.f3956bE * this.density * 0.4d);
        this.f3959bH = i6;
        if (i5 <= i6 && !this.f3960bI) {
            this.f3955bD.mo41061h();
            this.f3960bI = true;
        }
        if (!this.f3960bI || this.scrollPosition <= this.f3959bH) {
            return;
        }
        this.f3955bD.mo41060i();
        this.f3960bI = false;
    }
}
