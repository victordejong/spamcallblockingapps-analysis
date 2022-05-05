package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ClientLibraryUtils.class */
public class ClientLibraryUtils {
    private ClientLibraryUtils() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m14342a() {
        return false;
    }

    /* renamed from: b */
    public static boolean m14341b(Context context, String str) {
        "com.google.android.gms".equals(str);
        try {
            return (Wrappers.m14278a(context).m14285c(str, 0).flags & 2097152) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
