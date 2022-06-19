package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.SharedPreferences;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzal.class */
public final class zzal {
    private final Application zza;
    private final SharedPreferences zzb;
    private final Set<String> zzc;

    public zzal(Application application) {
        this.zza = application;
        SharedPreferences sharedPreferences = application.getSharedPreferences("__GOOGLE_FUNDING_CHOICE_SDK_INTERNAL__", 0);
        this.zzb = sharedPreferences;
        this.zzc = new HashSet(sharedPreferences.getStringSet("written_values", Collections.emptySet()));
    }

    public final int zza() {
        return this.zzb.getInt("consent_status", 0);
    }

    public final void zza(int i) {
        C22128a.m8593n0(this.zzb, "consent_status", i);
    }

    public final void zza(Set<String> set) {
        this.zzb.edit().putStringSet("stored_info", set).apply();
    }

    public final int zzb() {
        return this.zzb.getInt("consent_type", 0);
    }

    public final void zzb(int i) {
        C22128a.m8593n0(this.zzb, "consent_type", i);
    }

    public final Set<String> zzc() {
        return this.zzb.getStringSet("stored_info", Collections.emptySet());
    }

    public final Set<String> zzd() {
        return this.zzc;
    }

    public final void zze() {
        this.zzb.edit().putStringSet("written_values", this.zzc).apply();
    }

    public final void zzf() {
        zzcc.zza(this.zza, this.zzc);
        this.zzc.clear();
        this.zzb.edit().remove("stored_info").remove("consent_status").remove("consent_type").apply();
    }
}
