package com.google.android.gms.internal.measurement;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzia.class */
public final class zzia extends zzhz {
    private final Object zza;

    public zzia(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzia) {
            return this.zza.equals(((zzia) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String obj = this.zza.toString();
        return C22128a.m8610j(new StringBuilder(obj.length() + 13), "Optional.of(", obj, ")");
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final boolean zzb() {
        return true;
    }
}
