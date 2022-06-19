package com.google.android.gms.internal.measurement;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcv.class */
public enum zzcv implements zzhu {
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN(0),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED(1),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED(2),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED(3),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED(4),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED(5);
    
    private static final zzhv<zzcv> zzg = new zzhv<zzcv>() { // from class: com.google.android.gms.internal.measurement.zzct
    };
    private final int zzh;

    zzcv(int i) {
        this.zzh = i;
    }

    public static zzcv zza(int i) {
        if (i != 0) {
            if (i == 1) {
                return AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED;
            }
            if (i == 2) {
                return AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED;
            }
            if (i == 3) {
                return AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED;
            }
            if (i == 4) {
                return AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED;
            }
            if (i == 5) {
                return AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED;
            }
            return null;
        }
        return AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN;
    }

    public static zzhw zzb() {
        return zzcu.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
    }
}
