package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.C6163q1;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.C6231i;
/* renamed from: com.google.android.gms.common.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/c.class */
public class C6086c {

    /* renamed from: a */
    public static final int f19385a = C6094e.f19409a;

    /* renamed from: b */
    private static final C6086c f19386b = new C6086c();

    @RecentlyNonNull
    /* renamed from: f */
    public static C6086c m17221f() {
        return f19386b;
    }

    /* renamed from: a */
    public int m17226a(@RecentlyNonNull Context context) {
        return C6094e.m17209b(context);
    }

    @RecentlyNullable
    /* renamed from: b */
    public Intent mo17225b(Context context, int i, String str) {
        if (i != 1 && i != 2) {
            if (i == 3) {
                return C6163q1.m16996a("com.google.android.gms");
            }
            return null;
        } else if (context != null && C6231i.m16796h(context)) {
            return C6163q1.m16994c();
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("gcore_");
            sb.append(f19385a);
            sb.append("-");
            if (!TextUtils.isEmpty(str)) {
                sb.append(str);
            }
            sb.append("-");
            if (context != null) {
                sb.append(context.getPackageName());
            }
            sb.append("-");
            if (context != null) {
                try {
                    sb.append(C6198c.m16885a(context).m16888f(context.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            return C6163q1.m16995b("com.google.android.gms", sb.toString());
        }
    }

    @RecentlyNullable
    /* renamed from: c */
    public PendingIntent mo17224c(@RecentlyNonNull Context context, int i, int i2) {
        return m17223d(context, i, i2, null);
    }

    @RecentlyNullable
    /* renamed from: d */
    public PendingIntent m17223d(@RecentlyNonNull Context context, int i, int i2, String str) {
        Intent mo17225b = mo17225b(context, i, str);
        if (mo17225b == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, mo17225b, 134217728);
    }

    /* renamed from: e */
    public String mo17222e(int i) {
        return C6094e.m17208c(i);
    }

    /* renamed from: g */
    public int mo17220g(@RecentlyNonNull Context context) {
        return mo17219h(context, f19385a);
    }

    /* renamed from: h */
    public int mo17219h(@RecentlyNonNull Context context, int i) {
        int m17204g = C6094e.m17204g(context, i);
        if (C6094e.m17203h(context, m17204g)) {
            return 18;
        }
        return m17204g;
    }

    /* renamed from: i */
    public boolean m17218i(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        return C6094e.m17199l(context, str);
    }

    /* renamed from: j */
    public boolean mo17217j(int i) {
        return C6094e.m17201j(i);
    }
}
