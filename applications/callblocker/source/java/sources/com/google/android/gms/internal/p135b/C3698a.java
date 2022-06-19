package com.google.android.gms.internal.p135b;

import android.util.Base64;
import java.util.Random;
/* renamed from: com.google.android.gms.internal.b.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/b/a.class */
public final class C3698a {

    /* renamed from: a */
    private static final Random f17765a = new Random();

    /* renamed from: a */
    public static String m6538a() {
        byte[] bArr = new byte[16];
        f17765a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
