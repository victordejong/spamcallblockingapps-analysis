package com.pubmatic.sdk.webrendering.mraid;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.webrendering.POBUIUtil;
import com.pubmatic.sdk.webrendering.p021ui.POBWebView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.pubmatic.sdk.webrendering.mraid.t */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/t.class */
public class View$OnTouchListenerC2053t extends RelativeLayout implements View.OnTouchListener {

    /* renamed from: a */
    private ViewGroup f1195a;

    /* renamed from: b */
    private Context f1196b;

    /* renamed from: c */
    private POBWebView f1197c;

    /* renamed from: d */
    private AbstractC2057d f1198d;

    /* renamed from: e */
    private ImageView f1199e;

    /* renamed from: f */
    private RelativeLayout f1200f;

    /* renamed from: g */
    private int f1201g;

    /* renamed from: h */
    private boolean f1202h = true;

    /* renamed from: i */
    private final ViewTreeObserver.OnGlobalLayoutListener f1203i = new ViewTreeObserver$OnGlobalLayoutListenerC2054a();

    /* renamed from: j */
    private final POBWebView.WebViewBackPress f1204j = new C2055b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.webrendering.mraid.t$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/t$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC2054a implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserver$OnGlobalLayoutListenerC2054a() {
            View$OnTouchListenerC2053t.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int deviceOrientation = POBUtils.getDeviceOrientation(View$OnTouchListenerC2053t.this.f1196b);
            PMLog.debug("PMResizeView", "currentOrientation :" + View$OnTouchListenerC2053t.this.f1201g + ", changedOrientation:" + deviceOrientation, new Object[0]);
            if (deviceOrientation == View$OnTouchListenerC2053t.this.f1201g || !View$OnTouchListenerC2053t.this.f1202h) {
                return;
            }
            View$OnTouchListenerC2053t.this.m450b();
            if (View$OnTouchListenerC2053t.this.f1198d == null) {
                return;
            }
            View$OnTouchListenerC2053t.this.f1198d.mo443a(View$OnTouchListenerC2053t.this.f1197c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.webrendering.mraid.t$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/t$b.class */
    public class C2055b implements POBWebView.WebViewBackPress {
        C2055b() {
            View$OnTouchListenerC2053t.this = r4;
        }

        @Override // com.pubmatic.sdk.webrendering.p021ui.POBWebView.WebViewBackPress
        public void onBackPress() {
            View$OnTouchListenerC2053t.this.m450b();
            if (View$OnTouchListenerC2053t.this.f1198d != null) {
                View$OnTouchListenerC2053t.this.f1198d.mo443a(View$OnTouchListenerC2053t.this.f1197c);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.t$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/t$c.class */
    public class View$OnClickListenerC2056c implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ WebView f1207a;

        View$OnClickListenerC2056c(WebView webView) {
            View$OnTouchListenerC2053t.this = r4;
            this.f1207a = webView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            View$OnTouchListenerC2053t.this.m450b();
            if (View$OnTouchListenerC2053t.this.f1198d != null) {
                View$OnTouchListenerC2053t.this.f1198d.mo443a(this.f1207a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.webrendering.mraid.t$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/t$d.class */
    public interface AbstractC2057d {
        /* renamed from: a */
        void mo443a(WebView webView);
    }

    public View$OnTouchListenerC2053t(Context context) {
        super(context);
    }

    /* renamed from: a */
    private void m453a(WebView webView, int i, int i2, int i3, int i4) {
        this.f1199e = POBUIUtil.createCloseButton(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        this.f1199e.setOnClickListener(new View$OnClickListenerC2056c(webView));
        this.f1200f = new RelativeLayout(this.f1196b);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i, i2);
        layoutParams2.setMargins(i3, i4, Integer.MIN_VALUE, Integer.MIN_VALUE);
        this.f1200f.addView(webView, new RelativeLayout.LayoutParams(-1, -1));
        this.f1200f.addView(this.f1199e, layoutParams);
        addView(this.f1200f, layoutParams2);
        m451a(true);
        setOnTouchListener(this);
        this.f1195a.addView(this, 0, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* renamed from: a */
    public void m456a() {
        this.f1202h = false;
    }

    /* renamed from: a */
    public void m455a(int i, int i2, int i3, int i4) {
        if (this.f1200f != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
            layoutParams.setMargins(i3, i4, Integer.MIN_VALUE, Integer.MIN_VALUE);
            updateViewLayout(this.f1200f, layoutParams);
        }
    }

    /* renamed from: a */
    public void m454a(ViewGroup viewGroup, POBWebView pOBWebView, int i, int i2, int i3, int i4, AbstractC2057d abstractC2057d) {
        this.f1197c = pOBWebView;
        this.f1196b = pOBWebView.getContext();
        this.f1195a = viewGroup;
        this.f1198d = abstractC2057d;
        m453a(pOBWebView, i, i2, i3, i4);
        this.f1201g = POBUtils.getDeviceOrientation(this.f1196b);
    }

    /* renamed from: a */
    public void m451a(boolean z) {
        POBWebView pOBWebView = this.f1197c;
        if (pOBWebView != null) {
            pOBWebView.setWebViewBackPress(z ? this.f1204j : null);
        }
    }

    /* renamed from: b */
    public void m450b() {
        RelativeLayout relativeLayout = this.f1200f;
        if (relativeLayout != null && this.f1197c != null) {
            relativeLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this.f1203i);
            this.f1200f.removeView(this.f1199e);
            this.f1200f.removeView(this.f1197c);
            this.f1197c.setWebViewBackPress(null);
        }
        setOnTouchListener(null);
        removeAllViews();
    }

    /* renamed from: c */
    public ImageView m448c() {
        return this.f1199e;
    }

    /* renamed from: d */
    public void m446d() {
        ViewGroup viewGroup = this.f1195a;
        if (viewGroup != null) {
            viewGroup.bringChildToFront(this);
            this.f1195a.requestFocus();
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.f1203i);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return !(view instanceof POBWebView);
    }
}
