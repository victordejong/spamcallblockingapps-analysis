package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.lw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/lw.class */
public final class C4118lw implements AbstractC4115lt {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18494a = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement")).m5858a("measurement.integration.disable_firebase_instance_id", false);

    @Override // com.google.android.gms.internal.measurement.AbstractC4115lt
    /* renamed from: a */
    public final boolean mo4961a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4115lt
    /* renamed from: b */
    public final boolean mo4960b() {
        return f18494a.m5866c().booleanValue();
    }
}
