package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.jo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/jo.class */
public final class C4056jo implements AbstractC4057jp {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18411a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18412b;

    /* renamed from: c */
    private static final AbstractC3821bj<Boolean> f18413c;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18411a = c3827bp.m5858a("measurement.client.sessions.check_on_reset_and_enable2", true);
        f18412b = c3827bp.m5858a("measurement.client.sessions.check_on_startup", true);
        f18413c = c3827bp.m5858a("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4057jp
    /* renamed from: a */
    public final boolean mo5036a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4057jp
    /* renamed from: b */
    public final boolean mo5035b() {
        return f18411a.m5866c().booleanValue();
    }
}
