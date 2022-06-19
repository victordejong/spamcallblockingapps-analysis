package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.kr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/kr.class */
public final class C4086kr implements AbstractC4083ko {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18455a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18456b;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18455a = c3827bp.m5858a("measurement.sdk.screen.manual_screen_view_logging", true);
        f18456b = c3827bp.m5858a("measurement.sdk.screen.disabling_automatic_reporting", true);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4083ko
    /* renamed from: a */
    public final boolean mo4994a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4083ko
    /* renamed from: b */
    public final boolean mo4993b() {
        return f18455a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4083ko
    /* renamed from: c */
    public final boolean mo4992c() {
        return f18456b.m5866c().booleanValue();
    }
}
