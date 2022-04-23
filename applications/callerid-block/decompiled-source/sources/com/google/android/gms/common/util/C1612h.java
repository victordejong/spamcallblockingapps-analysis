package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.common.util.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/h.class */
public final class C1612h {
    /* renamed from: a */
    public static boolean m8234a(@RecentlyNonNull Context context, @RecentlyNonNull Throwable th) {
        try {
            C1581h.m8347h(context);
            C1581h.m8347h(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
