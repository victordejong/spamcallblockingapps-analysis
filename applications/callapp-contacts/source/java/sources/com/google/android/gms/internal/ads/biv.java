package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.C12110n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/biv.class */
public final class biv {

    /* renamed from: a */
    private Context f44078a;

    /* renamed from: b */
    private PopupWindow f44079b;

    /* renamed from: b */
    private static PopupWindow m17820b(Context context, View view) {
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

    /* renamed from: a */
    public final void m17822a() {
        Context context = this.f44078a;
        if (context == null || this.f44079b == null) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).isDestroyed()) {
            this.f44078a = null;
            this.f44079b = null;
            return;
        }
        if (this.f44079b.isShowing()) {
            this.f44079b.dismiss();
        }
        this.f44078a = null;
        this.f44079b = null;
    }

    /* renamed from: a */
    public final void m17821a(Context context, View view) {
        if (!C12110n.m19017e() || C12110n.m19015g()) {
            return;
        }
        PopupWindow m17820b = m17820b(context, view);
        this.f44079b = m17820b;
        if (m17820b == null) {
            context = null;
        }
        this.f44078a = context;
    }
}
