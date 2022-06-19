package com.verizon.ads.webcontroller;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.view.View;
import com.verizon.ads.AdSession;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.webview.VASAdsMRAIDWebView;
import com.verizon.ads.webview.VASAdsWebView;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/webcontroller/WebController.class */
public class WebController {

    /* renamed from: a */
    private static final Logger f62068a = Logger.getInstance(WebController.class);

    /* renamed from: b */
    private static final String f62069b = WebController.class.getSimpleName();

    /* renamed from: c */
    private static final HandlerThread f62070c;

    /* renamed from: d */
    private static final Handler f62071d;

    /* renamed from: e */
    private volatile Runnable f62072e;

    /* renamed from: f */
    private boolean f62073f;

    /* renamed from: g */
    private WebControllerListener f62074g;

    /* renamed from: h */
    private VASAdsMRAIDWebView f62075h;

    /* renamed from: i */
    private String f62076i;

    /* renamed from: j */
    private boolean f62077j;

    /* renamed from: k */
    private boolean f62078k;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/webcontroller/WebController$LoadListener.class */
    public interface LoadListener {
        void onComplete(ErrorInfo errorInfo);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/webcontroller/WebController$WebControllerListener.class */
    public interface WebControllerListener {
        void close();

        void expand();

        void onAdLeftApplication();

        void onClicked();

        void onError(ErrorInfo errorInfo);

        void resize();

        void unload();
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/webcontroller/WebController$WebControllerVASAdsMRAIDWebViewListener.class */
    class WebControllerVASAdsMRAIDWebViewListener implements VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener {
        private WebControllerVASAdsMRAIDWebViewListener() {
            WebController.this = r4;
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
        public void close() {
            WebController.this.f62077j = false;
            WebController.this.f62078k = false;
            if (WebController.this.f62074g != null) {
                WebController.this.f62074g.close();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
        public void expand() {
            WebController.this.f62077j = true;
            if (WebController.this.f62074g != null) {
                WebController.this.f62074g.expand();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
        public void onAdLeftApplication(VASAdsWebView vASAdsWebView) {
            if (WebController.this.f62074g != null) {
                WebController.this.f62074g.onAdLeftApplication();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
        public void onClicked(VASAdsWebView vASAdsWebView) {
            if (WebController.this.f62074g != null) {
                WebController.this.f62074g.onClicked();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
        public void onError(ErrorInfo errorInfo) {
            if (WebController.this.f62074g != null) {
                WebController.this.f62074g.onError(errorInfo);
            }
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
        public void resize() {
            WebController.this.f62078k = true;
            if (WebController.this.f62074g != null) {
                WebController.this.f62074g.resize();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
        public void unload() {
            if (WebController.this.f62074g != null) {
                WebController.this.f62074g.unload();
            }
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(WebController.class.getName());
        f62070c = handlerThread;
        handlerThread.start();
        f62071d = new Handler(handlerThread.getLooper());
    }

    /* renamed from: c */
    static /* synthetic */ void m5006c(WebController webController) {
        if (webController.f62072e != null) {
            f62068a.m5567d("Stopping load timer");
            f62071d.removeCallbacks(webController.f62072e);
            webController.f62072e = null;
        }
    }

    public void fireImpression() {
        VASAdsMRAIDWebView vASAdsMRAIDWebView = this.f62075h;
        if (vASAdsMRAIDWebView != null) {
            vASAdsMRAIDWebView.fireImpression();
        }
    }

    public View getVASAdsMRAIDWebView() {
        return this.f62075h;
    }

    public boolean isExpanded() {
        return this.f62077j;
    }

    public boolean isResized() {
        return this.f62078k;
    }

    public void load(final Context context, int i, final LoadListener loadListener, final boolean z) {
        if (loadListener == null) {
            f62068a.m5565e("loadListener cannot be null.");
        } else if (context == null) {
            f62068a.m5565e("context cannot be null.");
            loadListener.onComplete(new ErrorInfo(f62069b, "context cannot be null.", -3));
        } else {
            long j = i;
            synchronized (this) {
                if (this.f62072e != null) {
                    f62068a.m5565e("Timeout timer already running");
                } else if (j != 0) {
                    if (Logger.isLogLevelEnabled(3)) {
                        f62068a.m5567d(String.format("Load will timeout in %d ms", Long.valueOf(j)));
                    }
                    this.f62072e = new Runnable() { // from class: com.verizon.ads.webcontroller.WebController.3
                        @Override // java.lang.Runnable
                        public void run() {
                            WebController.this.f62073f = true;
                        }
                    };
                    f62071d.postDelayed(this.f62072e, j);
                }
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webcontroller.WebController.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        WebController.this.f62075h = new VASAdsMRAIDWebView(context, z, new WebControllerVASAdsMRAIDWebViewListener());
                        WebController.this.f62075h.loadData(WebController.this.f62076i, null, "UTF-8", new VASAdsWebView.LoadDataListener() { // from class: com.verizon.ads.webcontroller.WebController.1.1
                            @Override // com.verizon.ads.webview.VASAdsWebView.LoadDataListener
                            public void onComplete(ErrorInfo errorInfo) {
                                if (!WebController.this.f62073f) {
                                    WebController.m5006c(WebController.this);
                                    loadListener.onComplete(errorInfo);
                                }
                            }
                        });
                    } catch (Exception e) {
                        WebController.f62068a.m5565e("Error creating VASAdsMRAIDWebView.");
                        loadListener.onComplete(new ErrorInfo(WebController.f62069b, "Error creating VASAdsMRAIDWebView.", -3));
                    }
                }
            });
        }
    }

    public ErrorInfo prepare(AdSession adSession, String str) {
        if (TextUtils.isEmpty(str)) {
            return new ErrorInfo(f62069b, "Ad content is empty.", -1);
        }
        this.f62076i = str;
        return null;
    }

    public void release() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webcontroller.WebController.2
            @Override // java.lang.Runnable
            public void run() {
                if (WebController.this.f62075h != null) {
                    WebController.this.f62075h.release();
                    WebController.this.f62075h = null;
                }
            }
        });
    }

    public void setImmersiveEnabled(boolean z) {
        VASAdsMRAIDWebView vASAdsMRAIDWebView = this.f62075h;
        if (vASAdsMRAIDWebView != null) {
            vASAdsMRAIDWebView.setImmersive(z);
        }
    }

    public void setListener(WebControllerListener webControllerListener) {
        this.f62074g = webControllerListener;
    }
}
