package com.google.android.gms.internal.measurement;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdn.class */
public enum zzdn implements zzhu {
    RADS(1),
    PROVISIONING(2);
    
    private static final zzhv<zzdn> zzc = new zzhv<zzdn>() { // from class: com.google.android.gms.internal.measurement.zzdl
    };
    private final int zzd;

    zzdn(int i) {
        this.zzd = i;
    }

    public static zzdn zza(int i) {
        if (i != 1) {
            if (i == 2) {
                return PROVISIONING;
            }
            return null;
        }
        return RADS;
    }

    public static zzhw zzb() {
        return zzdm.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
    }
}
