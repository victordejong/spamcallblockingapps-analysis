package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlw.class */
public final class zzlw implements zzlx {

    /* renamed from: a */
    public static final zzdh<Boolean> f29538a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29538a = zzdmVar.m9827a("measurement.androidId.delete_feature", true);
        zzdmVar.m9827a("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzlx
    public final boolean zza() {
        return f29538a.m9838b().booleanValue();
    }
}
