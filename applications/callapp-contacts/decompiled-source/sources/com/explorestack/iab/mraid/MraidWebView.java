package com.explorestack.iab.mraid;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.o;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidWebView.class */
public class MraidWebView extends WebView {

    /* renamed from: d  reason: collision with root package name */
    private static final String f19121d = "MraidWebView";
    private static final a e = new a();

    /* renamed from: a  reason: collision with root package name */
    final k f19122a;
    private final o f;
    private b g;

    /* renamed from: b  reason: collision with root package name */
    boolean f19123b = false;
    private boolean h = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f19124c = false;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidWebView$a.class */
    static final class a extends WebChromeClient {
        private a() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String str;
            if (consoleMessage == null || consoleMessage.message() == null) {
                return false;
            }
            if (!consoleMessage.message().contains("Uncaught ReferenceError")) {
                String message = consoleMessage.message();
                if (consoleMessage.sourceId() == null) {
                    str = "";
                } else {
                    str = " at " + consoleMessage.sourceId();
                }
                MraidLog.d("JS console", String.format("%s%s:%d", message, str, Integer.valueOf(consoleMessage.lineNumber())));
            }
            if (!consoleMessage.message().contains("AppodealAlert")) {
                return true;
            }
            MraidLog.b("Appodeal", consoleMessage.message().replace("AppodealAlert:", ""));
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            MraidLog.d("JS alert", str2);
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            MraidLog.d("JS confirm", str2);
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            MraidLog.d("JS prompt", str2);
            jsPromptResult.confirm();
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidWebView$b.class */
    public interface b {
        void a(boolean z);
    }

    public MraidWebView(Context context) {
        super(context);
        setScrollContainer(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setScrollBarStyle(33554432);
        setFocusableInTouchMode(false);
        this.f19122a = new k(context);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.explorestack.iab.mraid.MraidWebView.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                MraidWebView.this.f19122a.onTouchEvent(motionEvent);
                int action = motionEvent.getAction();
                if ((action != 0 && action != 1) || view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
        });
        setWebChromeClient(e);
        getSettings().setSupportZoom(false);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
        setBackgroundColor(0);
        final o oVar = new o(context, this, new o.a() { // from class: com.explorestack.iab.mraid.MraidWebView.2
            @Override // com.explorestack.iab.utils.o.a
            public final void a() {
                MraidWebView.this.b();
            }
        });
        this.f = oVar;
        if (oVar.f19202c == null) {
            oVar.f19202c = new ViewTreeObserver.OnPreDrawListener() { // from class: com.explorestack.iab.utils.o.2
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    o.c(oVar);
                    return true;
                }
            };
        }
        if (oVar.f19203d == null) {
            oVar.f19203d = new View.OnAttachStateChangeListener() { // from class: com.explorestack.iab.utils.o.3
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view) {
                    oVar.a();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view) {
                    oVar.a();
                }
            };
        }
        oVar.f19201b.getViewTreeObserver().addOnPreDrawListener(oVar.f19202c);
        oVar.f19201b.addOnAttachStateChangeListener(oVar.f19203d);
        oVar.a();
    }

    private void a() {
        MraidLog.d(f19121d, "onPause");
        try {
            onPause();
        } catch (Throwable th) {
            MraidLog.a(f19121d, th);
        }
        this.h = true;
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z = !this.h && this.f.e;
        if (z != this.f19123b) {
            this.f19123b = z;
            b bVar = this.g;
            if (bVar != null) {
                bVar.a(z);
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f19124c = true;
        try {
            stopLoading();
            loadUrl("");
            a();
            removeAllViews();
            o oVar = this.f;
            oVar.f = false;
            oVar.f19201b.getViewTreeObserver().removeOnPreDrawListener(oVar.f19202c);
            oVar.f19201b.removeOnAttachStateChangeListener(oVar.f19203d);
            Utils.d(oVar.g);
            super.destroy();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            MraidLog.d(f19121d, "onResume");
            try {
                onResume();
            } catch (Throwable th) {
                MraidLog.a(f19121d, th);
            }
            this.h = false;
            b();
            return;
        }
        a();
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        return false;
    }

    public void setListener(b bVar) {
        this.g = bVar;
    }
}
