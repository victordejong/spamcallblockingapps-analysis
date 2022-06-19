package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5624a;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oj1.class */
public final class oj1 implements Callable<qj1> {

    /* renamed from: a */
    private final C5624a f27567a;

    /* renamed from: b */
    private final ho0 f27568b;

    /* renamed from: c */
    private final Context f27569c;

    /* renamed from: d */
    private final rn1 f27570d;

    /* renamed from: e */
    private final jo2 f27571e;

    /* renamed from: f */
    private final dw1 f27572f;

    /* renamed from: g */
    private final Executor f27573g;

    /* renamed from: h */
    private final C7016u f27574h;

    /* renamed from: i */
    private final zzcgz f27575i;

    /* renamed from: j */
    private final bp2 f27576j;

    public oj1(Context context, Executor executor, C7016u c7016u, zzcgz zzcgzVar, C5624a c5624a, ho0 ho0Var, dw1 dw1Var, bp2 bp2Var, rn1 rn1Var, jo2 jo2Var) {
        this.f27569c = context;
        this.f27573g = executor;
        this.f27574h = c7016u;
        this.f27575i = zzcgzVar;
        this.f27567a = c5624a;
        this.f27568b = ho0Var;
        this.f27572f = dw1Var;
        this.f27576j = bp2Var;
        this.f27570d = rn1Var;
        this.f27571e = jo2Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ qj1 call() {
        qj1 qj1Var = new qj1(this);
        qj1Var.m11879b();
        return qj1Var;
    }
}
