package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zztz.class */
public final class zztz {
    private static final zztx zza = zzc();
    private static final zztx zzb = new zztw();

    public static zztx zza() {
        return zza;
    }

    public static zztx zzb() {
        return zzb;
    }

    private static zztx zzc() {
        try {
            return (zztx) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
