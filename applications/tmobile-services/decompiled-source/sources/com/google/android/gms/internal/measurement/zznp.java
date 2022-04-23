package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznp.class */
public final class zznp implements zznq {

    /* renamed from: a */
    private static final zzdh<Boolean> f8742a;

    /* renamed from: b */
    private static final zzdh<Boolean> f8743b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8742a = zzdmVar.m12757d("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        f8743b = zzdmVar.m12757d("measurement.collection.redundant_engagement_removal_enabled", false);
        zzdmVar.m12759b("measurement.id.collection.redundant_engagement_removal_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zznq
    public final boolean zza() {
        return f8742a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznq
    public final boolean zzb() {
        return f8743b.m12764o().booleanValue();
    }
}
