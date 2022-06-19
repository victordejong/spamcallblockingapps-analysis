package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xn3.class */
public final class xn3 implements AbstractC7171y6 {

    /* renamed from: a */
    private final Context f32133a;

    /* renamed from: b */
    private final AbstractC7171y6 f32134b;

    public xn3(Context context) {
        C6398dc c6398dc = new C6398dc();
        this.f32133a = context.getApplicationContext();
        this.f32134b = c6398dc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7171y6
    public final /* bridge */ /* synthetic */ AbstractC7098w7 zza() {
        return new yn3(this.f32133a, ((C6398dc) this.f32134b).zza());
    }
}
