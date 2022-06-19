package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a20.class */
final class a20 implements n20<wn0> {
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        wn0 wn0Var2 = wn0Var;
        WindowManager windowManager = (WindowManager) wn0Var2.getContext().getSystemService("window");
        C5667s.m18160d();
        View view = (View) wn0Var2;
        DisplayMetrics m18070f0 = C5679c2.m18070f0(windowManager);
        int i = m18070f0.widthPixels;
        int i2 = m18070f0.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        view.getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        wn0Var2.mo7959D0("locationReady", hashMap);
        ei0.m15464f("GET LOCATION COMPILED");
    }
}
