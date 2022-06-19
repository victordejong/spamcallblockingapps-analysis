package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.common.p352d.C11946c;
/* renamed from: com.google.android.gms.common.util.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/e.class */
public final class C12101e {
    private C12101e() {
    }

    /* renamed from: a */
    public static int m19043a(Context context, String str) {
        PackageInfo packageInfo;
        Bundle bundle;
        try {
            packageInfo = C11946c.m19258a(context).m19259b(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        if (packageInfo == null || packageInfo.applicationInfo == null || (bundle = packageInfo.applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }
}
