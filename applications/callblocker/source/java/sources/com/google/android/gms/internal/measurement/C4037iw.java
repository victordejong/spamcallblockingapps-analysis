package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.iw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/iw.class */
public final class C4037iw implements AbstractC4038ix {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18387a = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement")).m5858a("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.AbstractC4038ix
    /* renamed from: a */
    public final boolean mo5064a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4038ix
    /* renamed from: b */
    public final boolean mo5063b() {
        return f18387a.m5866c().booleanValue();
    }
}
