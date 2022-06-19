package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzar;
/* renamed from: com.google.android.gms.internal.ads.ln */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ln.class */
public final class C12720ln {

    /* renamed from: b */
    private static final zzar<AbstractC12673ju> f49475b = new C12723lq();

    /* renamed from: c */
    private static final zzar<AbstractC12673ju> f49476c = new C12722lp();

    /* renamed from: a */
    final C12684ke f49477a;

    public C12720ln(Context context, zzbar zzbarVar, String str) {
        this.f49477a = new C12684ke(context, zzbarVar, str, f49475b, f49476c);
    }

    /* renamed from: a */
    public final <I, O> AbstractC12713lg<I, O> m14525a(String str, AbstractC12717lk<I> abstractC12717lk, AbstractC12714lh<O> abstractC12714lh) {
        return new C12725ls(this.f49477a, str, abstractC12717lk, abstractC12714lh);
    }
}
