package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmo.class */
public final class zzmo implements zzmp {

    /* renamed from: a */
    public static final zzdh<Boolean> f29593a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29593a = zzdmVar.m9827a("measurement.sdk.dynamite.allow_remote_dynamite3", true);
        zzdmVar.m9827a("measurement.collection.init_params_control_enabled", true);
        zzdmVar.m9827a("measurement.sdk.dynamite.use_dynamite3", true);
        zzdmVar.m9829a("measurement.id.sdk.dynamite.use_dynamite", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmp
    public final boolean zza() {
        return f29593a.m9838b().booleanValue();
    }
}
