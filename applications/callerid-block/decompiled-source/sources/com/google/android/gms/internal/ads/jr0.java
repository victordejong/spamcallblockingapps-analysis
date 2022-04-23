package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jr0.class */
public final class jr0 {

    /* renamed from: a */
    private final or0 f6934a;

    /* renamed from: b */
    private final Executor f6935b;

    /* renamed from: c */
    private final Map<String, String> f6936c;

    public jr0(or0 or0Var, Executor executor) {
        this.f6934a = or0Var;
        this.f6936c = or0Var.c();
        this.f6935b = executor;
    }

    /* renamed from: a */
    public final ir0 m6930a() {
        ir0 ir0Var = new ir0(this);
        ir0.m7100g(ir0Var);
        return ir0Var;
    }
}
