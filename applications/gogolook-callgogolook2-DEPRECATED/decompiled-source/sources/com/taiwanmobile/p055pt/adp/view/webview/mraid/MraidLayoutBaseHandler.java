package com.taiwanmobile.p055pt.adp.view.webview.mraid;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import java.lang.ref.WeakReference;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidLayoutBaseHandler */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidLayoutBaseHandler.class */
public class MraidLayoutBaseHandler {

    /* renamed from: a */
    public static final String f10091a = "MraidLayoutBaseHandler";
    public WeakReference<JSWebView> jsWebViewRef;
    public RelativeLayout newLayout = null;

    /* renamed from: b */
    public ImageButton f10092b = null;

    /* renamed from: c */
    public boolean f10093c = true;

    public MraidLayoutBaseHandler(JSWebView jSWebView) {
        this.jsWebViewRef = null;
        this.jsWebViewRef = new WeakReference<>(jSWebView);
    }

    public void addCloseButton(ViewGroup viewGroup) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        addCloseButton(viewGroup, layoutParams);
    }

    public void addCloseButton(ViewGroup viewGroup, RelativeLayout.LayoutParams layoutParams) {
        C10831c.m10518c(f10091a, "addCloseButton invoke !!");
        this.f10092b = new ImageButton(viewGroup.getContext());
        this.f10092b.setImageBitmap(C10832d.m10498b("iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MjA3RkM0NUY0NEE3MTFFNThBOUNDQkI4MjFBQzQ2NzEiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MjA3RkM0NjA0NEE3MTFFNThBOUNDQkI4MjFBQzQ2NzEiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoyMDdGQzQ1RDQ0QTcxMUU1OEE5Q0NCQjgyMUFDNDY3MSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDoyMDdGQzQ1RTQ0QTcxMUU1OEE5Q0NCQjgyMUFDNDY3MSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PmbWFa8AAAZbSURBVHjarFcJTFRX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"));
        if (Build.VERSION.SDK_INT < 16) {
            this.f10092b.setBackgroundDrawable(null);
        } else {
            this.f10092b.setBackground(null);
        }
        WeakReference<JSWebView> weakReference = this.jsWebViewRef;
        if (weakReference == null || weakReference.get() == null) {
            C10831c.m10520b(f10091a, "addCloseButton error: JsWebView has been destroyed.");
        } else if (this.f10093c) {
            this.f10092b.setLayoutParams(layoutParams);
            this.f10092b.setOnClickListener(new View.OnClickListener() { // from class: com.taiwanmobile.pt.adp.view.webview.mraid.MraidLayoutBaseHandler.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MraidLayoutBaseHandler.this.jsWebViewRef.get().injectJavaScript("mraid.close();");
                }
            });
            viewGroup.addView(this.f10092b);
        }
    }

    public void disableCloseButton() {
        this.f10093c = false;
        ImageButton imageButton = this.f10092b;
        if (imageButton != null) {
            imageButton.setVisibility(8);
        }
    }

    public void makeCloseButtonTransparent() {
        ImageButton imageButton = this.f10092b;
        if (imageButton != null) {
            Drawable drawable = imageButton.getDrawable();
            drawable.setAlpha(0);
            this.f10092b.setImageDrawable(drawable);
        }
    }

    public void resizeWebView(RelativeLayout relativeLayout, RelativeLayout.LayoutParams layoutParams) {
        try {
            if (this.jsWebViewRef != null && this.jsWebViewRef.get() != null) {
                Activity activity = (Activity) this.jsWebViewRef.get().getContext();
                this.jsWebViewRef.get();
                ViewGroup viewGroup = (ViewGroup) this.jsWebViewRef.get().getParent();
                if (viewGroup != null) {
                    int i = 0;
                    while (i < viewGroup.getChildCount()) {
                        View childAt = viewGroup.getChildAt(i);
                        if (!(childAt instanceof ImageButton) && !(childAt instanceof JSWebView)) {
                            i++;
                        }
                        viewGroup.removeView(childAt);
                    }
                }
                this.jsWebViewRef.get().setLayoutParams(layoutParams);
                relativeLayout.addView(this.jsWebViewRef.get());
                activity.addContentView(relativeLayout, layoutParams);
            }
        } catch (Exception e) {
            String str = f10091a;
            C10831c.m10520b(str, "resizeWebView error: " + e.getMessage());
        }
    }

    public void restoreWebView(RelativeLayout relativeLayout, RelativeLayout relativeLayout2) {
        try {
            if (this.jsWebViewRef != null && this.jsWebViewRef.get() != null) {
                JSWebView jSWebView = this.jsWebViewRef.get();
                if (relativeLayout != null) {
                    relativeLayout.removeAllViews();
                    if (relativeLayout.getParent() != null) {
                        ((ViewGroup) relativeLayout.getParent()).removeView(relativeLayout);
                    }
                }
                if (relativeLayout2 != null) {
                    jSWebView.setLayoutParams(new RelativeLayout.LayoutParams(relativeLayout2.getLayoutParams()));
                    if (relativeLayout2.getParent() != null) {
                        ((ViewGroup) relativeLayout2.getParent()).addView(jSWebView);
                    }
                }
            }
        } catch (Exception e) {
            String str = f10091a;
            C10831c.m10520b(str, "restoreWebView error: " + e.getMessage());
        }
    }
}
