package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pf0.class */
public class pf0 {

    /* renamed from: a */
    private final qg0 f8120a;

    /* renamed from: b */
    private final jt f8121b;

    public pf0(qg0 qg0Var, jt jtVar) {
        this.f8120a = qg0Var;
        this.f8121b = jtVar;
    }

    /* renamed from: h */
    public static final ne0<fe0> m6204h(wg0 wg0Var) {
        return new ne0<>(wg0Var, C2073zo.f9415f);
    }

    /* renamed from: a */
    public final qg0 m6211a() {
        return this.f8120a;
    }

    /* renamed from: b */
    public final jt m6210b() {
        return this.f8121b;
    }

    /* renamed from: c */
    public final View m6209c() {
        jt jtVar = this.f8121b;
        if (jtVar != null) {
            return jtVar.V();
        }
        return null;
    }

    /* renamed from: d */
    public final View m6208d() {
        jt jtVar = this.f8121b;
        if (jtVar == null) {
            return null;
        }
        return jtVar.V();
    }

    /* renamed from: e */
    public Set<ne0<s70>> m6207e(r60 r60Var) {
        return Collections.singleton(new ne0(r60Var, C2073zo.f9415f));
    }

    /* renamed from: f */
    public Set<ne0<fe0>> m6206f(r60 r60Var) {
        return Collections.singleton(new ne0(r60Var, C2073zo.f9415f));
    }

    /* renamed from: g */
    public final ne0<yb0> m6205g(Executor executor) {
        return new ne0<>(new of0(this.f8121b), executor);
    }
}
