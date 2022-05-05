package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzls.class */
public final class zzls implements zzlp {

    /* renamed from: a */
    private static final zzdh<Boolean> f8652a;

    /* renamed from: b */
    private static final zzdh<Boolean> f8653b;

    /* renamed from: c */
    private static final zzdh<Boolean> f8654c;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8652a = zzdmVar.m12757d("measurement.client.ad_impression", true);
        f8653b = zzdmVar.m12757d("measurement.service.separate_public_internal_event_blacklisting", false);
        f8654c = zzdmVar.m12757d("measurement.service.ad_impression", false);
        zzdmVar.m12759b("measurement.id.service.ad_impression", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzlp
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlp
    public final boolean zzb() {
        return f8652a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlp
    public final boolean zzc() {
        return f8653b.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlp
    public final boolean zzd() {
        return f8654c.m12764o().booleanValue();
    }
}
