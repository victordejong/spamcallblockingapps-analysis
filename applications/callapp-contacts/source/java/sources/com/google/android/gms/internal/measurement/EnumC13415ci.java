package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ci */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ci.class */
public enum EnumC13415ci implements AbstractC13528gn {
    RADS(1),
    PROVISIONING(2);
    
    private static final AbstractC13529go<EnumC13415ci> zzc = new AbstractC13529go<EnumC13415ci>() { // from class: com.google.android.gms.internal.measurement.cg
    };
    private final int zzd;

    EnumC13415ci(int i) {
        this.zzd = i;
    }

    public static EnumC13415ci zza(int i) {
        if (i != 1) {
            if (i == 2) {
                return PROVISIONING;
            }
            return null;
        }
        return RADS;
    }

    public static AbstractC13530gp zzb() {
        return C13414ch.f50615a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
    }
}
