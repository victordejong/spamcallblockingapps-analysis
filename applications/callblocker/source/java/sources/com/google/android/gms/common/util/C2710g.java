package com.google.android.gms.common.util;

import android.content.Context;
import android.os.DropBoxManager;
import android.util.Log;
import com.google.android.gms.common.internal.C2662s;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.util.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/g.class */
public final class C2710g {

    /* renamed from: a */
    private static final String[] f7514a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    /* renamed from: b */
    private static DropBoxManager f7515b = null;

    /* renamed from: c */
    private static boolean f7516c = false;

    /* renamed from: d */
    private static int f7517d = -1;
    @GuardedBy("CrashUtils.class")

    /* renamed from: e */
    private static int f7518e = 0;
    @GuardedBy("CrashUtils.class")

    /* renamed from: f */
    private static int f7519f = 0;

    /* renamed from: a */
    public static boolean m13864a(Context context, Throwable th) {
        return m13863a(context, th, 536870912);
    }

    /* renamed from: a */
    private static boolean m13863a(Context context, Throwable th, int i) {
        try {
            C2662s.m13981a(context);
            C2662s.m13981a(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
