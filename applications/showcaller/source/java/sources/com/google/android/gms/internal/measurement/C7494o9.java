package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.o9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/o9.class */
public final class C7494o9 implements AbstractC7480n9 {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34622a = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement")).m6834b("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.AbstractC7480n9
    /* renamed from: b */
    public final boolean mo7035b() {
        return f34622a.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7480n9
    public final boolean zza() {
        return true;
    }
}
