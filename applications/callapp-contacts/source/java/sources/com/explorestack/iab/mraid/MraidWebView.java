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
import com.explorestack.iab.utils.C9605o;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidWebView.class */
public class MraidWebView extends WebView {

    /* renamed from: d */
    private static final String f32487d = "MraidWebView";

    /* renamed from: e */
    private static final C9559a f32488e = new C9559a();

    /* renamed from: a */
    final C9578k f32489a;

    /* renamed from: f */
    private final C9605o f32492f;

    /* renamed from: g */
    private AbstractC9560b f32493g;

    /* renamed from: b */
    boolean f32490b = false;

    /* renamed from: h */
    private boolean f32494h = false;

    /* renamed from: c */
    boolean f32491c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.iab.mraid.MraidWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidWebView$a.class */
    public static final class C9559a extends WebChromeClient {
        private C9559a() {
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
                MraidLog.m24185d("JS console", String.format("%s%s:%d", message, str, Integer.valueOf(consoleMessage.lineNumber())));
            }
            if (!consoleMessage.message().contains("AppodealAlert")) {
                return true;
            }
            MraidLog.m24186b("Appodeal", consoleMessage.message().replace("AppodealAlert:", ""));
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            MraidLog.m24185d("JS alert", str2);
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            MraidLog.m24185d("JS confirm", str2);
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            MraidLog.m24185d("JS prompt", str2);
            jsPromptResult.confirm();
            return true;
        }
    }

    /* renamed from: com.explorestack.iab.mraid.MraidWebView$b */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidWebView$b.class */
    public interface AbstractC9560b {
        /* renamed from: a */
        void mo24148a(boolean z);
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
        this.f32489a = new C9578k(context);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.explorestack.iab.mraid.MraidWebView.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                MraidWebView.this.f32489a.onTouchEvent(motionEvent);
                int action = motionEvent.getAction();
                if ((action == 0 || action == 1) && !view.hasFocus()) {
                    view.requestFocus();
                    return false;
                }
                return false;
            }
        });
        setWebChromeClient(f32488e);
        getSettings().setSupportZoom(false);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
        setBackgroundColor(0);
        final C9605o c9605o = new C9605o(context, this, new C9605o.AbstractC9609a() { // from class: com.explorestack.iab.mraid.MraidWebView.2
            @Override // com.explorestack.iab.utils.C9605o.AbstractC9609a
            /* renamed from: a */
            public final void mo24021a() {
                MraidWebView.this.m24181b();
            }
        });
        this.f32492f = c9605o;
        if (c9605o.f32627c == null) {
            c9605o.f32627c = new ViewTreeObserver.OnPreDrawListener() { // from class: com.explorestack.iab.utils.o.2
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    C9605o.m24022c(c9605o);
                    return true;
                }
            };
        }
        if (c9605o.f32628d == null) {
            c9605o.f32628d = new View.OnAttachStateChangeListener() { // from class: com.explorestack.iab.utils.o.3
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view) {
                    c9605o.m24028a();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view) {
                    c9605o.m24028a();
                }
            };
        }
        c9605o.f32626b.getViewTreeObserver().addOnPreDrawListener(c9605o.f32627c);
        c9605o.f32626b.addOnAttachStateChangeListener(c9605o.f32628d);
        c9605o.m24028a();
    }

    /* renamed from: a */
    private void m24183a() {
        MraidLog.m24185d(f32487d, "onPause");
        try {
            onPause();
        } catch (Throwable th) {
            MraidLog.m24187a(f32487d, th);
        }
        this.f32494h = true;
        m24181b();
    }

    /* renamed from: b */
    public void m24181b() {
        boolean z = !this.f32494h && this.f32492f.f32629e;
        if (z != this.f32490b) {
            this.f32490b = z;
            AbstractC9560b abstractC9560b = this.f32493g;
            if (abstractC9560b == null) {
                return;
            }
            abstractC9560b.mo24148a(z);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f32491c = true;
        try {
            stopLoading();
            loadUrl("");
            m24183a();
            removeAllViews();
            C9605o c9605o = this.f32492f;
            c9605o.f32630f = false;
            c9605o.f32626b.getViewTreeObserver().removeOnPreDrawListener(c9605o.f32627c);
            c9605o.f32626b.removeOnAttachStateChangeListener(c9605o.f32628d);
            Utils.m24097d(c9605o.f32631g);
            super.destroy();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i != 0) {
            m24183a();
            return;
        }
        MraidLog.m24185d(f32487d, "onResume");
        try {
            onResume();
        } catch (Throwable th) {
            MraidLog.m24187a(f32487d, th);
        }
        this.f32494h = false;
        m24181b();
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        return false;
    }

    public void setListener(AbstractC9560b abstractC9560b) {
        this.f32493g = abstractC9560b;
    }
}
