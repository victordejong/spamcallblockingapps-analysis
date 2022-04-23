package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmk.class */
public final class zzmk implements zzmh {

    /* renamed from: a */
    private static final zzdh<Boolean> f8705a;

    /* renamed from: b */
    private static final zzdh<Boolean> f8706b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8705a = zzdmVar.m12757d("measurement.service.configurable_service_limits", true);
        f8706b = zzdmVar.m12757d("measurement.client.configurable_service_limits", true);
        zzdmVar.m12759b("measurement.id.service.configurable_service_limits", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final boolean zzb() {
        return f8705a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final boolean zzc() {
        return f8706b.m12764o().booleanValue();
    }
}
