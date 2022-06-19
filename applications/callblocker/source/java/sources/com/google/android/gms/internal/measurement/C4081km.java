package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.km */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/km.class */
public final class C4081km implements AbstractC4082kn {

    /* renamed from: a */
    private static final AbstractC3821bj<Long> f18446a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18447b;

    /* renamed from: c */
    private static final AbstractC3821bj<Boolean> f18448c;

    /* renamed from: d */
    private static final AbstractC3821bj<Boolean> f18449d;

    /* renamed from: e */
    private static final AbstractC3821bj<Long> f18450e;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18446a = c3827bp.m5860a("measurement.id.lifecycle.app_in_background_parameter", 0L);
        f18447b = c3827bp.m5858a("measurement.lifecycle.app_backgrounded_engagement", false);
        f18448c = c3827bp.m5858a("measurement.lifecycle.app_backgrounded_tracking", true);
        f18449d = c3827bp.m5858a("measurement.lifecycle.app_in_background_parameter", false);
        f18450e = c3827bp.m5860a("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4082kn
    /* renamed from: a */
    public final boolean mo5001a() {
        return f18447b.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4082kn
    /* renamed from: b */
    public final boolean mo5000b() {
        return f18448c.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4082kn
    /* renamed from: c */
    public final boolean mo4999c() {
        return f18449d.m5866c().booleanValue();
    }
}
