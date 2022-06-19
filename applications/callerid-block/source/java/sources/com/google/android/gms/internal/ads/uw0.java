package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uw0.class */
final /* synthetic */ class uw0 implements Callable {

    /* renamed from: a */
    private final rz1 f8846a;

    /* renamed from: b */
    private final rz1 f8847b;

    uw0(rz1 rz1Var, rz1 rz1Var2) {
        this.f8846a = rz1Var;
        this.f8847b = rz1Var2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new px0((JSONObject) this.f8846a.get(), (C1849mj) this.f8847b.get());
    }
}
