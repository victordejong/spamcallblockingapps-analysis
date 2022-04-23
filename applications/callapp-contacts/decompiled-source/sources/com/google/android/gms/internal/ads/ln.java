package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzar;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ln.class */
public final class ln {

    /* renamed from: b  reason: collision with root package name */
    private static final zzar<ju> f28158b = new lq();

    /* renamed from: c  reason: collision with root package name */
    private static final zzar<ju> f28159c = new lp();

    /* renamed from: a  reason: collision with root package name */
    final ke f28160a;

    public ln(Context context, zzbar zzbarVar, String str) {
        this.f28160a = new ke(context, zzbarVar, str, f28158b, f28159c);
    }

    public final <I, O> lg<I, O> a(String str, lk<I> lkVar, lh<O> lhVar) {
        return new ls(this.f28160a, str, lkVar, lhVar);
    }
}
