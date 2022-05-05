package com.google.android.gms.internal;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bl.class */
public final class bl {

    /* renamed from: b  reason: collision with root package name */
    private static bl f4163b = new bl();

    /* renamed from: a  reason: collision with root package name */
    private bk f4164a = null;

    public static bk a(Context context) {
        return f4163b.b(context);
    }

    private bk b(Context context) {
        bk bkVar;
        synchronized (this) {
            if (this.f4164a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f4164a = new bk(context);
            }
            bkVar = this.f4164a;
        }
        return bkVar;
    }
}
