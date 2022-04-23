package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzpb.class */
public final class zzpb implements zzoy {

    /* renamed from: a */
    public static final zzdh<Boolean> f29673a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29673a = zzdmVar.m9827a("measurement.service.ssaid_removal", true);
        zzdmVar.m9829a("measurement.id.ssaid_removal", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzoy
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzoy
    public final boolean zzb() {
        return f29673a.m9838b().booleanValue();
    }
}
