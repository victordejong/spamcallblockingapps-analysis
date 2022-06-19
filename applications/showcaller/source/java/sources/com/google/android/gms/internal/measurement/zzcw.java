package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcw.class */
public enum zzcw implements AbstractC7635z5 {
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN(0),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED(1),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED(2),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED(3),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED(4),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED(5);
    

    /* renamed from: j */
    private static final AbstractC7295a6<zzcw> f34835j = new AbstractC7295a6<zzcw>() { // from class: com.google.android.gms.internal.measurement.k1
    };
    private final int zzh;

    zzcw(int i) {
        this.zzh = i;
    }

    public static zzcw zza(int i) {
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

    public static AbstractC7309b6 zzb() {
        return C7444l1.f34576a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzcw.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
    }
}
