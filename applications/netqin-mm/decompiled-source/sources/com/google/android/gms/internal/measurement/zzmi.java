package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmi.class */
public final class zzmi implements zzmj {

    /* renamed from: a */
    public static final zzdh<Boolean> f29583a;

    /* renamed from: b */
    public static final zzdh<Boolean> f29584b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29583a = zzdmVar.m9827a("measurement.service.configurable_service_limits", true);
        f29584b = zzdmVar.m9827a("measurement.client.configurable_service_limits", true);
        zzdmVar.m9829a("measurement.id.service.configurable_service_limits", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final boolean zzb() {
        return f29583a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmj
    public final boolean zzc() {
        return f29584b.m9838b().booleanValue();
    }
}
