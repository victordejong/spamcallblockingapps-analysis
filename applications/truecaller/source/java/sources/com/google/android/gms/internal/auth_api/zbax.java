package com.google.android.gms.internal.auth_api;

import android.util.Base64;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbax.class */
public final class zbax {
    private static final Random zba = new Random();

    public static String zba() {
        byte[] bArr = new byte[16];
        zba.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
