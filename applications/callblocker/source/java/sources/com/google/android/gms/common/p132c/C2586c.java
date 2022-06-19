package com.google.android.gms.common.p132c;

import android.content.Context;
/* renamed from: com.google.android.gms.common.c.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/c/c.class */
public class C2586c {

    /* renamed from: b */
    private static C2586c f7244b = new C2586c();

    /* renamed from: a */
    private C2585b f7245a = null;

    /* renamed from: a */
    public static C2585b m14193a(Context context) {
        return f7244b.m14192b(context);
    }

    /* renamed from: b */
    private final C2585b m14192b(Context context) {
        C2585b c2585b;
        synchronized (this) {
            if (this.f7245a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f7245a = new C2585b(context);
            }
            c2585b = this.f7245a;
        }
        return c2585b;
    }
}
