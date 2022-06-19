package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
@TargetApi(19)
/* renamed from: com.google.android.gms.ads.internal.util.g2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/g2.class */
public class C5695g2 extends C5691f2 {
    @Override // com.google.android.gms.ads.internal.util.C5691f2, com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: g */
    public final boolean mo18018g(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: j */
    public final ViewGroup.LayoutParams mo18017j() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
