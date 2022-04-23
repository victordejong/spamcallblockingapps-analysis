package com.google.android.gms.internal.measurement;

import p131c.p161d.p170b.p224d.p252g.p258f.C4517j0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzce.class */
public enum zzce implements zzid {
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN(0),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_RESTRICTED(1),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_DENIED(2),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_AUTHORIZED(3),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_DETERMINED(4),
    AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED(5);
    
    public static final zzic<zzce> zzg = new zzic<zzce>() { // from class: c.d.b.d.g.f.k0
    };
    public final int zzh;

    zzce(int i) {
        this.zzh = i;
    }

    public static zzce zza(int i) {
        if (i == 0) {
            return AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_UNKNOWN;
        }
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
        if (i != 5) {
            return null;
        }
        return AT_TRACKING_MANAGER_AUTHORIZATION_STATUS_NOT_CONFIGURED;
    }

    public static zzif zzb() {
        return C4517j0.f16779a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzce.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.measurement.zzid
    public final int zza() {
        return this.zzh;
    }
}
