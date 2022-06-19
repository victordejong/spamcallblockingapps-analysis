package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.util.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/h.class */
public final class C12104h {

    /* renamed from: a */
    private static final String[] f39626a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    /* renamed from: a */
    public static boolean m19040a(Context context, Throwable th) {
        try {
            C12045o.m19162a(context);
            C12045o.m19162a(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
