package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vw0.class */
final /* synthetic */ class vw0 implements Callable {

    /* renamed from: a */
    private final rz1 f8962a;

    /* renamed from: b */
    private final rz1 f8963b;

    /* renamed from: c */
    private final rz1 f8964c;

    vw0(rz1 rz1Var, rz1 rz1Var2, rz1 rz1Var3) {
        this.f8962a = rz1Var;
        this.f8963b = rz1Var2;
        this.f8964c = rz1Var3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new ix0((mx0) this.f8962a.get(), (JSONObject) this.f8963b.get(), (C1849mj) this.f8964c.get());
    }
}
