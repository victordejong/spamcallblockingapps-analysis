package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ut2.class */
public final class ut2 implements ValueCallback<String> {

    /* renamed from: a */
    final /* synthetic */ vt2 f8838a;

    public ut2(vt2 vt2Var) {
        this.f8838a = vt2Var;
    }

    /* renamed from: a */
    public final void onReceiveValue(String str) {
        vt2 vt2Var = this.f8838a;
        vt2Var.f8958f.m4840d(vt2Var.f8955c, vt2Var.f8956d, str, vt2Var.f8957e);
    }
}
