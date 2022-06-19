package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C2341q;
@TargetApi(24)
/* renamed from: com.google.android.gms.internal.ads.vs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vs.class */
public class C3581vs extends C3578vp {
    /* renamed from: a */
    private static boolean m6922a(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final boolean mo6921a(Activity activity, Configuration configuration) {
        boolean z = false;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16477cd)).booleanValue()) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16479cf)).booleanValue()) {
                z = activity.isInMultiWindowMode();
            } else {
                dyx.m8162a();
                int m6801a = C3634xr.m6801a(activity, configuration.screenHeightDp);
                int m6801a2 = C3634xr.m6801a(activity, configuration.screenWidthDp);
                C2341q.m14744c();
                DisplayMetrics m6992a = C3567ve.m6992a((WindowManager) activity.getApplicationContext().getSystemService("window"));
                int i = m6992a.heightPixels;
                int i2 = m6992a.widthPixels;
                int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
                int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
                int intValue = ((Integer) dyx.m8158e().m7876a(edi.f16476cc)).intValue() * ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d));
                if (!(m6922a(i, dimensionPixelSize + m6801a, intValue) && m6922a(i2, m6801a2, intValue))) {
                    z = true;
                }
            }
        }
        return z;
    }
}
