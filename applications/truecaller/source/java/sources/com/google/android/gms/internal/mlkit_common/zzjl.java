package com.google.android.gms.internal.mlkit_common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjl.class */
public enum zzjl implements zzfv {
    UNKNOWN_EVENT_TYPE(0),
    VALIDATION_TEST(1),
    CONTINUOUS_FEEDBACK(2);
    
    private static final zzfu<zzjl> zzd = new zzfu<zzjl>() { // from class: com.google.android.gms.internal.mlkit_common.zzjo
    };
    private final int zze;

    zzjl(int i) {
        this.zze = i;
    }

    public static zzfx zzb() {
        return zzjn.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzjl.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zze + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzfv
    public final int zza() {
        return this.zze;
    }
}
