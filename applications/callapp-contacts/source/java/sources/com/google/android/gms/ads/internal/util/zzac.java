package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.ekb;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzac.class */
public final class zzac extends zzz {
    public static /* synthetic */ WindowInsets zza(Activity activity, View view, WindowInsets windowInsets) {
        if (zzr.zzkz().m13975d().zzzm() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String str = "";
            if (displayCutout != null) {
                zzf m13975d = zzr.zzkz().m13975d();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    String format = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    String str2 = str;
                    if (!TextUtils.isEmpty(str)) {
                        str2 = String.valueOf(str).concat("|");
                    }
                    String valueOf = String.valueOf(str2);
                    String valueOf2 = String.valueOf(format);
                    str = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                }
                m13975d.zzeh(str);
            } else {
                zzr.zzkz().m13975d().zzeh("");
            }
        }
        zza(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    private static void zza(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i = attributes.layoutInDisplayCutoutMode;
        int i2 = z ? 1 : 2;
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final void zzi(Activity activity) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42648aK)).booleanValue() || zzr.zzkz().m13975d().zzzm() != null || activity.isInMultiWindowMode()) {
            return;
        }
        zza(true, activity);
        activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this, activity) { // from class: com.google.android.gms.ads.internal.util.zzab
            private final zzac zzeha;
            private final Activity zzehb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzeha = this;
                this.zzehb = activity;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return zzac.zza(this.zzehb, view, windowInsets);
            }
        });
    }
}
