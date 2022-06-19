package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yp2.class */
public final class yp2 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    private static final yp2 f32586a = new yp2();

    /* renamed from: b */
    private Context f32587b;

    private yp2() {
    }

    /* renamed from: a */
    public static yp2 m8744a() {
        return f32586a;
    }

    /* renamed from: b */
    public final Context m8743b() {
        return this.f32587b;
    }

    /* renamed from: c */
    public final void m8742c(Context context) {
        this.f32587b = context != null ? context.getApplicationContext() : null;
    }
}
