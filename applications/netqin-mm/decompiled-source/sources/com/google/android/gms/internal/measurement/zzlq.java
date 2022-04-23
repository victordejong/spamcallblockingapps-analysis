package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlq.class */
public final class zzlq implements zzlr {

    /* renamed from: a */
    public static final zzdh<Boolean> f29530a;

    /* renamed from: b */
    public static final zzdh<Boolean> f29531b;

    /* renamed from: c */
    public static final zzdh<Boolean> f29532c;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29530a = zzdmVar.m9827a("measurement.client.ad_impression", true);
        f29531b = zzdmVar.m9827a("measurement.service.separate_public_internal_event_blacklisting", true);
        f29532c = zzdmVar.m9827a("measurement.service.ad_impression", true);
        zzdmVar.m9829a("measurement.id.service.ad_impression", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final boolean zzb() {
        return f29530a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final boolean zzc() {
        return f29531b.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlr
    public final boolean zzd() {
        return f29532c.m9838b().booleanValue();
    }
}
