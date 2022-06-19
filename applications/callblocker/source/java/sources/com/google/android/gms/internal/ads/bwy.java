package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.internal.ads.cae;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwy.class */
final class bwy<S extends cae<?>> {

    /* renamed from: a */
    public final crt<S> f12423a;

    /* renamed from: b */
    private final long f12424b;

    /* renamed from: c */
    private final AbstractC2708e f12425c;

    public bwy(crt<S> crtVar, long j, AbstractC2708e abstractC2708e) {
        this.f12423a = crtVar;
        this.f12425c = abstractC2708e;
        this.f12424b = abstractC2708e.mo13861b() + j;
    }

    /* renamed from: a */
    public final boolean m11568a() {
        return this.f12424b < this.f12425c.mo13861b();
    }
}
