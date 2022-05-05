package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznj.class */
public final class zznj implements zznk {

    /* renamed from: a */
    private static final zzdh<Boolean> f8736a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8736a = zzdmVar.m12757d("measurement.client.sessions.check_on_reset_and_enable2", true);
        zzdmVar.m12757d("measurement.client.sessions.check_on_startup", true);
        zzdmVar.m12757d("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.zznk
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznk
    public final boolean zzb() {
        return f8736a.m12764o().booleanValue();
    }
}
