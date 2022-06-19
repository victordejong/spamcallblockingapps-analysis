package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.jn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jn.class */
public final class C3252jn {

    /* renamed from: a */
    private static final AbstractC3599wj<AbstractC3200hp> f16808a = new C3251jm();

    /* renamed from: b */
    private static final AbstractC3599wj<AbstractC3200hp> f16809b = new C3254jp();

    /* renamed from: c */
    private final C3215id f16810c;

    public C3252jn(Context context, C3647yd c3647yd, String str) {
        this.f16810c = new C3215id(context, c3647yd, str, f16808a, f16809b);
    }

    /* renamed from: a */
    public final <I, O> AbstractC3244jf<I, O> m7725a(String str, AbstractC3245jg<I> abstractC3245jg, AbstractC3246jh<O> abstractC3246jh) {
        return new C3253jo(this.f16810c, str, abstractC3245jg, abstractC3246jh);
    }

    /* renamed from: a */
    public final C3257js m7726a() {
        return new C3257js(this.f16810c);
    }
}
