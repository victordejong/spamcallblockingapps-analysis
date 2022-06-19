package com.google.android.gms.common.util;

import android.util.Base64;
/* renamed from: com.google.android.gms.common.util.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/c.class */
public final class C2706c {
    /* renamed from: a */
    public static String m13877a(byte[] bArr) {
        return bArr == null ? null : Base64.encodeToString(bArr, 0);
    }

    /* renamed from: b */
    public static String m13876b(byte[] bArr) {
        return bArr == null ? null : Base64.encodeToString(bArr, 11);
    }
}
