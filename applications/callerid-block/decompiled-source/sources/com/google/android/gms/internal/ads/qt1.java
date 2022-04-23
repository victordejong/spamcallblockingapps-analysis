package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qt1.class */
public final class qt1 {

    /* renamed from: a */
    private final Context f8267a;

    /* renamed from: b */
    private final Looper f8268b;

    public qt1(Context context, Looper looper) {
        this.f8267a = context;
        this.f8268b = looper;
    }

    /* renamed from: a */
    public final void m6045a(String str) {
        eu1 E = gu1.E();
        E.r(this.f8267a.getPackageName());
        E.q(zzdzy.c);
        bu1 E2 = cu1.E();
        E2.r(str);
        E2.q(zzdzr.c);
        E.s(E2);
        new rt1(this.f8267a, this.f8268b, E.m()).d();
    }
}
