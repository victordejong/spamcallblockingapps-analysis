package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzac.class */
public final class zzac extends zzaa {
    public static final /* synthetic */ WindowInsets zzs(Activity activity, View view, WindowInsets windowInsets) {
        if (zzt.zzg().zzp().zzz() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String str = "";
            if (displayCutout != null) {
                zzg zzp = zzt.zzg().zzp();
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
                zzp.zzA(str);
            } else {
                zzt.zzg().zzp().zzA("");
            }
        }
        zzv(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    private static final void zzv(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i = attributes.layoutInDisplayCutoutMode;
        int i2 = 1;
        if (true != z) {
            i2 = 2;
        }
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzad
    public final void zzr(Activity activity) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzaN)).booleanValue() || zzt.zzg().zzp().zzz() != null || activity.isInMultiWindowMode()) {
            return;
        }
        zzv(true, activity);
        activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this, activity) { // from class: com.google.android.gms.ads.internal.util.zzab
            private final zzac zza;
            private final Activity zzb;

            {
                this.zza = this;
                this.zzb = activity;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return zzac.zzs(this.zzb, view, windowInsets);
            }
        });
    }
}
