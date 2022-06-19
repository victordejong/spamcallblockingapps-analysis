package com.google.android.gms.internal.ads;

import android.util.Base64;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxn.class */
public final class bxn {
    /* renamed from: a */
    public static String m17584a(byte[] bArr, boolean z) {
        return Base64.encodeToString(bArr, z ? 11 : 2);
    }

    /* renamed from: a */
    public static byte[] m17585a(String str, boolean z) throws IllegalArgumentException {
        byte[] decode = Base64.decode(str, z ? 11 : 2);
        if (decode.length != 0 || str.length() <= 0) {
            return decode;
        }
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Unable to decode ".concat(valueOf) : new String("Unable to decode "));
    }
}
