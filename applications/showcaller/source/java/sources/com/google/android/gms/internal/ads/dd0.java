package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dd0.class */
public final class dd0 implements Callable<cd0> {

    /* renamed from: a */
    final /* synthetic */ Context f21588a;

    /* renamed from: b */
    final /* synthetic */ fd0 f21589b;

    public dd0(fd0 fd0Var, Context context) {
        this.f21589b = fd0Var;
        this.f21588a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ cd0 call() {
        WeakHashMap weakHashMap;
        WeakHashMap weakHashMap2;
        weakHashMap = this.f21589b.f22795a;
        ed0 ed0Var = (ed0) weakHashMap.get(this.f21588a);
        cd0 m16402a = (ed0Var == null || ed0Var.f22070a + C6902qx.f28676a.m12799e().longValue() < C5667s.m18153k().mo16807a()) ? new bd0(this.f21588a).m16402a() : new bd0(this.f21588a, ed0Var.f22071b).m16402a();
        weakHashMap2 = this.f21589b.f22795a;
        weakHashMap2.put(this.f21588a, new ed0(this.f21589b, m16402a));
        return m16402a;
    }
}
