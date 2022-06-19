package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfi.class */
public enum zzfi implements zzkf {
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN(0),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED(1),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED(2),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED(3),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED(4),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED(5);
    
    private static final zzkg<zzfi> zzg = new zzkg<zzfi>() { // from class: com.google.android.gms.internal.measurement.zzfg
    };
    private final int zzh;

    zzfi(int i) {
        this.zzh = i;
    }

    public static zzfi zza(int i) {
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

    public static zzkh zzb() {
        return zzfh.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzfi.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
    }
}
