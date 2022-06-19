package com.google.android.gms.common.util;

import android.util.Base64;
/* renamed from: com.google.android.gms.common.util.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/c.class */
public final class C12099c {
    /* renamed from: a */
    public static String m19046a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    /* renamed from: b */
    public static String m19045b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 10);
    }

    /* renamed from: c */
    public static String m19044c(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }
}
