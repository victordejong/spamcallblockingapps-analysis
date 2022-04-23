package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazi.class */
public class zzazi extends zzazj {
    /* renamed from: a */
    public static boolean m16033a(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final boolean mo16032a(Activity activity, Configuration configuration) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23841k2)).booleanValue()) {
            return false;
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23853m2)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        zzwm.m11170a();
        int b = zzbbg.m15897b(activity, configuration.screenHeightDp);
        int b2 = zzbbg.m15897b(activity, configuration.screenWidthDp);
        zzp.m17969c();
        DisplayMetrics a = zzayu.m16128a((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = a.heightPixels;
        int i2 = a.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        double d = activity.getResources().getDisplayMetrics().density;
        Double.isNaN(d);
        int round = ((int) Math.round(d + 0.5d)) * ((Integer) zzwm.m11166e().m16921a(zzabb.f23835j2)).intValue();
        return !(m16033a(i, b + dimensionPixelSize, round) && m16033a(i2, b2, round));
    }
}
