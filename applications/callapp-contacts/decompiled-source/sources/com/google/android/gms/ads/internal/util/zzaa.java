package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.yq;
import com.mopub.common.Constants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaa.class */
public class zzaa extends zzx {
    private static boolean zze(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final boolean zza(Activity activity, Configuration configuration) {
        if (!((Boolean) ekb.e().a(aq.cJ)).booleanValue()) {
            return false;
        }
        if (((Boolean) ekb.e().a(aq.cL)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        ekb.a();
        int a2 = yq.a(activity, configuration.screenHeightDp);
        int a3 = yq.a(activity, configuration.screenWidthDp);
        zzr.zzkv();
        DisplayMetrics zza = zzj.zza((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = zza.heightPixels;
        int i2 = zza.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int round = ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d)) * ((Integer) ekb.e().a(aq.cI)).intValue();
        return !(zze(i, a2 + dimensionPixelSize, round) && zze(i2, a3, round));
    }
}
