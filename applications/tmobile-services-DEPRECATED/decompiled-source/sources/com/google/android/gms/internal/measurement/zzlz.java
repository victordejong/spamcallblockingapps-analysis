package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlz.class */
public final class zzlz implements zzma {

    /* renamed from: a */
    private static final zzdh<Boolean> f8661a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8661a = zzdmVar.m12757d("measurement.service.directly_maybe_log_error_events", false);
        zzdmVar.m12759b("measurement.id.service.directly_maybe_log_error_events", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final boolean zzb() {
        return f8661a.m12764o().booleanValue();
    }
}
