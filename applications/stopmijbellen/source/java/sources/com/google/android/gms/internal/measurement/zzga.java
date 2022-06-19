package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzga.class */
public enum zzga implements zzkf {
    RADS(1),
    PROVISIONING(2);
    
    private static final zzkg<zzga> zzc = new zzkg<zzga>() { // from class: com.google.android.gms.internal.measurement.zzfy
    };
    private final int zzd;

    zzga(int i) {
        this.zzd = i;
    }

    public static zzga zza(int i) {
        if (i != 1) {
            if (i == 2) {
                return PROVISIONING;
            }
            return null;
        }
        return RADS;
    }

    public static zzkh zzb() {
        return zzfz.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzga.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
    }
}
