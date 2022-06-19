package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ij */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ij.class */
public final class C4024ij implements AbstractC4021ig {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18364a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18365b;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18364a = c3827bp.m5858a("measurement.service.configurable_service_limits", false);
        f18365b = c3827bp.m5858a("measurement.client.configurable_service_limits", false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4021ig
    /* renamed from: a */
    public final boolean mo5089a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4021ig
    /* renamed from: b */
    public final boolean mo5088b() {
        return f18364a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4021ig
    /* renamed from: c */
    public final boolean mo5087c() {
        return f18365b.m5866c().booleanValue();
    }
}
