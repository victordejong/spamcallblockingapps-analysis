package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmb.class */
public final class zzmb implements zzly {

    /* renamed from: a */
    public static final zzdh<Boolean> f29543a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29543a = zzdmVar.m9827a("measurement.service.directly_maybe_log_error_events", false);
        zzdmVar.m9829a("measurement.id.service.directly_maybe_log_error_events", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final boolean zzb() {
        return f29543a.m9838b().booleanValue();
    }
}
