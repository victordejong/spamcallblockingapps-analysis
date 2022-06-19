package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/br1.class */
public abstract class br1 {
    /* renamed from: f */
    public static br1 m7919f(cr1 cr1Var, dr1 dr1Var) {
        if (zq1.m4547b()) {
            return new er1(cr1Var, dr1Var);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: a */
    public abstract void m7924a();

    /* renamed from: b */
    public abstract void m7923b(View view);

    /* renamed from: c */
    public abstract void m7922c();

    /* renamed from: d */
    public abstract void m7921d(View view, zzdwu zzdwuVar, String str);

    @Deprecated
    /* renamed from: e */
    public abstract void m7920e(View view);
}
