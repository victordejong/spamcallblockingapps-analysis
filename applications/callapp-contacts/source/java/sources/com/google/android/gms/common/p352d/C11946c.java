package com.google.android.gms.common.p352d;

import android.content.Context;
/* renamed from: com.google.android.gms.common.d.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/d/c.class */
public final class C11946c {

    /* renamed from: b */
    private static C11946c f39433b = new C11946c();

    /* renamed from: a */
    private C11945b f39434a = null;

    /* renamed from: a */
    public static C11945b m19258a(Context context) {
        return f39433b.m19257b(context);
    }

    /* renamed from: b */
    private C11945b m19257b(Context context) {
        C11945b c11945b;
        synchronized (this) {
            if (this.f39434a == null) {
                Context context2 = context;
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                }
                this.f39434a = new C11945b(context2);
            }
            c11945b = this.f39434a;
        }
        return c11945b;
    }
}
