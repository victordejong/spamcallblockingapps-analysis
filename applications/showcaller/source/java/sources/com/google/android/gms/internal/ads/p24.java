package com.google.android.gms.internal.ads;

import android.util.Base64;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p24.class */
public final class p24 {
    /* renamed from: a */
    public static String m12440a(byte[] bArr, boolean z) {
        return Base64.encodeToString(bArr, true != z ? 2 : 11);
    }

    /* renamed from: b */
    public static byte[] m12439b(String str, boolean z) {
        byte[] decode = Base64.decode(str, true != z ? 2 : 11);
        if (decode.length != 0 || str.length() <= 0) {
            return decode;
        }
        throw new IllegalArgumentException(str.length() != 0 ? "Unable to decode ".concat(str) : new String("Unable to decode "));
    }
}
