package com.pubmatic.sdk.webrendering.p021ui;

import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.webrendering.p021ui.POBHTMLViewClient;
import java.util.Formatter;
import java.util.FormatterClosedException;
import java.util.IllegalFormatException;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
/* renamed from: com.pubmatic.sdk.webrendering.ui.POBHTMLRenderer */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBHTMLRenderer.class */
public class POBHTMLRenderer implements POBHTMLViewClient.HTMLViewClientListener {

    /* renamed from: a */
    private POBHtmlRendererListener f1223a;

    /* renamed from: b */
    private POBWebView f1224b;

    /* renamed from: c */
    private boolean f1225c;

    /* renamed from: f */
    private Timer f1228f;

    /* renamed from: e */
    private int f1227e = 15;

    /* renamed from: d */
    private Formatter f1226d = new Formatter(Locale.getDefault());

    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBHTMLRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a.class */
    public class C2061a extends TimerTask {

        /* renamed from: com.pubmatic.sdk.webrendering.ui.POBHTMLRenderer$a$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a$a.class */
        class RunnableC2062a implements Runnable {
            RunnableC2062a() {
                C2061a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                POBHTMLRenderer pOBHTMLRenderer = POBHTMLRenderer.this;
                pOBHTMLRenderer.notifyError(new POBError(1009, String.format("Unable to render creative within %s seconds.", Integer.valueOf(pOBHTMLRenderer.f1227e))));
            }
        }

        C2061a() {
            POBHTMLRenderer.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            POBUtils.runOnMainThread(new RunnableC2062a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBHTMLRenderer$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$b.class */
    public class RunnableC2063b implements Runnable {
        RunnableC2063b() {
            POBHTMLRenderer.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            POBHTMLRenderer.this.f1224b.setWebViewClient(null);
            POBHTMLRenderer.this.f1224b.stopLoading();
            POBHTMLRenderer.this.f1224b.loadUrl("about:blank");
            POBHTMLRenderer.this.f1224b.clearHistory();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBHTMLRenderer$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$c.class */
    public class View$OnTouchListenerC2064c implements View.OnTouchListener {
        View$OnTouchListenerC2064c() {
            POBHTMLRenderer.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0 || action == 1) {
                POBHTMLRenderer.this.f1225c = true;
                return false;
            }
            return false;
        }
    }

    public POBHTMLRenderer(POBWebView pOBWebView, POBHTMLViewClient pOBHTMLViewClient) {
        this.f1224b = pOBWebView;
        pOBWebView.setWebViewClient(pOBHTMLViewClient);
        this.f1224b.setOnTouchListener(new View$OnTouchListenerC2064c());
        pOBHTMLViewClient.setHTMLClientListener(this);
    }

    /* renamed from: a */
    private void m433a() {
        Timer timer = this.f1228f;
        if (timer != null) {
            timer.cancel();
            this.f1228f = null;
        }
    }

    /* renamed from: b */
    private void m430b() {
        if (this.f1228f == null) {
            Timer timer = new Timer();
            this.f1228f = timer;
            timer.schedule(new C2061a(), this.f1227e * 1000);
        }
    }

    public void destroy() {
        m433a();
        this.f1224b.postDelayed(new RunnableC2063b(), 1000L);
    }

    public boolean isUserInteracted() {
        return this.f1225c;
    }

    public void loadHTML(String str, String str2) {
        try {
            this.f1226d.format(POBCommonConstants.RICHMEDIA_FORMAT, str);
            String valueOf = String.valueOf(this.f1226d);
            this.f1226d.close();
            this.f1224b.loadDataWithBaseURL(str2, valueOf, "text/html", POBCommonConstants.URL_ENCODING, null);
            m430b();
        } catch (FormatterClosedException | IllegalFormatException e) {
            notifyError(new POBError(1009, "Unable to render creative, due to " + e.getMessage()));
        }
    }

    public void notifyError(POBError pOBError) {
        m433a();
        POBHtmlRendererListener pOBHtmlRendererListener = this.f1223a;
        if (pOBHtmlRendererListener != null) {
            pOBHtmlRendererListener.onViewRenderingFailed(pOBError);
        }
    }

    @Override // com.pubmatic.sdk.webrendering.p021ui.POBHTMLViewClient.HTMLViewClientListener
    public void onPageFinished(WebView webView) {
        m433a();
        POBHtmlRendererListener pOBHtmlRendererListener = this.f1223a;
        if (pOBHtmlRendererListener != null) {
            pOBHtmlRendererListener.onViewRendered(webView);
        }
    }

    @Override // com.pubmatic.sdk.webrendering.p021ui.POBHTMLViewClient.HTMLViewClientListener
    public void onReceivedError(POBError pOBError) {
        notifyError(pOBError);
    }

    public void setRendererViewListener(POBHtmlRendererListener pOBHtmlRendererListener) {
        this.f1223a = pOBHtmlRendererListener;
    }

    public void setRenderingTimeout(int i) {
        this.f1227e = i;
    }

    public void setUserInteracted(boolean z) {
        this.f1225c = z;
    }

    @Override // com.pubmatic.sdk.webrendering.p021ui.POBHTMLViewClient.HTMLViewClientListener
    public boolean shouldOverrideUrlLoading(String str) {
        POBHtmlRendererListener pOBHtmlRendererListener = this.f1223a;
        if (pOBHtmlRendererListener == null || !this.f1225c) {
            return false;
        }
        this.f1225c = false;
        pOBHtmlRendererListener.onViewClicked(str);
        return true;
    }
}
