package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C1378a;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kn0.class */
public final class kn0 implements Callable<mn0> {

    /* renamed from: a */
    private final C1378a f6998a;

    /* renamed from: b */
    private final C1982ut f6999b;

    /* renamed from: c */
    private final Context f7000c;

    /* renamed from: d */
    private final jr0 f7001d;

    /* renamed from: e */
    private final aq1 f7002e;

    /* renamed from: f */
    private final jz0 f7003f;

    /* renamed from: g */
    private final Executor f7004g;

    /* renamed from: h */
    private final zh2 f7005h;

    /* renamed from: i */
    private final zzbbq f7006i;

    /* renamed from: j */
    private final tq1 f7007j;

    public kn0(Context context, Executor executor, zh2 zh2Var, zzbbq zzbbqVar, C1378a aVar, C1982ut utVar, jz0 jz0Var, tq1 tq1Var, jr0 jr0Var, aq1 aq1Var) {
        this.f7000c = context;
        this.f7004g = executor;
        this.f7005h = zh2Var;
        this.f7006i = zzbbqVar;
        this.f6998a = aVar;
        this.f6999b = utVar;
        this.f7003f = jz0Var;
        this.f7007j = tq1Var;
        this.f7001d = jr0Var;
        this.f7002e = aq1Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ mn0 call() {
        mn0 mn0Var = new mn0(this);
        mn0Var.m6543a();
        return mn0Var;
    }
}
