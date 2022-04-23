package com.google.android.gms.common.util;

import android.util.Base64;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.util.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/c.class */
public final class C1607c {
    @RecentlyNonNull
    /* renamed from: a */
    public static String m8250a(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static String m8249b(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }
}
