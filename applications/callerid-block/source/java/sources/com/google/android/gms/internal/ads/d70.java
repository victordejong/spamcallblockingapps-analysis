package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/d70.class */
public final class d70 {

    /* renamed from: a */
    private final Context f6314a;

    /* renamed from: b */
    private final sl1 f6315b;

    /* renamed from: c */
    private final Bundle f6316c;

    /* renamed from: d */
    private final nl1 f6317d;

    public /* synthetic */ d70(c70 c70Var, b70 b70Var) {
        Context context;
        sl1 sl1Var;
        Bundle bundle;
        nl1 nl1Var;
        context = c70Var.f6256a;
        this.f6314a = context;
        sl1Var = c70Var.f6257b;
        this.f6315b = sl1Var;
        bundle = c70Var.f6258c;
        this.f6316c = bundle;
        nl1Var = c70Var.f6259d;
        this.f6317d = nl1Var;
    }

    /* renamed from: a */
    final c70 m7750a() {
        c70 c70Var = new c70();
        c70Var.m7865a(this.f6314a);
        c70Var.m7864b(this.f6315b);
        c70Var.m7863c(this.f6316c);
        return c70Var;
    }

    /* renamed from: b */
    final sl1 m7749b() {
        return this.f6315b;
    }

    /* renamed from: c */
    final nl1 m7748c() {
        return this.f6317d;
    }

    /* renamed from: d */
    final Bundle m7747d() {
        return this.f6316c;
    }

    /* renamed from: e */
    final Context m7746e(Context context) {
        return this.f6314a;
    }
}
