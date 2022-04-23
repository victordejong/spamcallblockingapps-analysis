package com.google.android.gms.common.a;

import android.util.Base64;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/b.class */
public final class b {
    public static String a(byte[] bArr) {
        return bArr == null ? null : Base64.encodeToString(bArr, 0);
    }

    public static String b(byte[] bArr) {
        return bArr == null ? null : Base64.encodeToString(bArr, 10);
    }
}
