package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.C5667s;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ex0.class */
public class ex0 {

    /* renamed from: a */
    private final vy0 f22585a;

    /* renamed from: b */
    private final View f22586b;

    /* renamed from: c */
    private final hj2 f22587c;

    /* renamed from: d */
    private final wn0 f22588d;

    public ex0(View view, wn0 wn0Var, vy0 vy0Var, hj2 hj2Var) {
        this.f22586b = view;
        this.f22588d = wn0Var;
        this.f22585a = vy0Var;
        this.f22587c = hj2Var;
    }

    /* renamed from: f */
    public static final ja1<n41> m15358f(Context context, zzcgz zzcgzVar, ej2 ej2Var, xj2 xj2Var) {
        return new ja1<>(new n41(context, zzcgzVar, ej2Var, xj2Var) { // from class: com.google.android.gms.internal.ads.cx0

            /* renamed from: d */
            private final Context f21395d;

            /* renamed from: e */
            private final zzcgz f21396e;

            /* renamed from: f */
            private final ej2 f21397f;

            /* renamed from: g */
            private final xj2 f21398g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21395d = context;
                this.f21396e = zzcgzVar;
                this.f21397f = ej2Var;
                this.f21398g = xj2Var;
            }

            @Override // com.google.android.gms.internal.ads.n41
            /* renamed from: d */
            public final void mo10505d() {
                C5667s.m18150n().m18130g(this.f21395d, this.f21396e.f33854d, this.f21397f.f22195C.toString(), this.f21398g.f32079f);
            }
        }, qi0.f28500f);
    }

    /* renamed from: g */
    public static final Set<ja1<n41>> m15357g(oy0 oy0Var) {
        return Collections.singleton(new ja1(oy0Var, qi0.f28500f));
    }

    /* renamed from: h */
    public static final ja1<n41> m15356h(my0 my0Var) {
        return new ja1<>(my0Var, qi0.f28499e);
    }

    /* renamed from: a */
    public final wn0 m15362a() {
        return this.f22588d;
    }

    /* renamed from: b */
    public final View m15361b() {
        return this.f22586b;
    }

    /* renamed from: c */
    public final vy0 m15360c() {
        return this.f22585a;
    }

    /* renamed from: d */
    public final hj2 m15359d() {
        return this.f22587c;
    }

    /* renamed from: e */
    public l41 mo9376e(Set<ja1<n41>> set) {
        return new l41(set);
    }
}
