package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.AbstractC1445r;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.jd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jd.class */
public final class C1801jd {

    /* renamed from: b */
    static final AbstractC1445r<pb> f6887b = new hd();

    /* renamed from: c */
    static final AbstractC1445r<pb> f6888c = new id();

    /* renamed from: a */
    private final C1994vc f6889a;

    public C1801jd(Context context, zzbbq zzbbqVar, String str) {
        this.f6889a = new C1994vc(context, zzbbqVar, str, f6887b, f6888c);
    }

    /* renamed from: a */
    public final <I, O> yc<I, O> m7044a(String str, AbstractC1662bd<I> abstractC1662bd, AbstractC1647ad<O> abstractC1647ad) {
        return new nd(this.f6889a, str, abstractC1662bd, abstractC1647ad);
    }

    /* renamed from: b */
    public final C1940sd m7043b() {
        return new C1940sd(this.f6889a);
    }
}
