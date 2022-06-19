package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.jh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/jh.class */
public final class C4049jh implements AbstractC4046je {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18403a;

    /* renamed from: b */
    private static final AbstractC3821bj<Long> f18404b;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18403a = c3827bp.m5858a("measurement.sdk.referrer.delayed_install_referrer_api", false);
        f18404b = c3827bp.m5860a("measurement.id.sdk.referrer.delayed_install_referrer_api", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4046je
    /* renamed from: a */
    public final boolean mo5046a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4046je
    /* renamed from: b */
    public final boolean mo5045b() {
        return f18403a.m5866c().booleanValue();
    }
}
