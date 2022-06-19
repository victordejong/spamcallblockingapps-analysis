package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzwr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaa.class */
public class zzaa extends zzx {
    private static boolean zze(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final boolean zza(Activity activity, Configuration configuration) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvc)).booleanValue()) {
            return false;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcve)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        zzwr.zzqn();
        int zze = zzaza.zze(activity, configuration.screenHeightDp);
        int zze2 = zzaza.zze(activity, configuration.screenWidthDp);
        zzr.zzkr();
        DisplayMetrics zza = zzj.zza((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = zza.heightPixels;
        int i2 = zza.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", Constants.PLATFORM);
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int round = ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d)) * ((Integer) zzwr.zzqr().zzd(zzabp.zzcvb)).intValue();
        return !(zze(i, zze + dimensionPixelSize, round) && zze(i2, zze2, round));
    }
}
