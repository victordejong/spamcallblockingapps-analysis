package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.common.util.C2716m;
@TargetApi(19)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bev.class */
public final class bev {

    /* renamed from: a */
    private Context f11120a;

    /* renamed from: b */
    private PopupWindow f11121b;

    /* renamed from: b */
    private static PopupWindow m12017b(Context context, View view) {
        PopupWindow popupWindow;
        Window window = context instanceof Activity ? ((Activity) context).getWindow() : null;
        if (window == null || window.getDecorView() == null) {
            popupWindow = null;
        } else if (((Activity) context).isDestroyed()) {
            popupWindow = null;
        } else {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            frameLayout.addView(view, -1, -1);
            popupWindow = new PopupWindow((View) frameLayout, 1, 1, false);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setClippingEnabled(false);
            C3556uu.m6751b("Displaying the 1x1 popup off the screen.");
            try {
                popupWindow.showAtLocation(window.getDecorView(), 0, -1, -1);
            } catch (Exception e) {
                popupWindow = null;
            }
        }
        return popupWindow;
    }

    /* renamed from: a */
    public final void m12019a() {
        if (this.f11120a == null || this.f11121b == null) {
            return;
        }
        if ((this.f11120a instanceof Activity) && ((Activity) this.f11120a).isDestroyed()) {
            this.f11120a = null;
            this.f11121b = null;
            return;
        }
        if (this.f11121b.isShowing()) {
            this.f11121b.dismiss();
        }
        this.f11120a = null;
        this.f11121b = null;
    }

    /* renamed from: a */
    public final void m12018a(Context context, View view) {
        if (!C2716m.m13837f() || C2716m.m13835h()) {
            return;
        }
        this.f11121b = m12017b(context, view);
        if (this.f11121b == null) {
            context = null;
        }
        this.f11120a = context;
    }
}
