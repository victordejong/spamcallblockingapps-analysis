package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdo.class */
public enum zzdo implements AbstractC7635z5 {
    RADS(1),
    PROVISIONING(2);
    

    /* renamed from: f */
    private static final AbstractC7295a6<zzdo> f34839f = new AbstractC7295a6<zzdo>() { // from class: com.google.android.gms.internal.measurement.c2
    };
    private final int zzd;

    zzdo(int i) {
        this.zzd = i;
    }

    public static zzdo zza(int i) {
        if (i != 1) {
            if (i == 2) {
                return PROVISIONING;
            }
            return null;
        }
        return RADS;
    }

    public static AbstractC7309b6 zzb() {
        return C7333d2.f34387a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzdo.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
    }
}
