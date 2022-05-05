package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzob.class */
public final class zzob implements zzoc {

    /* renamed from: a */
    private static final zzdh<Boolean> f8757a;

    /* renamed from: b */
    private static final zzdh<Boolean> f8758b;

    /* renamed from: c */
    private static final zzdh<Boolean> f8759c;

    /* renamed from: d */
    private static final zzdh<Boolean> f8760d;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8757a = zzdmVar.m12757d("measurement.sdk.collection.enable_extend_user_property_size", true);
        f8758b = zzdmVar.m12757d("measurement.sdk.collection.last_deep_link_referrer2", true);
        f8759c = zzdmVar.m12757d("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        f8760d = zzdmVar.m12757d("measurement.sdk.collection.last_gclid_from_referrer2", false);
        zzdmVar.m12759b("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzoc
    public final boolean zza() {
        return f8757a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoc
    public final boolean zzb() {
        return f8758b.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoc
    public final boolean zzc() {
        return f8759c.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoc
    public final boolean zzd() {
        return f8760d.m12764o().booleanValue();
    }
}
