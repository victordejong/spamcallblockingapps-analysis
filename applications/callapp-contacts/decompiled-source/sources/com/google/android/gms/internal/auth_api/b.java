package com.google.android.gms.internal.auth_api;

import android.util.Base64;
import java.util.Random;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Random f28656a = new Random();

    public static String a() {
        byte[] bArr = new byte[16];
        f28656a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
