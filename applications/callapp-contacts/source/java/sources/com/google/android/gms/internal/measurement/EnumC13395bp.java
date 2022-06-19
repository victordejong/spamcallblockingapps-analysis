package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.bp */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bp.class */
public enum EnumC13395bp implements AbstractC13528gn {
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN(0),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED(1),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED(2),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED(3),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED(4),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED(5);
    
    private static final AbstractC13529go<EnumC13395bp> zzg = new AbstractC13529go<EnumC13395bp>() { // from class: com.google.android.gms.internal.measurement.bn
    };
    private final int zzh;

    EnumC13395bp(int i) {
        this.zzh = i;
    }

    public static EnumC13395bp zza(int i) {
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

    public static AbstractC13530gp zzb() {
        return C13394bo.f50612a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
    }
}
