package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzny.class */
public enum zzny implements zzke {
    UNKNOWN_EVENT_TYPE(0),
    VALIDATION_TEST(1),
    CONTINUOUS_FEEDBACK(2);
    
    private static final zzkh<zzny> zzd = new zzkh<zzny>() { // from class: com.google.android.gms.internal.mlkit_translate.zznx
    };
    private final int zze;

    zzny(int i) {
        this.zze = i;
    }

    public static zzkg zzb() {
        return zznz.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzny.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zze + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzke
    public final int zza() {
        return this.zze;
    }
}
