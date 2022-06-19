package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
@TargetApi(19)
/* renamed from: com.google.android.gms.internal.ads.vq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vq.class */
public class C3579vq extends C3576vn {
    @Override // com.google.android.gms.internal.ads.C3576vn, com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final boolean mo6925a(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: b */
    public final ViewGroup.LayoutParams mo6924b() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
