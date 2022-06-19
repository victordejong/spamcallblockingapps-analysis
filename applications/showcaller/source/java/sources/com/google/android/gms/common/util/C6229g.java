package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.common.util.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/g.class */
public final class C6229g {

    /* renamed from: a */
    private static final String[] f19708a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    /* renamed from: a */
    public static boolean m16808a(@RecentlyNonNull Context context, @RecentlyNonNull Throwable th) {
        try {
            C6155o.m17018j(context);
            C6155o.m17018j(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
