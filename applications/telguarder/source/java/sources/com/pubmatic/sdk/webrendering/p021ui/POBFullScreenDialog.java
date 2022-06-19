package com.pubmatic.sdk.webrendering.p021ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.pubmatic.sdk.webrendering.POBUIUtil;
import java.lang.ref.WeakReference;
/* renamed from: com.pubmatic.sdk.webrendering.ui.POBFullScreenDialog */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBFullScreenDialog.class */
public class POBFullScreenDialog extends Dialog {

    /* renamed from: a */
    private OnDialogCloseListener f1218a;

    /* renamed from: b */
    private WeakReference<Context> f1219b;

    /* renamed from: c */
    private boolean f1220c;

    /* renamed from: d */
    private Integer f1221d;

    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBFullScreenDialog$OnDialogCloseListener */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBFullScreenDialog$OnDialogCloseListener.class */
    public interface OnDialogCloseListener {
        void onClose();
    }

    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBFullScreenDialog$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBFullScreenDialog$a.class */
    public class View$OnClickListenerC2060a implements View.OnClickListener {
        View$OnClickListenerC2060a() {
            POBFullScreenDialog.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            POBFullScreenDialog.this.dismiss();
        }
    }

    public POBFullScreenDialog(Context context, WebView webView, OnDialogCloseListener onDialogCloseListener) {
        super(context, 16973834);
        this.f1219b = new WeakReference<>(context);
        m434a(onDialogCloseListener);
        setContentView(m435a(webView, -1, -1));
    }

    /* renamed from: a */
    private FrameLayout m435a(View view, int i, int i2) {
        FrameLayout frameLayout = new FrameLayout(view.getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i2);
        layoutParams.gravity = 17;
        layoutParams.setMargins(0, 0, 0, 0);
        frameLayout.addView(view, layoutParams);
        ImageButton createCloseButton = POBUIUtil.createCloseButton(view.getContext());
        frameLayout.addView(createCloseButton);
        createCloseButton.setOnClickListener(new View$OnClickListenerC2060a());
        return frameLayout;
    }

    /* renamed from: a */
    private void m436a(Activity activity, int i) {
        int i2;
        if (i == 0) {
            i2 = -1;
        } else if (i == 2) {
            i2 = 6;
        } else if (i != 1) {
            return;
        } else {
            i2 = 7;
        }
        activity.setRequestedOrientation(i2);
    }

    /* renamed from: a */
    private void m434a(OnDialogCloseListener onDialogCloseListener) {
        this.f1218a = onDialogCloseListener;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        OnDialogCloseListener onDialogCloseListener = this.f1218a;
        if (onDialogCloseListener != null) {
            onDialogCloseListener.onClose();
        }
        if (this.f1220c && this.f1221d != null) {
            Context context = this.f1219b.get();
            if (context instanceof Activity) {
                ((Activity) context).setRequestedOrientation(this.f1221d.intValue());
            }
        }
        this.f1218a = null;
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            dismiss();
        }
    }

    public void show(int i) {
        Activity ownerActivity;
        show();
        if (!this.f1220c || (ownerActivity = getOwnerActivity()) == null) {
            return;
        }
        this.f1221d = Integer.valueOf(ownerActivity.getRequestedOrientation());
        m436a(ownerActivity, i);
    }
}
