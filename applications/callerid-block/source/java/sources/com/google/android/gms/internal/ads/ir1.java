package com.google.android.gms.internal.ads;

import android.util.Base64;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ir1.class */
public final class ir1 {
    /* renamed from: a */
    public static String m7099a(byte[] bArr, boolean z) {
        return Base64.encodeToString(bArr, true != z ? 2 : 11);
    }

    /* renamed from: b */
    public static byte[] m7098b(String str, boolean z) {
        byte[] decode = Base64.decode(str, true != z ? 2 : 11);
        if (decode.length != 0 || str.length() <= 0) {
            return decode;
        }
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Unable to decode ".concat(valueOf) : new String("Unable to decode "));
    }
}
