package com.google.android.gms.internal.auth_api;

import android.util.Base64;
import java.util.Random;
/* renamed from: com.google.android.gms.internal.auth_api.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/b.class */
public final class C7272b {

    /* renamed from: a */
    private static final Random f34313a = new Random();

    /* renamed from: a */
    public static String m7821a() {
        byte[] bArr = new byte[16];
        f34313a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
