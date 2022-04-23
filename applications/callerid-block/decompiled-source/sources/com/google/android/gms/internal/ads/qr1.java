package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qr1.class */
public final class qr1 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b */
    private static final qr1 f8259b = new qr1();

    /* renamed from: a */
    private Context f8260a;

    private qr1() {
    }

    /* renamed from: a */
    public static qr1 m6064a() {
        return f8259b;
    }

    /* renamed from: b */
    public final Context m6063b() {
        return this.f8260a;
    }

    /* renamed from: c */
    public final void m6062c(Context context) {
        this.f8260a = context != null ? context.getApplicationContext() : null;
    }
}
