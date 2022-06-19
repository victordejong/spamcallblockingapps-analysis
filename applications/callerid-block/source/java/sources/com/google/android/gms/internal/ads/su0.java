package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/su0.class */
final /* synthetic */ class su0 implements Callable {

    /* renamed from: a */
    private final zh2 f8560a;

    /* renamed from: b */
    private final Context f8561b;

    su0(zh2 zh2Var, Context context) {
        this.f8560a = zh2Var;
        this.f8561b = context;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zh2 zh2Var = this.f8560a;
        return zh2Var.m4633b().m4906d(this.f8561b);
    }
}
