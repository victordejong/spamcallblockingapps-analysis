package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzlj.class */
public final class zzlj {
    private static final zzlh zza = zzc();
    private static final zzlh zzb = new zzlg();

    public static zzlh zza() {
        return zza;
    }

    public static zzlh zzb() {
        return zzb;
    }

    private static zzlh zzc() {
        try {
            return (zzlh) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
