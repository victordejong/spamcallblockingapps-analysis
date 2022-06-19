package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.p132c.C2586c;
/* renamed from: com.google.android.gms.common.util.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/d.class */
public class C2707d {
    /* renamed from: a */
    public static boolean m13875a() {
        return false;
    }

    /* renamed from: a */
    public static boolean m13874a(Context context, String str) {
        boolean z = false;
        if ("com.google.android.gms".equals(str)) {
        }
        try {
            if ((C2586c.m14193a(context).m14198a(str, 0).flags & 2097152) != 0) {
                z = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return z;
    }
}
