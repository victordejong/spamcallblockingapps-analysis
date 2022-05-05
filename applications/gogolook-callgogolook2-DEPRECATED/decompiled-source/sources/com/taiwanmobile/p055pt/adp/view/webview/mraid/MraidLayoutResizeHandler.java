package com.taiwanmobile.p055pt.adp.view.webview.mraid;

import android.app.Activity;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import java.lang.ref.WeakReference;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidLayoutResizeHandler */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidLayoutResizeHandler.class */
public class MraidLayoutResizeHandler extends MraidLayoutBaseHandler {

    /* renamed from: a */
    public static final String f10099a = MraidResizeProperties.class.getSimpleName();

    /* renamed from: b */
    public MraidResizeProperties f10100b = null;

    /* renamed from: c */
    public DisplayMetrics f10101c = new DisplayMetrics();

    public MraidLayoutResizeHandler(JSWebView jSWebView) {
        super(jSWebView);
    }

    /* renamed from: a */
    private RelativeLayout.LayoutParams m29357a(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        switch (i) {
            case 0:
            case 4:
                layoutParams.addRule(9);
                break;
            case 1:
            case 3:
            case 5:
                layoutParams.addRule(14);
                break;
            case 2:
            case 6:
                layoutParams.addRule(11);
                break;
        }
        switch (this.f10100b.customClosePosition) {
            case 0:
            case 1:
            case 2:
                layoutParams.addRule(10);
                break;
            case 3:
                layoutParams.addRule(15);
                break;
            case 4:
            case 5:
            case 6:
                layoutParams.addRule(12);
                break;
        }
        return layoutParams;
    }

    public void resize(Rect rect) {
        Activity a;
        if (this.f10100b == null) {
            C10831c.m10518c(f10099a, "Resize properties is null, you have to set properties first.");
            return;
        }
        WeakReference<JSWebView> weakReference = this.jsWebViewRef;
        if (weakReference != null && weakReference.get() != null && this.jsWebViewRef.get().getContext() != null && (a = C10832d.m10506a(this.jsWebViewRef.get())) != null) {
            a.getWindowManager().getDefaultDisplay().getMetrics(this.f10101c);
            int applyDimension = (int) TypedValue.applyDimension(1, this.f10100b.width, this.f10101c);
            int applyDimension2 = (int) TypedValue.applyDimension(1, this.f10100b.height, this.f10101c);
            int applyDimension3 = (int) TypedValue.applyDimension(1, this.f10100b.offsetX, this.f10101c);
            int applyDimension4 = (int) TypedValue.applyDimension(1, this.f10100b.offsetY, this.f10101c);
            this.newLayout = new RelativeLayout(this.jsWebViewRef.get().getContext());
            resizeWebView(this.newLayout, new RelativeLayout.LayoutParams(applyDimension, applyDimension2));
            addCloseButton(this.newLayout, m29357a(this.f10100b.customClosePosition));
            makeCloseButtonTransparent();
            int i = rect.left;
            int i2 = rect.top;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.newLayout.getLayoutParams();
            layoutParams.leftMargin = i + applyDimension3;
            layoutParams.topMargin = i2 + applyDimension4;
            this.newLayout.setLayoutParams(layoutParams);
        }
    }

    public void restore(RelativeLayout relativeLayout) {
        restoreWebView(this.newLayout, relativeLayout);
        this.newLayout = null;
    }

    public void setResizeProperties(MraidResizeProperties mraidResizeProperties) {
        this.f10100b = mraidResizeProperties;
    }
}
