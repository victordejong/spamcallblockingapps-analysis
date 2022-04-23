package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/kg.class */
public final class kg implements kf {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29189a = new ea(ds.a()).a("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.kf
    public final boolean a() {
        return f29189a.b().booleanValue();
    }
}
