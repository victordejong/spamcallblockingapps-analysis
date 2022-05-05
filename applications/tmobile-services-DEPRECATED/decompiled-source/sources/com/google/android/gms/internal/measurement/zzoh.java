package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzoh.class */
public final class zzoh implements zzoi {

    /* renamed from: a */
    private static final zzdh<Boolean> f8767a;

    /* renamed from: b */
    private static final zzdh<Boolean> f8768b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8767a = zzdmVar.m12757d("measurement.sdk.screen.manual_screen_view_logging", true);
        f8768b = zzdmVar.m12757d("measurement.sdk.screen.disabling_automatic_reporting", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzoi
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzoi
    public final boolean zzb() {
        return f8767a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoi
    public final boolean zzc() {
        return f8768b.m12764o().booleanValue();
    }
}
