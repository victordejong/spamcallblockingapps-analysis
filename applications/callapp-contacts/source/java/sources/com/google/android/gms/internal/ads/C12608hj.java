package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.hj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hj.class */
final class C12608hj implements AbstractC12607hi<adt> {
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
        adt adtVar2 = adtVar;
        WindowManager windowManager = (WindowManager) adtVar2.getContext().getSystemService("window");
        zzr.zzkv();
        View view = (View) adtVar2;
        DisplayMetrics zza = zzj.zza(windowManager);
        int i = zza.widthPixels;
        int i2 = zza.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        view.getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        adtVar2.mo13770a("locationReady", hashMap);
        zzd.zzez("GET LOCATION COMPILED");
    }
}
