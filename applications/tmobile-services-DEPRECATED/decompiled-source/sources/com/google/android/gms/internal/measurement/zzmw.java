package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmw.class */
public final class zzmw implements zzmt {

    /* renamed from: a */
    private static final zzdh<Boolean> f8721a = new zzdm(zzde.m12780a("com.google.android.gms.measurement")).m12757d("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final boolean zzb() {
        return f8721a.m12764o().booleanValue();
    }
}
