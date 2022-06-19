package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C2341q;
import java.util.Locale;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@TargetApi(28)
/* renamed from: com.google.android.gms.internal.ads.vu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vu.class */
public final class C3583vu extends C3580vr {
    /* renamed from: a */
    public static /* synthetic */ WindowInsets m6919a(Activity activity, View view, WindowInsets windowInsets) {
        if (C2341q.m14740g().m7084h().mo7013n() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            if (displayCutout != null) {
                AbstractC3558uw m7084h = C2341q.m14740g().m7084h();
                String str = "";
                for (Rect rect : displayCutout.getBoundingRects()) {
                    String format = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(str)) {
                        str = String.valueOf(str).concat("|");
                    }
                    String valueOf = String.valueOf(str);
                    String valueOf2 = String.valueOf(format);
                    str = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                }
                m7084h.mo7023d(str);
            } else {
                C2341q.m14740g().m7084h().mo7023d("");
            }
        }
        m6918a(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    /* renamed from: a */
    private static void m6918a(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i = attributes.layoutInDisplayCutoutMode;
        int i2 = z ? 1 : 2;
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final void mo6920a(Activity activity) {
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16391ax)).booleanValue() || C2341q.m14740g().m7084h().mo7013n() != null || activity.isInMultiWindowMode()) {
            return;
        }
        m6918a(true, activity);
        activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this, activity) { // from class: com.google.android.gms.internal.ads.vt

            /* renamed from: a */
            private final C3583vu f17513a;

            /* renamed from: b */
            private final Activity f17514b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17513a = this;
                this.f17514b = activity;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return C3583vu.m6919a(this.f17514b, view, windowInsets);
            }
        });
    }
}
