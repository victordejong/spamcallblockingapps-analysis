package com.google.android.gms.maps.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zza.class */
public final class zza {
    public static byte zza(Boolean bool) {
        if (bool != null) {
            return bool.booleanValue() ? (byte) 1 : (byte) 0;
        }
        return (byte) -1;
    }

    public static Boolean zza(byte b) {
        if (b != 0) {
            if (b == 1) {
                return Boolean.TRUE;
            }
            return null;
        }
        return Boolean.FALSE;
    }
}
