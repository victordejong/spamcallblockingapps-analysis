package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.xh0;
@TargetApi(24)
/* renamed from: com.google.android.gms.ads.internal.util.j2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/j2.class */
public class C5707j2 extends C5699h2 {
    /* renamed from: t */
    static final boolean m18007t(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: o */
    public final boolean mo18008o(Activity activity, Configuration configuration) {
        boolean z = false;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25730k3)).booleanValue()) {
            return false;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25746m3)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        C7118wr.m9485a();
        int m9161q = xh0.m9161q(activity, configuration.screenHeightDp);
        int m9161q2 = xh0.m9161q(activity, configuration.screenWidthDp);
        C5667s.m18160d();
        DisplayMetrics m18070f0 = C5679c2.m18070f0((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = m18070f0.heightPixels;
        int i2 = m18070f0.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int round = ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d)) * ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25714i3)).intValue();
        if (!m18007t(i, m9161q + dimensionPixelSize, round)) {
            z = true;
        } else if (!m18007t(i2, m9161q2, round)) {
            return true;
        }
        return z;
    }
}
