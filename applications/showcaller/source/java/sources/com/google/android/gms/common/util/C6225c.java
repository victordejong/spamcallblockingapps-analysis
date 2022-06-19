package com.google.android.gms.common.util;

import android.util.Base64;
import androidx.annotation.RecentlyNonNull;
/* renamed from: com.google.android.gms.common.util.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/c.class */
public final class C6225c {
    @RecentlyNonNull
    /* renamed from: a */
    public static String m16821a(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static String m16820b(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 10);
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static String m16819c(@RecentlyNonNull byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 11);
    }
}
