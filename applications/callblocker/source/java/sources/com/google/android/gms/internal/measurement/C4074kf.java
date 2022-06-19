package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.kf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/kf.class */
public final class C4074kf implements AbstractC4071kc {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18434a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18435b;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18434a = c3827bp.m5858a("measurement.client.global_params.dev", false);
        f18435b = c3827bp.m5858a("measurement.service.global_params", false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4071kc
    /* renamed from: a */
    public final boolean mo5016a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4071kc
    /* renamed from: b */
    public final boolean mo5015b() {
        return f18434a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4071kc
    /* renamed from: c */
    public final boolean mo5014c() {
        return f18435b.m5866c().booleanValue();
    }
}
