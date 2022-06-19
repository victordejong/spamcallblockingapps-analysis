package com.google.android.gms.ads.internal.util;

import android.content.Context;
/* renamed from: com.google.android.gms.ads.internal.util.b1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/b1.class */
final /* synthetic */ class RunnableC1411b1 implements Runnable {

    /* renamed from: b */
    private final d1 f5556b;

    /* renamed from: c */
    private final Context f5557c;

    /* renamed from: d */
    private final String f5558d = "admob";

    RunnableC1411b1(d1 d1Var, Context context, String str) {
        this.f5556b = d1Var;
        this.f5557c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5556b.a(this.f5557c, this.f5558d);
    }
}
