package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcig.class */
public final class zzcig {
    private Context context;
    private PopupWindow zzgkf;

    private static PopupWindow zzd(Context context, View view) {
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
        zzd.zzdy("Displaying the 1x1 popup off the screen.");
        try {
            popupWindow.showAtLocation(window.getDecorView(), 0, -1, -1);
            return popupWindow;
        } catch (Exception e) {
            return null;
        }
    }

    public final void zzapr() {
        Context context = this.context;
        if (context == null || this.zzgkf == null) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).isDestroyed()) {
            this.context = null;
            this.zzgkf = null;
            return;
        }
        if (this.zzgkf.isShowing()) {
            this.zzgkf.dismiss();
        }
        this.context = null;
        this.zzgkf = null;
    }

    public final void zzc(Context context, View view) {
        if (!PlatformVersion.isAtLeastKitKat() || PlatformVersion.isAtLeastLollipop()) {
            return;
        }
        PopupWindow zzd = zzd(context, view);
        this.zzgkf = zzd;
        if (zzd == null) {
            context = null;
        }
        this.context = context;
    }
}
