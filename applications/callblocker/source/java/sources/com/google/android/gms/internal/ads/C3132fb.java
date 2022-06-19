package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C2341q;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.fb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fb.class */
final class C3132fb implements AbstractC3131fa<act> {
    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(act actVar, Map map) {
        act actVar2 = actVar;
        WindowManager windowManager = (WindowManager) actVar2.getContext().getSystemService("window");
        C2341q.m14744c();
        View view = (View) actVar2;
        DisplayMetrics m6992a = C3567ve.m6992a(windowManager);
        int i = m6992a.widthPixels;
        int i2 = m6992a.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        view.getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        actVar2.mo7737a("locationReady", hashMap);
        C3556uu.m6745e("GET LOCATION COMPILED");
    }
}
