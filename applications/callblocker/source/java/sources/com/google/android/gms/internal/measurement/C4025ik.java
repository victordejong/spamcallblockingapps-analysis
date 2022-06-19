package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ik */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ik.class */
public final class C4025ik implements AbstractC4026il {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18366a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18367b;

    /* renamed from: c */
    private static final AbstractC3821bj<Boolean> f18368c;

    /* renamed from: d */
    private static final AbstractC3821bj<Long> f18369d;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18366a = c3827bp.m5858a("measurement.sdk.dynamite.allow_remote_dynamite", false);
        f18367b = c3827bp.m5858a("measurement.collection.init_params_control_enabled", true);
        f18368c = c3827bp.m5858a("measurement.sdk.dynamite.use_dynamite3", true);
        f18369d = c3827bp.m5860a("measurement.id.sdk.dynamite.use_dynamite", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4026il
    /* renamed from: a */
    public final boolean mo5086a() {
        return f18366a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4026il
    /* renamed from: b */
    public final boolean mo5085b() {
        return f18368c.m5866c().booleanValue();
    }
}
