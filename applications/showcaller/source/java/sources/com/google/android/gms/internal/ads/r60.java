package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.AbstractC5685e0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r60.class */
public final class r60 {

    /* renamed from: a */
    static final AbstractC5685e0<x40> f28793a = new p60();

    /* renamed from: b */
    static final AbstractC5685e0<x40> f28794b = new q60();

    /* renamed from: c */
    private final d60 f28795c;

    public r60(Context context, zzcgz zzcgzVar, String str) {
        this.f28795c = new d60(context, zzcgzVar, str, f28793a, f28794b);
    }

    /* renamed from: a */
    public final <I, O> g60<I, O> m11677a(String str, j60<I> j60Var, i60<O> i60Var) {
        return new v60(this.f28795c, str, j60Var, i60Var);
    }

    /* renamed from: b */
    public final a70 m11676b() {
        return new a70(this.f28795c);
    }
}
