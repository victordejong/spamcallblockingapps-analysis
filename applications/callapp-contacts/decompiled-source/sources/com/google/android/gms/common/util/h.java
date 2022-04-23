package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f22941a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    public static boolean a(Context context, Throwable th) {
        try {
            o.a(context);
            o.a(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
