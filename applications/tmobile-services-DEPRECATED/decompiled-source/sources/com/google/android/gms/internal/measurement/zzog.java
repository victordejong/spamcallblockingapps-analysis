package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzog.class */
public final class zzog implements zzod {

    /* renamed from: a */
    private static final zzdh<Boolean> f8765a;

    /* renamed from: b */
    private static final zzdh<Boolean> f8766b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        zzdmVar.m12759b("measurement.id.lifecycle.app_in_background_parameter", 0L);
        f8765a = zzdmVar.m12757d("measurement.lifecycle.app_backgrounded_engagement", false);
        zzdmVar.m12757d("measurement.lifecycle.app_backgrounded_tracking", true);
        f8766b = zzdmVar.m12757d("measurement.lifecycle.app_in_background_parameter", false);
        zzdmVar.m12759b("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzod
    public final boolean zza() {
        return f8765a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzod
    public final boolean zzb() {
        return f8766b.m12764o().booleanValue();
    }
}
