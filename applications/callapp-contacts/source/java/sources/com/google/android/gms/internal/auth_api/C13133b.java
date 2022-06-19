package com.google.android.gms.internal.auth_api;

import android.util.Base64;
import java.util.Random;
/* renamed from: com.google.android.gms.internal.auth_api.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/b.class */
public final class C13133b {

    /* renamed from: a */
    private static final Random f50254a = new Random();

    /* renamed from: a */
    public static String m13613a() {
        byte[] bArr = new byte[16];
        f50254a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
