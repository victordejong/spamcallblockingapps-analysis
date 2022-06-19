package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/b20.class */
public class b20 {

    /* renamed from: a */
    private final s30 f6113a;

    /* renamed from: b */
    private final View f6114b;

    /* renamed from: c */
    private final bl1 f6115c;

    /* renamed from: d */
    private final jt f6116d;

    public b20(View view, jt jtVar, s30 s30Var, bl1 bl1Var) {
        this.f6114b = view;
        this.f6116d = jtVar;
        this.f6113a = s30Var;
        this.f6115c = bl1Var;
    }

    /* renamed from: f */
    public static final ne0<f90> m8054f(Context context, zzbbq zzbbqVar, al1 al1Var, sl1 sl1Var) {
        return new ne0<>(new z10(context, zzbbqVar, al1Var, sl1Var), C2073zo.f9415f);
    }

    /* renamed from: g */
    public static final Set<ne0<f90>> m8053g(m30 m30Var) {
        return Collections.singleton(new ne0(m30Var, C2073zo.f9415f));
    }

    /* renamed from: h */
    public static final ne0<f90> m8052h(k30 k30Var) {
        return new ne0<>(k30Var, C2073zo.f9414e);
    }

    /* renamed from: a */
    public final jt m8059a() {
        return this.f6116d;
    }

    /* renamed from: b */
    public final View m8058b() {
        return this.f6114b;
    }

    /* renamed from: c */
    public final s30 m8057c() {
        return this.f6113a;
    }

    /* renamed from: d */
    public final bl1 m8056d() {
        return this.f6115c;
    }

    /* renamed from: e */
    public d90 m8055e(Set<ne0<f90>> set) {
        return new d90(set);
    }
}
