package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ci.class */
public enum ci implements gn {
    RADS(1),
    PROVISIONING(2);
    
    private static final go<ci> zzc = new go<ci>() { // from class: com.google.android.gms.internal.measurement.cg
    };
    private final int zzd;

    ci(int i) {
        this.zzd = i;
    }

    public static ci zza(int i) {
        if (i == 1) {
            return RADS;
        }
        if (i != 2) {
            return null;
        }
        return PROVISIONING;
    }

    public static gp zzb() {
        return ch.f28943a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
    }
}
