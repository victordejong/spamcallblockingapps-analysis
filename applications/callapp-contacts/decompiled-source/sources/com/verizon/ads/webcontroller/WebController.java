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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35816a = Logger.getInstance(WebController.class);

    /* renamed from: b  reason: collision with root package name */
    private static final String f35817b = WebController.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private static final HandlerThread f35818c;

    /* renamed from: d  reason: collision with root package name */
    private static final Handler f35819d;
    private volatile Runnable e;
    private boolean f;
    private WebControllerListener g;
    private VASAdsMRAIDWebView h;
    private String i;
    private boolean j;
    private boolean k;

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
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
        public void close() {
            WebController.this.j = false;
            WebController.this.k = false;
            if (WebController.this.g != null) {
                WebController.this.g.close();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
        public void expand() {
            WebController.this.j = true;
            if (WebController.this.g != null) {
                WebController.this.g.expand();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
        public void onAdLeftApplication(VASAdsWebView vASAdsWebView) {
            if (WebController.this.g != null) {
                WebController.this.g.onAdLeftApplication();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
        public void onClicked(VASAdsWebView vASAdsWebView) {
            if (WebController.this.g != null) {
                WebController.this.g.onClicked();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsWebView.VASAdsWebViewListener
        public void onError(ErrorInfo errorInfo) {
            if (WebController.this.g != null) {
                WebController.this.g.onError(errorInfo);
            }
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
        public void resize() {
            WebController.this.k = true;
            if (WebController.this.g != null) {
                WebController.this.g.resize();
            }
        }

        @Override // com.verizon.ads.webview.VASAdsMRAIDWebView.VASAdsMRAIDWebViewListener
        public void unload() {
            if (WebController.this.g != null) {
                WebController.this.g.unload();
            }
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(WebController.class.getName());
        f35818c = handlerThread;
        handlerThread.start();
        f35819d = new Handler(handlerThread.getLooper());
    }

    static /* synthetic */ void c(WebController webController) {
        if (webController.e != null) {
            f35816a.d("Stopping load timer");
            f35819d.removeCallbacks(webController.e);
            webController.e = null;
        }
    }

    public void fireImpression() {
        VASAdsMRAIDWebView vASAdsMRAIDWebView = this.h;
        if (vASAdsMRAIDWebView != null) {
            vASAdsMRAIDWebView.fireImpression();
        }
    }

    public View getVASAdsMRAIDWebView() {
        return this.h;
    }

    public boolean isExpanded() {
        return this.j;
    }

    public boolean isResized() {
        return this.k;
    }

    public void load(final Context context, int i, final LoadListener loadListener, final boolean z) {
        if (loadListener == null) {
            f35816a.e("loadListener cannot be null.");
        } else if (context == null) {
            f35816a.e("context cannot be null.");
            loadListener.onComplete(new ErrorInfo(f35817b, "context cannot be null.", -3));
        } else {
            long j = i;
            synchronized (this) {
                if (this.e != null) {
                    f35816a.e("Timeout timer already running");
                } else if (j != 0) {
                    if (Logger.isLogLevelEnabled(3)) {
                        f35816a.d(String.format("Load will timeout in %d ms", Long.valueOf(j)));
                    }
                    this.e = new Runnable() { // from class: com.verizon.ads.webcontroller.WebController.3
                        @Override // java.lang.Runnable
                        public void run() {
                            WebController.this.f = true;
                        }
                    };
                    f35819d.postDelayed(this.e, j);
                }
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webcontroller.WebController.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        WebController.this.h = new VASAdsMRAIDWebView(context, z, new WebControllerVASAdsMRAIDWebViewListener());
                        WebController.this.h.loadData(WebController.this.i, null, "UTF-8", new VASAdsWebView.LoadDataListener() { // from class: com.verizon.ads.webcontroller.WebController.1.1
                            @Override // com.verizon.ads.webview.VASAdsWebView.LoadDataListener
                            public void onComplete(ErrorInfo errorInfo) {
                                if (!WebController.this.f) {
                                    WebController.c(WebController.this);
                                    loadListener.onComplete(errorInfo);
                                }
                            }
                        });
                    } catch (Exception e) {
                        WebController.f35816a.e("Error creating VASAdsMRAIDWebView.");
                        loadListener.onComplete(new ErrorInfo(WebController.f35817b, "Error creating VASAdsMRAIDWebView.", -3));
                    }
                }
            });
        }
    }

    public ErrorInfo prepare(AdSession adSession, String str) {
        if (TextUtils.isEmpty(str)) {
            return new ErrorInfo(f35817b, "Ad content is empty.", -1);
        }
        this.i = str;
        return null;
    }

    public void release() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.webcontroller.WebController.2
            @Override // java.lang.Runnable
            public void run() {
                if (WebController.this.h != null) {
                    WebController.this.h.release();
                    WebController.this.h = null;
                }
            }
        });
    }

    public void setImmersiveEnabled(boolean z) {
        VASAdsMRAIDWebView vASAdsMRAIDWebView = this.h;
        if (vASAdsMRAIDWebView != null) {
            vASAdsMRAIDWebView.setImmersive(z);
        }
    }

    public void setListener(WebControllerListener webControllerListener) {
        this.g = webControllerListener;
    }
}
