package com.google.android.gms.internal.ads;

import android.util.Base64;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzo.class */
public final class zzzo {
    public static String zza(byte[] bArr, boolean z) {
        return Base64.encodeToString(bArr, true != z ? 2 : 11);
    }

    public static byte[] zzb(String str, boolean z) throws IllegalArgumentException {
        byte[] decode = Base64.decode(str, true != z ? 2 : 11);
        if (decode.length != 0 || str.length() <= 0) {
            return decode;
        }
        throw new IllegalArgumentException(str.length() != 0 ? "Unable to decode ".concat(str) : new String("Unable to decode "));
    }
}
