package com.google.android.gms.common.d;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/d/c.class */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static c f22794b = new c();

    /* renamed from: a  reason: collision with root package name */
    private b f22795a = null;

    public static b a(Context context) {
        return f22794b.b(context);
    }

    private b b(Context context) {
        b bVar;
        synchronized (this) {
            if (this.f22795a == null) {
                Context context2 = context;
                if (context.getApplicationContext() != null) {
                    context2 = context.getApplicationContext();
                }
                this.f22795a = new b(context2);
            }
            bVar = this.f22795a;
        }
        return bVar;
    }
}
