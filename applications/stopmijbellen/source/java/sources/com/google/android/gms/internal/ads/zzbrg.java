package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzt;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrg.class */
final class zzbrg implements zzbrt<zzcop> {
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzcop zzcopVar, Map map) {
        zzcop zzcopVar2 = zzcopVar;
        WindowManager windowManager = (WindowManager) zzcopVar2.getContext().getSystemService("window");
        zzt.zzp();
        View view = (View) zzcopVar2;
        DisplayMetrics zzy = com.google.android.gms.ads.internal.util.zzt.zzy(windowManager);
        int i = zzy.widthPixels;
        int i2 = zzy.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        view.getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        zzcopVar2.zzd("locationReady", hashMap);
        zzciz.zzj("GET LOCATION COMPILED");
    }
}
