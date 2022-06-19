package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.hv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hv.class */
public final class C1778hv {

    /* renamed from: a */
    private zzbbq f6788a;

    /* renamed from: b */
    private Context f6789b;

    /* renamed from: c */
    private WeakReference<Context> f6790c;

    /* renamed from: a */
    public final C1778hv m7216a(zzbbq zzbbqVar) {
        this.f6788a = zzbbqVar;
        return this;
    }

    /* renamed from: b */
    public final C1778hv m7215b(Context context) {
        this.f6790c = new WeakReference<>(context);
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        this.f6789b = context2;
        return this;
    }
}
