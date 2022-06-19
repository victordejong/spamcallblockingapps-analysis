package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C2608ak;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.C2712i;
/* renamed from: com.google.android.gms.common.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/f.class */
public class C2593f {

    /* renamed from: b */
    public static final int f7273b = C2595h.f7276b;

    /* renamed from: a */
    private static final C2593f f7272a = new C2593f();

    /* renamed from: b */
    public static C2593f m14165b() {
        return f7272a;
    }

    /* renamed from: b */
    private static String m14162b(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f7273b);
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
                sb.append(C2586c.m14193a(context).m14194b(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public int mo14170a(Context context) {
        return mo14163b(context, f7273b);
    }

    /* renamed from: a */
    public PendingIntent mo14169a(Context context, int i, int i2) {
        return m14168a(context, i, i2, null);
    }

    /* renamed from: a */
    public PendingIntent m14168a(Context context, int i, int i2, String str) {
        Intent mo14167a = mo14167a(context, i, str);
        return mo14167a == null ? null : PendingIntent.getActivity(context, i2, mo14167a, 134217728);
    }

    /* renamed from: a */
    public Intent mo14167a(Context context, int i, String str) {
        Intent m14133a;
        switch (i) {
            case 1:
            case 2:
                if (context != null && C2712i.m13856b(context)) {
                    m14133a = C2608ak.m14134a();
                    break;
                } else {
                    m14133a = C2608ak.m14132a("com.google.android.gms", m14162b(context, str));
                    break;
                }
                break;
            case 3:
                m14133a = C2608ak.m14133a("com.google.android.gms");
                break;
            default:
                m14133a = null;
                break;
        }
        return m14133a;
    }

    /* renamed from: a */
    public boolean mo14171a(int i) {
        return C2595h.m14154b(i);
    }

    /* renamed from: a */
    public boolean m14166a(Context context, String str) {
        return C2595h.m14156a(context, str);
    }

    /* renamed from: b */
    public int mo14163b(Context context, int i) {
        int m14158a = C2595h.m14158a(context, i);
        int i2 = m14158a;
        if (C2595h.m14152b(context, m14158a)) {
            i2 = 18;
        }
        return i2;
    }

    /* renamed from: b */
    public String mo14164b(int i) {
        return C2595h.m14159a(i);
    }

    /* renamed from: c */
    public int m14161c(Context context) {
        return C2595h.m14149e(context);
    }
}
