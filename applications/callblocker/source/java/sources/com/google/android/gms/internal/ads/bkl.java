package com.google.android.gms.internal.ads;

import android.util.Base64;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bkl.class */
public final class bkl {
    /* renamed from: a */
    public static String m11831a(byte[] bArr, boolean z) {
        return Base64.encodeToString(bArr, z ? 11 : 2);
    }

    /* renamed from: a */
    public static byte[] m11832a(String str, boolean z) {
        byte[] decode = Base64.decode(str, z ? 11 : 2);
        if (decode.length != 0 || str.length() <= 0) {
            return decode;
        }
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Unable to decode ".concat(valueOf) : new String("Unable to decode "));
    }
}
