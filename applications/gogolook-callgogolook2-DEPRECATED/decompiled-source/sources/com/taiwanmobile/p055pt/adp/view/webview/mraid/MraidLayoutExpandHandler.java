package com.taiwanmobile.p055pt.adp.view.webview.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.taiwanmobile.p055pt.adp.view.TWMAdActivity;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import java.lang.ref.WeakReference;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidLayoutExpandHandler */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidLayoutExpandHandler.class */
public class MraidLayoutExpandHandler extends MraidLayoutBaseHandler {

    /* renamed from: a */
    public static final String f10095a = MraidLayoutBaseHandler.class.getSimpleName();

    /* renamed from: b */
    public boolean f10096b = false;

    /* renamed from: c */
    public int f10097c;

    public MraidLayoutExpandHandler(JSWebView jSWebView) {
        super(jSWebView);
    }

    public void expand() {
        WeakReference<JSWebView> weakReference = this.jsWebViewRef;
        if (weakReference != null && weakReference.get() != null && this.jsWebViewRef.get().getContext() != null) {
            Context context = this.jsWebViewRef.get().getContext();
            Activity activity = (Activity) context;
            this.f10097c = activity.getRequestedOrientation();
            C10832d.m10502b(activity);
            this.newLayout = new RelativeLayout(context);
            this.newLayout.setFocusableInTouchMode(true);
            this.newLayout.requestFocus();
            this.newLayout.setOnKeyListener(new View.OnKeyListener() { // from class: com.taiwanmobile.pt.adp.view.webview.mraid.MraidLayoutExpandHandler.1
                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view, int i, KeyEvent keyEvent) {
                    if (keyEvent.getAction() != 1 || i != 4) {
                        return false;
                    }
                    MraidLayoutExpandHandler.this.jsWebViewRef.get().injectJavaScript("mraid.close();");
                    return true;
                }
            });
            resizeWebView(this.newLayout, new RelativeLayout.LayoutParams(-1, -1));
            addCloseButton(this.newLayout);
            this.f10096b = false;
        }
    }

    public void expand(String str) {
        C4117a.C4118a aVar;
        WeakReference<JSWebView> weakReference = this.jsWebViewRef;
        if (!(weakReference == null || weakReference.get() == null)) {
            String txId = this.jsWebViewRef.get().getTxId();
            if (!(txId == null || (aVar = (C4117a.C4118a) C4117a.m29671b().m29673a(this.jsWebViewRef.get().getTxId())) == null)) {
                aVar.m29658a("subMediaUrl", str);
            }
            TWMAdActivity.launchAdActivity(txId);
        }
        this.f10096b = true;
    }

    public boolean isTwoPart() {
        return this.f10096b;
    }

    public void requestFocus() {
        this.newLayout.requestFocus();
    }

    public void restore(RelativeLayout relativeLayout) {
        WeakReference<JSWebView> weakReference = this.jsWebViewRef;
        if (weakReference != null && weakReference.get() != null) {
            C10832d.m10496c((Activity) this.jsWebViewRef.get().getContext());
            restoreWebView(this.newLayout, relativeLayout);
            this.newLayout = null;
            this.jsWebViewRef.get().injectJavaScript("android.setRequestedOrientation(" + this.f10097c + ")");
        }
    }
}
