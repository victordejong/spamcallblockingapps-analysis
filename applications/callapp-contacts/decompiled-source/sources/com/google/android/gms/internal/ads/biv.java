package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/biv.class */
public final class biv {

    /* renamed from: a  reason: collision with root package name */
    private Context f24528a;

    /* renamed from: b  reason: collision with root package name */
    private PopupWindow f24529b;

    private static PopupWindow b(Context context, View view) {
        Window window = context instanceof Activity ? ((Activity) context).getWindow() : null;
        if (window == null || window.getDecorView() == null || ((Activity) context).isDestroyed()) {
            return null;
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.addView(view, -1, -1);
        PopupWindow popupWindow = new PopupWindow((View) frameLayout, 1, 1, false);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setClippingEnabled(false);
        zzd.zzdz("Displaying the 1x1 popup off the screen.");
        try {
            popupWindow.showAtLocation(window.getDecorView(), 0, -1, -1);
            return popupWindow;
        } catch (Exception e) {
            return null;
        }
    }

    public final void a() {
        Context context = this.f24528a;
        if (context != null && this.f24529b != null) {
            if (!(context instanceof Activity) || !((Activity) context).isDestroyed()) {
                if (this.f24529b.isShowing()) {
                    this.f24529b.dismiss();
                }
                this.f24528a = null;
                this.f24529b = null;
                return;
            }
            this.f24528a = null;
            this.f24529b = null;
        }
    }

    public final void a(Context context, View view) {
        if (n.e() && !n.g()) {
            PopupWindow b2 = b(context, view);
            this.f24529b = b2;
            if (b2 == null) {
                context = null;
            }
            this.f24528a = context;
        }
    }
}
