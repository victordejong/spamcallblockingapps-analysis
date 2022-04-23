package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdq.class */
public final class zzdq {

    /* renamed from: a */
    public final boolean f29475a;

    public zzdq(zzdt zzdtVar) {
        zzeb.m9814a(zzdtVar, "BuildInfo must be non-null");
        this.f29475a = !zzdtVar.zza();
    }

    /* renamed from: a */
    public final boolean m9821a(String str) {
        zzeb.m9814a(str, "flagName must not be null");
        if (!this.f29475a) {
            return true;
        }
        return zzds.f29476a.zza().zza(str);
    }
}
