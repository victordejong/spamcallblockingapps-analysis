package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.widget.PopupWindow;
@TargetApi(19)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwn.class */
public final class zzdwn {
    private Context zza;
    private PopupWindow zzb;

    /* JADX WARN: Removed duplicated region for block: B:21:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(android.content.Context r8, android.view.View r9) {
        /*
            r7 = this;
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastKitKat()
            if (r0 == 0) goto L9a
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastLollipop()
            if (r0 == 0) goto Lf
            goto L9a
        Lf:
            r0 = r8
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L21
            r0 = r8
            android.app.Activity r0 = (android.app.Activity) r0
            android.view.Window r0 = r0.getWindow()
            r10 = r0
            goto L23
        L21:
            r0 = 0
            r10 = r0
        L23:
            r0 = r10
            if (r0 == 0) goto L88
            r0 = r10
            android.view.View r0 = r0.getDecorView()
            if (r0 != 0) goto L31
            goto L88
        L31:
            r0 = r8
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isDestroyed()
            if (r0 == 0) goto L3e
            goto L88
        L3e:
            android.widget.FrameLayout r0 = new android.widget.FrameLayout
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r11 = r0
            r0 = r11
            android.view.ViewGroup$LayoutParams r1 = new android.view.ViewGroup$LayoutParams
            r2 = r1
            r3 = -1
            r4 = -1
            r2.<init>(r3, r4)
            r0.setLayoutParams(r1)
            r0 = r11
            r1 = r9
            r2 = -1
            r3 = -1
            r0.addView(r1, r2, r3)
            android.widget.PopupWindow r0 = new android.widget.PopupWindow
            r1 = r0
            r2 = r11
            r3 = 1
            r4 = 1
            r5 = 0
            r1.<init>(r2, r3, r4, r5)
            r9 = r0
            r0 = r9
            r1 = 1
            r0.setOutsideTouchable(r1)
            r0 = r9
            r1 = 0
            r0.setClippingEnabled(r1)
            java.lang.String r0 = "Displaying the 1x1 popup off the screen."
            com.google.android.gms.internal.ads.zzciz.zze(r0)
            r0 = r9
            r1 = r10
            android.view.View r1 = r1.getDecorView()     // Catch: java.lang.Exception -> L9b
            r2 = 0
            r3 = -1
            r4 = -1
            r0.showAtLocation(r1, r2, r3, r4)     // Catch: java.lang.Exception -> L9b
            goto L8a
        L88:
            r0 = 0
            r9 = r0
        L8a:
            r0 = r7
            r1 = r9
            r0.zzb = r1
            r0 = r9
            if (r0 != 0) goto L95
            r0 = 0
            r8 = r0
        L95:
            r0 = r7
            r1 = r8
            r0.zza = r1
        L9a:
            return
        L9b:
            r9 = move-exception
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdwn.zza(android.content.Context, android.view.View):void");
    }

    public final void zzb() {
        Context context = this.zza;
        if (context == null || this.zzb == null) {
            return;
        }
        if ((!(context instanceof Activity) || !((Activity) context).isDestroyed()) && this.zzb.isShowing()) {
            this.zzb.dismiss();
        }
        this.zza = null;
        this.zzb = null;
    }
}
