package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzml.class */
public final class zzml implements zzmm {

    /* renamed from: a */
    private static final zzdh<Boolean> f8707a;

    /* renamed from: b */
    private static final zzdh<Boolean> f8708b;

    /* renamed from: c */
    private static final zzdh<Boolean> f8709c;

    /* renamed from: d */
    private static final zzdh<Long> f8710d;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8707a = zzdmVar.m12757d("measurement.client.consent_state_v1", false);
        f8708b = zzdmVar.m12757d("measurement.client.3p_consent_state_v1", false);
        f8709c = zzdmVar.m12757d("measurement.service.consent_state_v1_W36", false);
        f8710d = zzdmVar.m12759b("measurement.service.storage_consent_support_version", 203590L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzb() {
        return f8707a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzc() {
        return f8708b.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzd() {
        return f8709c.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final long zze() {
        return f8710d.m12764o().longValue();
    }
}
