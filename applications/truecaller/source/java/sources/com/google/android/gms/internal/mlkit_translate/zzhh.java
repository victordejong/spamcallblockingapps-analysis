package com.google.android.gms.internal.mlkit_translate;

import android.util.Base64;
import java.security.SecureRandom;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhh.class */
public final class zzhh {
    private static Random zza = new SecureRandom();

    public static String zza() {
        byte[] bArr = new byte[17];
        zza.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & 15);
        bArr[0] = (byte) (bArr[0] | 112);
        String substring = Base64.encodeToString(bArr, 11).substring(0, 22);
        String valueOf = String.valueOf(substring);
        if (valueOf.length() != 0) {
            "Generated installation id: ".concat(valueOf);
        } else {
            new String("Generated installation id: ");
        }
        return substring;
    }
}
