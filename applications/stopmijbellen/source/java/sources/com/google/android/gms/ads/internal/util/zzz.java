package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzcis;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzz.class */
public class zzz extends zzy {
    public static final boolean zzp(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final boolean zzo(Activity activity, Configuration configuration) {
        boolean z = false;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdr)).booleanValue()) {
            return false;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdt)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        zzbgo.zzb();
        int zzs = zzcis.zzs(activity, configuration.screenHeightDp);
        int zzs2 = zzcis.zzs(activity, configuration.screenWidthDp);
        zzt.zzp();
        DisplayMetrics zzy = zzt.zzy((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = zzy.heightPixels;
        int i2 = zzy.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int intValue = ((Integer) zzbgq.zzc().zzb(zzblj.zzdp)).intValue() * ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d));
        if (!zzp(i, zzs + dimensionPixelSize, intValue)) {
            z = true;
        } else if (!zzp(i2, zzs2, intValue)) {
            return true;
        }
        return z;
    }
}
