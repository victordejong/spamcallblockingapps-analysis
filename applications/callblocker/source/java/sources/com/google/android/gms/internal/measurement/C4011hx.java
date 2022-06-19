package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/hx.class */
public final class C4011hx implements AbstractC4008hu {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18311a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18312b;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18311a = c3827bp.m5858a("measurement.androidId.delete_feature", true);
        f18312b = c3827bp.m5858a("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4008hu
    /* renamed from: a */
    public final boolean mo5166a() {
        return f18311a.m5866c().booleanValue();
    }
}
