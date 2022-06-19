package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kp2.class */
public abstract class kp2 {
    /* renamed from: e */
    public static kp2 m13835e(lp2 lp2Var, mp2 mp2Var) {
        if (ip2.m14325b()) {
            return new np2(lp2Var, mp2Var);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: a */
    public abstract void mo12834a();

    /* renamed from: b */
    public abstract void mo12833b(View view);

    /* renamed from: c */
    public abstract void mo12832c();

    /* renamed from: d */
    public abstract void mo12831d(View view, zzfgi zzfgiVar, String str);
}
