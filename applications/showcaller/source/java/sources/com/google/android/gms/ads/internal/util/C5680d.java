package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import java.util.Locale;
@TargetApi(28)
/* renamed from: com.google.android.gms.ads.internal.util.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/d.class */
public final class C5680d extends C5672b {
    /* renamed from: u */
    public static final /* synthetic */ WindowInsets m18048u(Activity activity, View view, WindowInsets windowInsets) {
        if (C5667s.m18156h().m12230p().mo17950q() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String str = "";
            if (displayCutout != null) {
                AbstractC5728q1 m12230p = C5667s.m18156h().m12230p();
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
                m12230p.mo17979J0(str);
            } else {
                C5667s.m18156h().m12230p().mo17979J0("");
            }
        }
        m18047v(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    /* renamed from: v */
    private static final void m18047v(boolean z, Activity activity) {
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

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: q */
    public final void mo18043q(Activity activity) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25540N0)).booleanValue() || C5667s.m18156h().m12230p().mo17950q() != null || activity.isInMultiWindowMode()) {
            return;
        }
        m18047v(true, activity);
        activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this, activity) { // from class: com.google.android.gms.ads.internal.util.c

            /* renamed from: a */
            private final C5680d f18446a;

            /* renamed from: b */
            private final Activity f18447b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18446a = this;
                this.f18447b = activity;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return C5680d.m18048u(this.f18447b, view, windowInsets);
            }
        });
    }
}
