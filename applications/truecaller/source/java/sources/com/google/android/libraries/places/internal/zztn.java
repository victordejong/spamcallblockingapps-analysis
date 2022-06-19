package com.google.android.libraries.places.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zztn.class */
public final class zztn {
    private static final zztl zza = zzc();
    private static final zztl zzb = new zztk();

    public static zztl zza() {
        return zza;
    }

    public static zztl zzb() {
        return zzb;
    }

    private static zztl zzc() {
        try {
            return (zztl) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
