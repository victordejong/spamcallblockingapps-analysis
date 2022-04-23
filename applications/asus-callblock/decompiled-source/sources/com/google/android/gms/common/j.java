package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.android.vcard.VCardConfig;
import com.google.android.gms.common.a.f;
import com.google.android.gms.common.internal.u;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/j.class */
public class j {

    /* renamed from: b  reason: collision with root package name */
    public static final int f4045b = l.f4053b;

    /* renamed from: a  reason: collision with root package name */
    private static final j f4044a = new j();

    private static String a(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f4045b);
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
                sb.append(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return sb.toString();
    }

    public static j b() {
        return f4044a;
    }

    public int a(Context context) {
        int a2 = l.a(context);
        int i = a2;
        if (l.a(context, a2)) {
            i = 18;
        }
        return i;
    }

    public PendingIntent a(Context context, int i, int i2) {
        return a(context, i, i2, null);
    }

    public PendingIntent a(Context context, int i, int i2, String str) {
        int i3 = i;
        if (f.a(context)) {
            i3 = i;
            if (i == 2) {
                i3 = 42;
            }
        }
        Intent a2 = a(context, i3, str);
        return a2 == null ? null : PendingIntent.getActivity(context, i2, a2, VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
    }

    public Intent a(Context context, int i, String str) {
        Intent a2;
        switch (i) {
            case 1:
            case 2:
                a2 = u.a("com.google.android.gms", a(context, str));
                break;
            case 3:
                a2 = u.a("com.google.android.gms");
                break;
            case 42:
                a2 = u.a();
                break;
            default:
                a2 = null;
                break;
        }
        return a2;
    }

    public boolean a(int i) {
        return l.b(i);
    }
}
